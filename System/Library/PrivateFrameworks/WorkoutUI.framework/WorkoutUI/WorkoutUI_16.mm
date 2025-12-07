__n128 ZoneView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ZoneView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  outlined init with copy of ZoneView(v1, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  outlined init with take of ZoneView(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ZoneView);
  if (one-time initialization token for initialZoneHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a1 = partial apply for closure #1 in ZoneView.body.getter;
  *(a1 + 8) = v7;
  v8 = v11[6];
  *(a1 + 80) = v11[5];
  *(a1 + 96) = v8;
  *(a1 + 112) = v11[7];
  v9 = v11[2];
  *(a1 + 16) = v11[1];
  *(a1 + 32) = v9;
  result = v11[4];
  *(a1 + 48) = v11[3];
  *(a1 + 64) = result;
  return result;
}

uint64_t closure #1 in ZoneView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v19[0] = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v19[0] - 8);
  MEMORY[0x28223BE20](v19[0]);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA7ForEachVySnySiGSiAA15ModifiedContentVyAHy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0n8PriorityO3KeyVGGGGMd, &_s7SwiftUI6HStackVyAA7ForEachVySnySiGSiAA15ModifiedContentVyAHy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0n8PriorityO3KeyVGGGGMR);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA7ForEachVySnySiGSiAA15ModifiedContentVyANy07WorkoutB007ZoneBarC0VAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0t8PriorityU3KeyVGGGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA7ForEachVySnySiGSiAA15ModifiedContentVyANy07WorkoutB007ZoneBarC0VAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0t8PriorityU3KeyVGGGG_Qo_MR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - v13;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0x4008000000000000;
  v10[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySnySiGSiAA15ModifiedContentVyALy07WorkoutB007ZoneBarD0VAA010_FixedSizeG0VGAA21_TraitWritingModifierVyAA0g8PriorityQ3KeyVGGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySnySiGSiAA15ModifiedContentVyALy07WorkoutB007ZoneBarD0VAA010_FixedSizeG0VGAA21_TraitWritingModifierVyAA0g8PriorityQ3KeyVGGGGMR);
  closure #1 in closure #1 in ZoneView.body.getter(a2, a1, &v10[*(v15 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v16 = lazy protocol witness table accessor for type HStack<ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<ZoneBarView, _FixedSizeLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<ZoneBarView, _FixedSizeLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA7ForEachVySnySiGSiAA15ModifiedContentVyAHy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0n8PriorityO3KeyVGGGGMd, &_s7SwiftUI6HStackVyAA7ForEachVySnySiGSiAA15ModifiedContentVyAHy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0n8PriorityO3KeyVGGGGMR, MEMORY[0x277CE1138]);
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v7, v19[0]);
  outlined destroy of HStack<ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<ZoneBarView, _FixedSizeLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>>>(v10);
  v19[4] = ZoneView.noDataAccessibilityLabel.getter();
  v19[5] = v17;
  ZoneView.currentZoneIndex.getter();
  v19[2] = v8;
  v19[3] = v16;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:isEnabled:)();

  return (*(v12 + 8))(v14, v11);
}

uint64_t closure #1 in closure #1 in ZoneView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a3;
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = type metadata accessor for ZoneView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = ZoneView.currentZoneIndex.getter();
  v20 = v12;
  v13 = *(ZoneView.logicalZones.getter() + 16);

  if (v13)
  {
    v14 = *(ZoneView.logicalZones.getter() + 16);

LABEL_4:
    v23 = 0;
    v24 = v14;
    swift_getKeyPath();
    outlined init with copy of ZoneView(a1, &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v21, v4);
    v16 = (*(v8 + 80) + 25) & ~*(v8 + 80);
    v17 = (v9 + *(v5 + 80) + v16) & ~*(v5 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v11;
    *(v18 + 24) = v20 & 1;
    outlined init with take of ZoneView(v10, v18 + v16, type metadata accessor for ZoneView);
    (*(v5 + 32))(v18 + v17, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0k8PriorityL3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0k8PriorityL3KeyVGGMR);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZoneBarView, _FixedSizeLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>();
    return ForEach<>.init(_:id:content:)();
  }

  type metadata accessor for HeartRateConfiguration();
  result = static HeartRateConfiguration.defaultZoneCount.getter();
  v14 = result;
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t ZoneView.currentZoneIndex.getter()
{
  v1 = v0 + *(type metadata accessor for ZoneView(0) + 28);
  if (*(v1 + 8))
  {
    return 0;
  }

  v2 = *v1;
  v3 = *(ZoneView.logicalZones.getter() + 16);

  if (!v3)
  {
    return 0;
  }

  v4 = ZoneView.logicalZones.getter();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 40);
    while (v2 >= *v7 || *(v7 - 1) > v2)
    {
      ++v6;
      v7 += 2;
      if (v5 == v6)
      {
        v9 = 0;
        goto LABEL_14;
      }
    }

    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

LABEL_14:

  return v9;
}

uint64_t closure #1 in closure #1 in closure #1 in ZoneView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39[1] = a5;
  v44 = a6;
  v10 = type metadata accessor for ZoneViewType();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ZoneBarView(0);
  MEMORY[0x28223BE20](v14);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGMR);
  MEMORY[0x28223BE20](v42);
  v18 = v39 - v17;
  v40 = *a1;
  v19 = (v40 == a2) & ~a3;
  v20 = type metadata accessor for ZoneView(0);
  outlined init with copy of LiveZoneProtocol(a4 + *(v20 + 24), v45);
  v21 = *(v11 + 16);
  v22 = a4 + *(v20 + 20);
  v41 = v13;
  v43 = v10;
  v21(v13, v22, v10);
  v23 = 0;
  if (v19 == 1)
  {
    if (one-time initialization token for activeZoneWidth != -1)
    {
      swift_once();
    }

    v23 = static ZoneView.activeZoneWidth;
  }

  GeometryProxy.size.getter();
  v25 = v24;
  v26 = *(ZoneView.logicalZones.getter() + 16);

  if (v26)
  {
    v27 = *(ZoneView.logicalZones.getter() + 16);
  }

  else
  {
    type metadata accessor for HeartRateConfiguration();
    v27 = static HeartRateConfiguration.defaultZoneCount.getter();
  }

  ZoneView.closestZoneProgress.getter();
  v29 = v28;
  v31 = v30;
  *&v16[v14[14]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMR);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  outlined init with take of LiveZonesProtocol(v45, v16);
  (*(v11 + 32))(&v16[v14[5]], v41, v43);
  *&v16[v14[6]] = v40;
  v16[v14[7]] = v19;
  *&v16[v14[8]] = v23;
  *&v16[v14[9]] = v25;
  *&v16[v14[10]] = v27;
  v33 = &v16[v14[11]];
  *v33 = v29;
  v33[8] = v31 & 1;
  *&v16[v14[12]] = 0x401E000000000000;
  *&v16[v14[13]] = 0x401E000000000000;
  v34 = &v16[v14[15]];
  *v34 = KeyPath;
  v34[8] = 0;
  outlined init with take of ZoneView(v16, v18, type metadata accessor for ZoneBarView);
  v35 = &v18[*(v42 + 36)];
  *v35 = v19;
  v35[1] = 0;
  if (v19)
  {
    v36 = 1.0;
  }

  else
  {
    v36 = 0.0;
  }

  v37 = v44;
  outlined init with take of ModifiedContent<ZoneBarView, _FixedSizeLayout>(v18, v44);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0k8PriorityL3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0k8PriorityL3KeyVGGMR);
  *(v37 + *(result + 36)) = v36;
  return result;
}

void ZoneView.closestZoneProgress.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ZoneView(0);
  v3 = v0 + *(v2 + 28);
  if ((*(v3 + 8) & 1) == 0)
  {
    v4 = *v3;
    v5 = ZoneView.logicalZones.getter();
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = (v5 + 40);
      while (1)
      {
        v9 = *(v8 - 1);
        v10 = v9 > v4 || *v8 <= v4;
        if (!v10 || v9 > v4)
        {
          break;
        }

        ++v7;
        v8 += 2;
        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:

      v11 = *(ZoneView.logicalZones.getter() + 16);

      v7 = v11 - 1;
    }

    __swift_project_boxed_opaque_existential_1((v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 24));
    dispatch thunk of LiveZonesProtocol.zones.getter();
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore16LiveZoneProtocol_pMd, &_s11WorkoutCore16LiveZoneProtocol_pMR);
    v12 = _arrayForceCast<A, B>(_:)();

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *(v12 + 16))
    {
      outlined init with copy of LiveZoneProtocol(v12 + 40 * v7 + 32, v13);

      ZoneView.lowerProgressBound(zone:)(v13);
      ZoneView.upperProgressBound(zone:)(v13);
      __swift_destroy_boxed_opaque_existential_1(v13);
      return;
    }

    __break(1u);
  }
}

uint64_t ZoneView.noDataAccessibilityLabel.getter()
{
  v1 = type metadata accessor for ZoneViewType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ZoneView(0);
  (*(v2 + 16))(v4, v0 + *(v5 + 20), v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == *MEMORY[0x277D7DFA0])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = WorkoutUIBundle.super.isa;
    v19 = 0xE000000000000000;
    v8 = 0xD00000000000001ALL;
    v9 = 0x800000020CB98E10;
LABEL_9:
    v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v10.value._object = 0xEB00000000656C62;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v12 = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, v10, v7, v11, *(&v19 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v6 == *MEMORY[0x277D7DF98])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = WorkoutUIBundle.super.isa;
    v19 = 0xE000000000000000;
    v9 = 0x800000020CB98DF0;
    v8 = 0xD000000000000015;
    goto LABEL_9;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = WorkoutUIBundle.super.isa;
  v21._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0x41565F4F4E5F5841;
  v15._object = 0xEB0000000045554CLL;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v21)._countAndFlagsBits;

  (*(v2 + 8))(v4, v1);
  return countAndFlagsBits;
}

void ZoneView.lowerProgressBound(zone:)(void *a1)
{
  v3 = type metadata accessor for ZoneViewType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (dispatch thunk of ZoneProtocol.configuration.getter())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of ZoneProtocol.displayLowerBound.getter();
    if ((v7 & 1) == 0)
    {
      return;
    }

LABEL_12:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v8 = type metadata accessor for ZoneView(0);
  (*(v4 + 16))(v6, v1 + *(v8 + 20), v3);
  v9 = (*(v4 + 88))(v6, v3);
  if (v9 == *MEMORY[0x277D7DFA0])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of ZoneProtocol.displayUpperBound.getter();
    if (v10)
    {
      goto LABEL_12;
    }
  }

  else if (v9 == *MEMORY[0x277D7DF98])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of ZoneProtocol.displaySpan.getter();
    if (v11 >= 0.0)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of ZoneProtocol.displaySpan.getter();
    }
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t ZoneView.upperProgressBound(zone:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ZoneViewType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = dispatch thunk of ZoneProtocol.configuration.getter();
  dispatch thunk of ZoneProtocol.configuration.getter();
  v10 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v8 != v10)
  {
    result = dispatch thunk of ZoneProtocol.displayUpperBound.getter();
    if ((v14 & 1) == 0)
    {
      return result;
    }

LABEL_11:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  dispatch thunk of ZoneProtocol.displayLowerBound.getter();
  if (v11)
  {
    goto LABEL_11;
  }

  v12 = type metadata accessor for ZoneView(0);
  (*(v5 + 16))(v7, v2 + *(v12 + 20), v4);
  result = (*(v5 + 88))(v7, v4);
  if (result != *MEMORY[0x277D7DFA0] && result != *MEMORY[0x277D7DF98])
  {
    static CyclingPowerZonesConstants.maxFunctionalThresholdPower.getter();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t outlined init with copy of ZoneView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ZoneView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ZoneView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in ZoneView.body.getter(a1, v6, a2);
}

uint64_t outlined destroy of HStack<ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<ZoneBarView, _FixedSizeLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA7ForEachVySnySiGSiAA15ModifiedContentVyAHy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0n8PriorityO3KeyVGGGGMd, &_s7SwiftUI6HStackVyAA7ForEachVySnySiGSiAA15ModifiedContentVyAHy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0n8PriorityO3KeyVGGGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ZoneView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ZoneView(0) - 8);
  v6 = (*(v5 + 80) + 25) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for GeometryProxy() - 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return closure #1 in closure #1 in closure #1 in ZoneView.body.getter(a1, v9, v10, v2 + v6, v11, a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZoneBarView, _FixedSizeLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZoneBarView, _FixedSizeLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZoneBarView, _FixedSizeLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0k8PriorityL3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0k8PriorityL3KeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ZoneBarView, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<ZoneBarView, _FixedSizeLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZoneBarView, _FixedSizeLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZoneBarView, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZoneBarView, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZoneBarView, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGMR);
    lazy protocol witness table accessor for type ZoneBarView and conformance ZoneBarView(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZoneBarView, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ZoneBarView and conformance ZoneBarView(double a1)
{
  result = lazy protocol witness table cache variable for type ZoneBarView and conformance ZoneBarView;
  if (!lazy protocol witness table cache variable for type ZoneBarView and conformance ZoneBarView)
  {
    type metadata accessor for ZoneBarView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZoneBarView and conformance ZoneBarView);
  }

  return result;
}

uint64_t outlined init with copy of LiveZoneProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of LiveZonesProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined init with take of ZoneView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of ModifiedContent<ZoneBarView, _FixedSizeLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB011ZoneBarViewVAA16_FixedSizeLayoutVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GeometryReader<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA7ForEachVySnySiGSiACyACy07WorkoutB007ZoneBarG0VAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0v8PriorityW3KeyVGGGG_Qo_AA0k10AttachmentY0VGGAA010_FlexFrameV0VGMd, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA7ForEachVySnySiGSiACyACy07WorkoutB007ZoneBarG0VAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0v8PriorityW3KeyVGGGG_Qo_AA0k10AttachmentY0VGGAA010_FlexFrameV0VGMR);
    lazy protocol witness table accessor for type HStack<ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<ZoneBarView, _FixedSizeLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>>> and conformance HStack<A>(&lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA7ForEachVySnySiGSiAEyAEy07WorkoutB007ZoneBarG0VAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0v8PriorityW3KeyVGGGG_Qo_AA0k10AttachmentY0VGGMd, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA7ForEachVySnySiGSiAEyAEy07WorkoutB007ZoneBarG0VAA16_FixedSizeLayoutVGAA21_TraitWritingModifierVyAA0v8PriorityW3KeyVGGGG_Qo_AA0k10AttachmentY0VGGMR, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<ZoneBarView, _FixedSizeLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DistanceMetricView.init(distance:formattingManager:distanceType:distanceUnit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  result = swift_getKeyPath();
  *(a5 + 40) = result;
  *(a5 + 48) = 0;
  *a5 = a6;
  *(a5 + 8) = a1;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4 & 1;
  return result;
}

uint64_t DistanceMetricView.description.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    if (*(v0 + 40) != 5)
    {
      return 0;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v5, 0);
    (*(v2 + 8))(v4, v1);
    if (v13[8] != 5)
    {
      return 0;
    }
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = WorkoutUIBundle.super.isa;
  v14._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x445F43495254454DLL;
  v9._object = 0xEF45434E41545349;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v14)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t DistanceMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 32);
  v7 = v1[1];
  result = DistanceMetricView.description.getter();
  *a1 = v3;
  *(a1 + 8) = v7;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = result;
  *(a1 + 48) = v9;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance DistanceMetricView@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 32);
  v7 = v1[1];
  result = DistanceMetricView.description.getter();
  *a1 = v3;
  *(a1 + 8) = v7;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = result;
  *(a1 + 48) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for DistanceMetricView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for DistanceMetricView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DistanceMetricText and conformance DistanceMetricText()
{
  result = lazy protocol witness table cache variable for type DistanceMetricText and conformance DistanceMetricText;
  if (!lazy protocol witness table cache variable for type DistanceMetricText and conformance DistanceMetricText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceMetricText and conformance DistanceMetricText);
  }

  return result;
}

SEL *LiveWorkoutConfiguration.goalProgressDisplayColor.getter(uint64_t a1)
{
  if (dispatch thunk of LiveWorkoutConfiguration.isInterval.getter())
  {
    v1 = dispatch thunk of LiveWorkoutConfiguration.currentGoal.getter();
    if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
    {
      v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    }

    else
    {
      v2 = _HKWorkoutGoalType.color.getter([v1 goalTypeIdentifier]);
    }
  }

  else
  {
    v1 = LiveWorkoutConfiguration.configuration.getter();
    v2 = WorkoutConfiguration.displayColor.getter();
  }

  v3 = v2;

  return v3;
}

SEL *LiveWorkoutConfiguration.trackInfoOverlayAccentColor.getter()
{
  if (dispatch thunk of LiveWorkoutConfiguration.isPacer.getter() & 1) != 0 || (dispatch thunk of LiveWorkoutConfiguration.isRace.getter())
  {
    v0 = LiveWorkoutConfiguration.configuration.getter();
    WorkoutConfiguration.colors.getter(v8);

    v1 = v8[0];
    v2 = v8[1];
    v3 = v8[2];
    v4 = v8[3];

    return v1;
  }

  else
  {
    v6 = dispatch thunk of LiveWorkoutConfiguration.currentGoal.getter();
    v7 = [v6 goalTypeIdentifier];

    return _HKWorkoutGoalType.color.getter(v7);
  }
}

SEL *LiveWorkoutConfiguration.trackInfoOverlayBackgroundColor.getter()
{
  if (dispatch thunk of LiveWorkoutConfiguration.isPacer.getter() & 1) != 0 || (dispatch thunk of LiveWorkoutConfiguration.isRace.getter())
  {
    v0 = LiveWorkoutConfiguration.configuration.getter();
    WorkoutConfiguration.colors.getter(v8);

    v1 = v8[0];
    v2 = v8[1];
    v4 = v8[2];
    v3 = v8[3];

    return v3;
  }

  else
  {
    v6 = dispatch thunk of LiveWorkoutConfiguration.currentGoal.getter();
    v7 = [v6 goalTypeIdentifier];

    return _HKWorkoutGoalType.gradientStartingColor.getter(v7);
  }
}

double View.intervalStepBackground(color:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Color.opacity(_:)();
  static Edge.Set.all.getter();
  View.background<A>(_:ignoresSafeAreaEdges:)();

  return result;
}

unint64_t lazy protocol witness table accessor for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>);
  }

  return result;
}

void AddButtonLabel.init()(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() keyColors];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 nonGradientTextColor];

    if (v4)
    {
      *a1 = Color.init(uiColor:)();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t AddButtonLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = type metadata accessor for PlainButtonStyle();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGMR);
  MEMORY[0x28223BE20](v5);
  v7 = (v18 - v6);
  v8 = Image.init(systemName:)();
  v9 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  v11 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA19SymbolRenderingModeVSgGGMR) + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR) + 28);
  static SymbolRenderingMode.palette.getter();
  v13 = type metadata accessor for SymbolRenderingMode();
  (*(*(v13 - 8) + 56))(v11 + v12, 0, 1, v13);
  *v11 = swift_getKeyPath();
  *v7 = v8;
  v7[1] = KeyPath;
  v7[2] = v9;
  v14 = static Font.largeTitle.getter();
  v15 = swift_getKeyPath();
  v16 = (v7 + *(v5 + 36));
  *v16 = v15;
  v16[1] = v14;
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v4, v1);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>(v7);
}

uint64_t key path getter for EnvironmentValues.foregroundColor : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for EnvironmentValues.symbolRenderingMode : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of SymbolRenderingMode?(a1, &v5 - v3);
  return EnvironmentValues.symbolRenderingMode.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA19SymbolRenderingModeVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SymbolRenderingMode?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_1(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for AddButtonLabel(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AddButtonLabel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of SymbolRenderingMode?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

UIColor __swiftcall UIColor.init(rgbHex:)(Swift::UInt32 rgbHex)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithRed:BYTE2(rgbHex) / 255.0 green:BYTE1(rgbHex) / 255.0 blue:rgbHex / 255.0 alpha:1.0];
}

Swift::UInt32 __swiftcall UIColor.rgbHex()()
{
  v1 = [v0 CGColor];
  v2 = CGColorGetColorSpace(v1);

  if (v2)
  {
    LODWORD(v1) = CGColorSpaceGetModel(v2);

    v3 = [v0 CGColor];
    v2 = CGColorRef.components.getter();

    if (v2)
    {
      v4 = 0;
      v5 = *(v2 + 2);
      do
      {
        if (v5 == v4)
        {
          goto LABEL_10;
        }

        v6 = (v2 + 8 * v4++);
        v7 = v6[4];
      }

      while (v7 >= 0.0 && v7 <= 1.0);
    }
  }

  while (1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_10:
    if (!v1)
    {
      goto LABEL_28;
    }

    if (v1 != 1)
    {
      goto LABEL_36;
    }

    if (!v5)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v9 = *(v2 + 4) * 255.0;
    if (COERCE__INT64(fabs(v9)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_39;
    }

    if (v9 <= -1.0)
    {
      goto LABEL_41;
    }

    if (v9 >= 4294967300.0)
    {
      goto LABEL_43;
    }

    if (v5 == 1)
    {
      goto LABEL_45;
    }

    v10 = *(v2 + 5) * 255.0;
    if (COERCE__INT64(fabs(v10)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_47;
    }

    if (v10 <= -1.0)
    {
      goto LABEL_48;
    }

    if (v10 >= 4294967300.0)
    {
      goto LABEL_49;
    }

    if (v5 < 3)
    {
      goto LABEL_50;
    }

    v11 = *(v2 + 6);

    v12 = v11 * 255.0;
    if (COERCE__INT64(fabs(v11 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_51;
    }

    if (v12 <= -1.0)
    {
      goto LABEL_52;
    }

    if (v12 < 4294967300.0)
    {
      break;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  v13 = v9 << 16;
  v14 = v10 << 8;
  v15 = __CFADD__(v13, v14);
  v5 = v13 + v14;
  if (v15)
  {
    goto LABEL_54;
  }

  result = v5 + v12;
  if (!__CFADD__(v5, v12))
  {
    return result;
  }

  __break(1u);
LABEL_28:
  if (!v5)
  {
    goto LABEL_38;
  }

  v17 = *(v2 + 4);

  v18 = v17 * 255.0;
  if (COERCE__INT64(fabs(v17 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_40;
  }

  if (v18 <= -1.0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v18 >= 4294967300.0)
  {
    goto LABEL_44;
  }

  v19 = v18;
  v20 = 65792 * v18;
  if (__CFADD__(v19 << 16, v19 << 8))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  result = v20 + v19;
  if (!__CFADD__(v20, v19))
  {
    return result;
  }

  __break(1u);
LABEL_36:

  return 0;
}

id one-time initialization function for checkInYellow()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.988235294 green:0.874509804 blue:0.309803922 alpha:1.0];
  static UIColor.checkInYellow = result;
  return result;
}

id static UIColor.checkInYellow.getter()
{
  if (one-time initialization token for checkInYellow != -1)
  {
    swift_once();
  }

  v1 = static UIColor.checkInYellow;

  return v1;
}

uint64_t static WorkoutIconSizeProvider.iconSize(useSmallerIcon:)(char a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

id WorkoutIconSizeProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutIconSizeProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutIconSizeProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WorkoutIconSizeProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutIconSizeProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MirrorIntervalsSecondPlatterView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for MirrorIntervalsSecondPlatterView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *MirrorIntervalsSecondPlatterView.body.getter@<X0>(void *a2@<X8>)
{
  v3 = v2;
  v5 = IntervalsMetricsPublisher.intervalThisStep.getter();
  if (v5)
  {
    v6 = v5;
    v7 = WorkoutStep.goal.getter();
    v8 = [v7 goalTypeIdentifier];

    v9 = [objc_opt_self() metricColorsForGoalTypeIdentifier_];
    closure #1 in MirrorIntervalsSecondPlatterView.body.getter(v3, v9, v6, __src);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v13, __src, sizeof(v13));
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(__dst, v14, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0013IntervalsHeroD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAF0gdK0OGG_AEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAF010StepDetailD0VASGAPyALSgGGAA14_PaddingLayoutVGtGGAF9MetricRowVGAEyAEyAVyACyAEyAEyAEyAEyAA4TextVAF0W19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAJyAA017HierarchicalShapeK0VGGAA13_OffsetEffectVG_AEyAZA22_GtGGASGA9_GtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0013IntervalsHeroD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAF0gdK0OGG_AEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAF010StepDetailD0VASGAPyALSgGGAA14_PaddingLayoutVGtGGAF9MetricRowVGAEyAEyAVyACyAEyAEyAEyAEyAA4TextVAF0W19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAJyAA017HierarchicalShapeK0VGGAA13_OffsetEffectVG_AEyAZA22_GtGGASGA9_GtGMR);
    outlined destroy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(v13, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0013IntervalsHeroD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAF0gdK0OGG_AEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAF010StepDetailD0VASGAPyALSgGGAA14_PaddingLayoutVGtGGAF9MetricRowVGAEyAEyAVyACyAEyAEyAEyAEyAA4TextVAF0W19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAJyAA017HierarchicalShapeK0VGGAA13_OffsetEffectVG_AEyAZA22_GtGGASGA9_GtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0013IntervalsHeroD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAF0gdK0OGG_AEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAF010StepDetailD0VASGAPyALSgGGAA14_PaddingLayoutVGtGGAF9MetricRowVGAEyAEyAVyACyAEyAEyAEyAEyAA4TextVAF0W19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAJyAA017HierarchicalShapeK0VGGAA13_OffsetEffectVG_AEyAZA22_GtGGASGA9_GtGMR);

    memcpy(&v11[7], __dst, 0x1A8uLL);
    v14[0] = 1;
    memcpy(&v14[1], v11, 0x1AFuLL);
    _s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA15ModifiedContentVyAOyAH09IntervalsjD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingS0VyAH0hdR0OGG_AOyAA6VStackVyAMyAA6SpacerV_AOyAOyAOyAH010StepDetailD0VA0_GAYyAUSgGGAA08_PaddingF0VGtGGAH9MetricRowVGAOyAOyA3_yAMyAOyAOyAOyAOyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGASyAA017HierarchicalShapeR0VGGAA13_OffsetEffectVG_AOyA7_A31_GtGGA0_GA18_GtGGSgWOi_();
    memcpy(__src, v14, sizeof(__src));
  }

  else
  {
    _s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA15ModifiedContentVyAOyAH09IntervalsjD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingS0VyAH0hdR0OGG_AOyAA6VStackVyAMyAA6SpacerV_AOyAOyAOyAH010StepDetailD0VA0_GAYyAUSgGGAA08_PaddingF0VGtGGAH9MetricRowVGAOyAOyA3_yAMyAOyAOyAOyAOyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGASyAA017HierarchicalShapeR0VGGAA13_OffsetEffectVG_AOyA7_A31_GtGGA0_GA18_GtGGSgWOi0_(__src);
  }

  return memcpy(a2, __src, 0x1B0uLL);
}

id closure #1 in MirrorIntervalsSecondPlatterView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a1 + 40);
  result = [a2 gradientDarkColor];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = Color.init(uiColor:)();
  result = [a2 gradientLightColor];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v26 = Color.init(uiColor:)();
  v11 = *(a1 + 48);
  v82 = *(a1 + 8);
  v25 = v11;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(&v82, &v75, &_s7SwiftUI14ObservedObjectVy11WorkoutCore25IntervalsMetricsPublisherCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore25IntervalsMetricsPublisherCGMR);
  MetricsPublisher.workoutStatePublisher.getter();
  type metadata accessor for IntervalsMetricsPublisher();
  _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type IntervalsMetricsPublisher and conformance IntervalsMetricsPublisher, MEMORY[0x277D7E518], MEMORY[0x277D7E510]);
  v12 = ObservedObject.init(wrappedValue:)();
  v23 = v13;
  v24 = v12;
  type metadata accessor for WorkoutStatePublisher();
  _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88], MEMORY[0x277D7DA78]);
  v14 = ObservedObject.init(wrappedValue:)();
  v21 = v15;
  v22 = v14;
  result = [a2 nonGradientTextColor];
  if (result)
  {
    v20 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v18 = static HorizontalAlignment.center.getter();
    closure #1 in closure #1 in MirrorIntervalsSecondPlatterView.body.getter(a3, a1, &v75);
    v45 = *&v76[48];
    v46 = *&v76[64];
    v47 = *&v76[80];
    v48 = v76[96];
    v41 = v75;
    v42 = *v76;
    v43 = *&v76[16];
    v44 = *&v76[32];
    v49[0] = v75;
    v49[1] = *v76;
    v49[2] = *&v76[16];
    v49[3] = *&v76[32];
    v49[4] = *&v76[48];
    v49[5] = *&v76[64];
    v49[6] = *&v76[80];
    v50 = v76[96];
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(&v41, v71, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGy07WorkoutB0010StepDetailD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGALyAA5ColorVSgGGAA14_PaddingLayoutVGtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGy07WorkoutB0010StepDetailD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGALyAA5ColorVSgGGAA14_PaddingLayoutVGtGMR);
    outlined destroy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(v49, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGy07WorkoutB0010StepDetailD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGALyAA5ColorVSgGGAA14_PaddingLayoutVGtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGy07WorkoutB0010StepDetailD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGALyAA5ColorVSgGGAA14_PaddingLayoutVGtGMR);
    *&v40[71] = v45;
    *&v40[87] = v46;
    *&v40[103] = v47;
    *&v40[7] = v41;
    *&v40[23] = v42;
    *&v40[39] = v43;
    v40[119] = v48;
    *&v40[55] = v44;
    v17 = static HorizontalAlignment.leading.getter();
    LOBYTE(v27[0]) = 1;
    closure #2 in closure #1 in MirrorIntervalsSecondPlatterView.body.getter(a1, &v75);
    v57 = *&v76[80];
    v58 = *&v76[96];
    v53 = *&v76[16];
    v54 = *&v76[32];
    v55 = *&v76[48];
    v56 = *&v76[64];
    v51 = v75;
    v52 = *v76;
    v60[6] = *&v76[80];
    v60[7] = *&v76[96];
    v60[2] = *&v76[16];
    v60[3] = *&v76[32];
    v60[4] = *&v76[48];
    v60[5] = *&v76[64];
    v59 = *&v76[112];
    v61 = *&v76[112];
    v60[0] = v75;
    v60[1] = *v76;
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(&v51, v71, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeZ0VGGAA13_OffsetEffectVG_AEyAH010StepDetailD0VATGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeZ0VGGAA13_OffsetEffectVG_AEyAH010StepDetailD0VATGtGMR);
    outlined destroy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(v60, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeZ0VGGAA13_OffsetEffectVG_AEyAH010StepDetailD0VATGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeZ0VGGAA13_OffsetEffectVG_AEyAH010StepDetailD0VATGtGMR);
    *(&v39[5] + 7) = v56;
    *(&v39[6] + 7) = v57;
    *(&v39[7] + 7) = v58;
    *(&v39[1] + 7) = v52;
    *(&v39[2] + 7) = v53;
    *(&v39[3] + 7) = v54;
    *(&v39[4] + 7) = v55;
    *(&v39[8] + 7) = v59;
    *(v39 + 7) = v51;
    v16 = swift_getKeyPath();
    *&v62 = v8;
    *(&v62 + 1) = v10;
    *&v63 = v26;
    *(&v63 + 1) = v25;
    *&v64 = v24;
    *(&v64 + 1) = v23;
    *&v65 = v22;
    *(&v65 + 1) = v21;
    *&v66 = v20;
    *(&v66 + 1) = KeyPath;
    *&__src[32] = v64;
    *&__src[48] = v65;
    *&__src[64] = v66;
    *__src = v62;
    *&__src[16] = v63;
    v68[0] = v18;
    v68[1] = 0;
    v69[0] = 1;
    *&v69[49] = *&v40[48];
    *&v69[33] = *&v40[32];
    *&v69[17] = *&v40[16];
    *&v69[1] = *v40;
    *&v69[113] = *&v40[112];
    *&v69[97] = *&v40[96];
    *&v69[81] = *&v40[80];
    *&v69[65] = *&v40[64];
    *&__src[104] = *v69;
    *&__src[88] = v18;
    *&__src[168] = *&v69[64];
    *&__src[152] = *&v69[48];
    *&__src[136] = *&v69[32];
    *&__src[120] = *&v69[16];
    *&__src[216] = *&v69[112];
    *&__src[200] = *&v69[96];
    *&__src[184] = *&v69[80];
    *(&v72[6] + 1) = v39[6];
    *(&v72[5] + 1) = v39[5];
    *(&v72[2] + 1) = v39[2];
    *(&v72[1] + 1) = v39[1];
    v67 = 4;
    __src[80] = 4;
    v70 = 0;
    v71[0] = v17;
    v71[1] = 0;
    LOBYTE(v72[0]) = 1;
    *(&v72[7] + 1) = v39[7];
    *(&v72[7] + 12) = *(&v39[7] + 11);
    *(&v72[3] + 1) = v39[3];
    *(&v72[4] + 1) = v39[4];
    *(v72 + 1) = v39[0];
    *&v73 = v16;
    BYTE8(v73) = 5;
    v74 = 0;
    *&__src[368] = v72[7];
    *&__src[384] = v72[8];
    *&__src[304] = v72[3];
    *&__src[320] = v72[4];
    *&__src[336] = v72[5];
    *&__src[352] = v72[6];
    *&__src[240] = v17;
    *&__src[256] = v72[0];
    *&__src[272] = v72[1];
    *&__src[288] = v72[2];
    *&__src[400] = v73;
    *&__src[232] = 0;
    *&__src[416] = 0;
    memcpy(a4, __src, 0x1A8uLL);
    *&v76[81] = v39[5];
    *&v76[97] = v39[6];
    *&v76[113] = v39[7];
    *&v76[124] = *(&v39[7] + 11);
    *&v76[17] = v39[1];
    *&v76[33] = v39[2];
    *&v76[49] = v39[3];
    *&v76[65] = v39[4];
    v75 = v17;
    v76[0] = 1;
    *&v76[1] = v39[0];
    v77 = v16;
    v78 = 5;
    v79 = 0;
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(&v62, v27, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB017IntervalsHeroViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAD0ehJ0OGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB017IntervalsHeroViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAD0ehJ0OGGMR);
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(v68, v27, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACy07WorkoutB0010StepDetailG0VAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGANyAA5ColorVSgGGAA14_PaddingLayoutVGtGGAJ9MetricRowVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACy07WorkoutB0010StepDetailG0VAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGANyAA5ColorVSgGGAA14_PaddingLayoutVGtGGAJ9MetricRowVGMR);
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(v71, v27, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGAA13_OffsetEffectVG_ACyAJ010StepDetailG0VAVGtGGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGAJ0J3RowVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGAA13_OffsetEffectVG_ACyAJ010StepDetailG0VAVGtGGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGAJ0J3RowVGMR);
    outlined destroy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(&v75, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGAA13_OffsetEffectVG_ACyAJ010StepDetailG0VAVGtGGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGAJ0J3RowVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGAA13_OffsetEffectVG_ACyAJ010StepDetailG0VAVGtGGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGAJ0J3RowVGMR);
    v33 = *&v40[64];
    v34 = *&v40[80];
    v35 = *&v40[96];
    v29 = *v40;
    v30 = *&v40[16];
    v31 = *&v40[32];
    v27[0] = v18;
    v27[1] = 0;
    v28 = 1;
    v36 = *&v40[112];
    v32 = *&v40[48];
    v37 = 0;
    outlined destroy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(v27, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACy07WorkoutB0010StepDetailG0VAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGANyAA5ColorVSgGGAA14_PaddingLayoutVGtGGAJ9MetricRowVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyACy07WorkoutB0010StepDetailG0VAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGANyAA5ColorVSgGGAA14_PaddingLayoutVGtGGAJ9MetricRowVGMR);
    v80[0] = v8;
    v80[1] = v10;
    v80[2] = v26;
    v80[3] = v25;
    v80[4] = v24;
    v80[5] = v23;
    v80[6] = v22;
    v80[7] = v21;
    v80[8] = v20;
    v80[9] = KeyPath;
    v81 = 4;
    return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(v80, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB017IntervalsHeroViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAD0ehJ0OGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB017IntervalsHeroViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAD0ehJ0OGGMR);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in MirrorIntervalsSecondPlatterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 40);
  KeyPath = swift_getKeyPath();
  v7 = v5;

  v8 = WorkoutStep.goal.getter();
  v9 = [v8 goalTypeIdentifier];

  _HKWorkoutGoalType.color.getter(v9);
  v10 = Color.init(uiColor:)();
  v11 = swift_getKeyPath();
  v12 = static Edge.Set.bottom.getter();
  v20 = 1;
  *&v21 = a1;
  *(&v21 + 1) = v7;
  *&v22 = 0;
  *(&v22 + 1) = KeyPath;
  LOBYTE(v23) = 5;
  *(&v23 + 1) = v11;
  *&v24 = v10;
  BYTE8(v24) = v12;
  v25 = 0u;
  v26 = 0u;
  v27 = 1;
  *&v19[39] = v23;
  *&v19[23] = v22;
  *&v19[7] = v21;
  v19[103] = 1;
  memset(&v19[71], 0, 32);
  *&v19[55] = v24;
  *a3 = 0;
  *(a3 + 8) = 1;
  v13 = *&v19[48];
  *(a3 + 41) = *&v19[32];
  v14 = *v19;
  *(a3 + 25) = *&v19[16];
  *(a3 + 9) = v14;
  v15 = *&v19[64];
  v16 = *&v19[80];
  *(a3 + 105) = *&v19[96];
  *(a3 + 89) = v16;
  *(a3 + 73) = v15;
  *(a3 + 57) = v13;
  v28[0] = a1;
  v28[1] = v7;
  v28[2] = 0;
  v28[3] = KeyPath;
  v29 = 5;
  v30 = v11;
  v31 = v10;
  v32 = v12;
  v34 = 0u;
  v33 = 0u;
  v35 = 1;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(&v21, v18, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014StepDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eH5StyleOGGAHyAA5ColorVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014StepDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eH5StyleOGGAHyAA5ColorVSgGGAA14_PaddingLayoutVGMR);
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(v28, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014StepDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eH5StyleOGGAHyAA5ColorVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014StepDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eH5StyleOGGAHyAA5ColorVSgGGAA14_PaddingLayoutVGMR);
}

uint64_t closure #2 in closure #1 in MirrorIntervalsSecondPlatterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  specialized View.metricDescriptionFont(multiline:)(0, v4, v5, v7 & 1, v9, &v21);
  outlined consume of Text.Storage(v4, v6, v8 & 1);

  LODWORD(v6) = static HierarchicalShapeStyle.secondary.getter();
  v10 = *(a1 + 56);
  v11 = IntervalsMetricsPublisher.intervalNextStep.getter();
  v12 = *(a1 + 40);
  v13 = static HierarchicalShapeStyle.secondary.getter();
  v15 = v24;
  v14 = v25;
  v27[3] = v24;
  v27[4] = v25;
  v17 = v22;
  v16 = v23;
  v27[1] = v22;
  v27[2] = v23;
  v27[0] = v21;
  v28 = __PAIR64__(v6, v26);
  v29 = v10;
  *a2 = v21;
  *(a2 + 16) = v17;
  v18 = v28;
  v19 = v29;
  *(a2 + 64) = v14;
  *(a2 + 80) = v18;
  *(a2 + 32) = v16;
  *(a2 + 48) = v15;
  *(a2 + 96) = v19;
  *(a2 + 104) = v11;
  *(a2 + 112) = v12;
  *(a2 + 120) = 0;
  *(a2 + 128) = v13;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(v27, v30, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeX0VGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeX0VGGAA13_OffsetEffectVGMR);
  v30[2] = v23;
  v30[3] = v24;
  v30[4] = v25;
  v30[0] = v21;
  v30[1] = v22;
  v31 = v26;
  v32 = v6;
  v33 = 0;
  v34 = v10;
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(v30, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeX0VGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeX0VGGAA13_OffsetEffectVGMR);
}

uint64_t specialized MirrorIntervalsSecondPlatterView.init(metricsPublisher:formattingManager:activityType:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  v9 = [v8 currentDevice];
  v10 = specialized UIDevice.screenType.getter();

  v11 = dbl_20CB709C8[v10];
  v12 = objc_opt_self();
  v13 = [v12 mainScreen];
  [v13 scale];
  v15 = v14;

  v16 = [v12 mainScreen];
  [v16 nativeScale];
  v18 = v17;

  if (v15 != v18)
  {
    v19 = [v12 mainScreen];
    [v19 scale];
    v21 = v20;

    v22 = [v12 mainScreen];
    [v22 nativeScale];
    v24 = v23;

    v11 = v11 * (v21 / v24 * 0.95);
  }

  v25 = a1;
  MetricsPublisher.intervalsMetricsPublisher.getter();
  type metadata accessor for IntervalsMetricsPublisher();
  _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type IntervalsMetricsPublisher and conformance IntervalsMetricsPublisher, MEMORY[0x277D7E518], MEMORY[0x277D7E510]);
  v26 = ObservedObject.init(wrappedValue:)();
  v28 = v27;
  MetricsPublisher.workoutStatePublisher.getter();

  type metadata accessor for WorkoutStatePublisher();
  _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88], MEMORY[0x277D7DA78]);
  result = ObservedObject.init(wrappedValue:)();
  *a4 = v25;
  *(a4 + 8) = v26;
  *(a4 + 16) = v28;
  *(a4 + 24) = result;
  *(a4 + 32) = v30;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  *(a4 + 56) = v11;
  return result;
}

uint64_t _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double _s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA15ModifiedContentVyAOyAH09IntervalsjD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingS0VyAH0hdR0OGG_AOyAA6VStackVyAMyAA6SpacerV_AOyAOyAOyAH010StepDetailD0VA0_GAYyAUSgGGAA08_PaddingF0VGtGGAH9MetricRowVGAOyAOyA3_yAMyAOyAOyAOyAOyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGASyAA017HierarchicalShapeR0VGGAA13_OffsetEffectVG_AOyA7_A31_GtGGA0_GA18_GtGGSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[25] = 0u;
  a1[26] = 0u;
  a1[23] = 0u;
  a1[24] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA15ModifiedContentVyAOyAH09IntervalsjD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingS0VyAH0hdR0OGG_AOyAA6VStackVyAMyAA6SpacerV_AOyAOyAOyAH010StepDetailD0VA0_GAYyAUSgGGAA08_PaddingF0VGtGGAH9MetricRowVGAOyAOyA3_yAMyAOyAOyAOyAOyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGASyAA017HierarchicalShapeR0VGGAA13_OffsetEffectVG_AOyA7_A31_GtGGA0_GA18_GtGGSgMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA15ModifiedContentVyAOyAH09IntervalsjD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingS0VyAH0hdR0OGG_AOyAA6VStackVyAMyAA6SpacerV_AOyAOyAOyAH010StepDetailD0VA0_GAYyAUSgGGAA08_PaddingF0VGtGGAH9MetricRowVGAOyAOyA3_yAMyAOyAOyAOyAOyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGASyAA017HierarchicalShapeR0VGGAA13_OffsetEffectVG_AOyA7_A31_GtGGA0_GA18_GtGGSgMR);
    lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>> and conformance <> _VariadicView.Tree<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>> and conformance <> _VariadicView.Tree<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA15ModifiedContentVyAOyAH09IntervalsjD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingS0VyAH0hdR0OGG_AOyAA6VStackVyAMyAA6SpacerV_AOyAOyAOyAH010StepDetailD0VA0_GAYyAUSgGGAA08_PaddingF0VGtGGAH9MetricRowVGAOyAOyA3_yAMyAOyAOyAOyAOyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGASyAA017HierarchicalShapeR0VGGAA13_OffsetEffectVG_AOyA7_A31_GtGGA0_GA18_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA15ModifiedContentVyAOyAH09IntervalsjD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingS0VyAH0hdR0OGG_AOyAA6VStackVyAMyAA6SpacerV_AOyAOyAOyAH010StepDetailD0VA0_GAYyAUSgGGAA08_PaddingF0VGtGGAH9MetricRowVGAOyAOyA3_yAMyAOyAOyAOyAOyAA4TextVAH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGASyAA017HierarchicalShapeR0VGGAA13_OffsetEffectVG_AOyA7_A31_GtGGA0_GA18_GtGGMR);
    lazy protocol witness table accessor for type _LayoutRoot<MirrorHeroGraphicsMetricsViewLayout> and conformance _LayoutRoot<A>(&lazy protocol witness table cache variable for type _LayoutRoot<MirrorHeroGraphicsMetricsViewLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVy07WorkoutB0029MirrorHeroGraphicsMetricsViewC0VGMd, &_s7SwiftUI11_LayoutRootVy07WorkoutB0029MirrorHeroGraphicsMetricsViewC0VGMR, MEMORY[0x277CDF510]);
    lazy protocol witness table accessor for type _LayoutRoot<MirrorHeroGraphicsMetricsViewLayout> and conformance _LayoutRoot<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0013IntervalsHeroD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAF0gdK0OGG_AEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAF010StepDetailD0VASGAPyALSgGGAA14_PaddingLayoutVGtGGAF9MetricRowVGAEyAEyAVyACyAEyAEyAEyAEyAA4TextVAF0W19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAJyAA017HierarchicalShapeK0VGGAA13_OffsetEffectVG_AEyAZA22_GtGGASGA9_GtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEy07WorkoutB0013IntervalsHeroD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAF0gdK0OGG_AEyAA6VStackVyACyAA6SpacerV_AEyAEyAEyAF010StepDetailD0VASGAPyALSgGGAA14_PaddingLayoutVGtGGAF9MetricRowVGAEyAEyAVyACyAEyAEyAEyAEyAA4TextVAF0W19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAJyAA017HierarchicalShapeK0VGGAA13_OffsetEffectVG_AEyAZA22_GtGGASGA9_GtGMR, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<StepDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>)>>, MetricRow>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _OffsetEffect>, ModifiedContent<StepDetailView, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, MetricRow>)>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _LayoutRoot<MirrorHeroGraphicsMetricsViewLayout> and conformance _LayoutRoot<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for GoalValuePicker(uint64_t a1)
{
  result = type metadata singleton initialization cache for GoalValuePicker;
  if (!type metadata singleton initialization cache for GoalValuePicker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for GoalValuePicker(uint64_t a1)
{
  type metadata accessor for Environment<DismissAction>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<WorkoutConfigurationDataSource>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ObservedObject<GoalWorkoutConfiguration>(319);
        if (v4 <= 0x3F)
        {
          _sSo21FIUIFormattingManagerCMaTm_1(319, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
          if (v5 <= 0x3F)
          {
            type metadata accessor for State<Bool>();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for ObservedObject<GoalWorkoutConfiguration>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObservedObject<GoalWorkoutConfiguration>)
  {
    type metadata accessor for GoalWorkoutConfiguration();
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D928], MEMORY[0x277D7DA48]);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ObservedObject<GoalWorkoutConfiguration>);
    }
  }
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  outlined init with copy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t GoalValuePicker.pickerView()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB014DistancePickerVAF04TimeH0VGAF06EnergyH0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB014DistancePickerVAF04TimeH0VGAF06EnergyH0V_GMR);
  MEMORY[0x28223BE20](v121);
  v123 = (&v108 - v4);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB014DistancePickerVAF04TimeH0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB014DistancePickerVAF04TimeH0V_GMR);
  MEMORY[0x28223BE20](v116);
  v118 = (&v108 - v5);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014DistancePickerVAD04TimeG0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014DistancePickerVAD04TimeG0VGMR);
  MEMORY[0x28223BE20](v122);
  v119 = &v108 - v6;
  v117 = type metadata accessor for DistancePicker(0);
  MEMORY[0x28223BE20](v117);
  v8 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v108 - v10;
  v12 = type metadata accessor for GoalValuePicker(0);
  v13 = (v1 + v12[7]);
  v14 = v13[1];
  v15 = GoalWorkoutConfiguration.goal.getter();
  v16 = [v15 goalTypeIdentifier];

  if (v16 == 1)
  {
    v115 = v11;
    v120 = a1;
    v17 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    v18 = *(v2 + v12[8]);
    v19 = *v13;
    v20 = type metadata accessor for GoalWorkoutConfiguration();
    v21 = _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D928], MEMORY[0x277D7DA48]);
    v22 = MEMORY[0x20F308920](v19, v14, v20, v21);
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v23 = *(v2 + v12[5]);
    if (v23)
    {
      v24 = *(&v128 + 1);
      v25 = v129;
      v26 = v128;
      v27 = v23;
      v28 = WorkoutConfigurationDataSource.lastWorkout.getter();

      v111 = [v28 totalDistance];
      v29 = (v2 + v12[10]);
      v30 = *v29;
      v31 = *(v29 + 1);
      LOBYTE(v132) = v30;
      v133 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
      State.projectedValue.getter();
      v114 = v124;
      v113 = v125;
      v112 = v126;
      *v8 = v17;
      v8[8] = 0;
      *(v8 + 3) = 0;
      *(v8 + 4) = 0;
      *(v8 + 2) = 0;
      v8[40] = 1;
      type metadata accessor for MainActor();

      v32 = v25;
      v33 = static MainActor.shared.getter();
      v34 = swift_allocObject();
      v35 = MEMORY[0x277D85700];
      v34[2] = v33;
      v34[3] = v35;
      v34[4] = v26;
      v34[5] = v24;
      v34[6] = v32;
      v110 = v26;

      v36 = v32;
      v109 = v36;
      v37 = static MainActor.shared.getter();
      v38 = swift_allocObject();
      v38[2] = v37;
      v38[3] = v35;
      v38[4] = v26;
      v38[5] = v24;
      v38[6] = v36;
      _sSo21FIUIFormattingManagerCMaTm_1(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
      Binding.init(get:set:)();
      v39 = v124;
      v40 = v125;
      v41 = v126;
      type metadata accessor for DistancePickerViewModel(0);
      swift_allocObject();

      v42 = v41;
      v43 = v18;
      v44 = v111;
      v45 = v111;
      DistancePickerViewModel.init(boundGoal:formattingManager:minimumValues:lastWorkoutValue:)(v39, v40, v42, v43, 0, v44);
      v46 = v117;
      _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type DistancePickerViewModel and conformance DistancePickerViewModel, type metadata accessor for DistancePickerViewModel, &protocol conformance descriptor for DistancePickerViewModel);
      Bindable<A>.init(wrappedValue:)();

      v47 = &v8[*(v46 + 28)];
      v48 = v113;
      *v47 = v114;
      *(v47 + 1) = v48;
      v47[16] = v112;
      v49 = v115;
      outlined init with take of GoalValuePicker(v8, v115, type metadata accessor for DistancePicker);
      outlined init with copy of GoalValuePicker(v49, v118, type metadata accessor for DistancePicker);
      swift_storeEnumTagMultiPayload();
      _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type DistancePicker and conformance DistancePicker, type metadata accessor for DistancePicker, &protocol conformance descriptor for DistancePicker);
      lazy protocol witness table accessor for type TimePicker and conformance TimePicker();
      v50 = v119;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(v50, v123, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014DistancePickerVAD04TimeG0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014DistancePickerVAD04TimeG0VGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<DistancePicker, TimePicker> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type EnergyPicker and conformance EnergyPicker();
      v51 = v120;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(v50, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014DistancePickerVAD04TimeG0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014DistancePickerVAD04TimeG0VGMR);
      outlined destroy of DistancePicker(v49);
LABEL_18:
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGMR);
      return (*(*(v107 - 8) + 56))(v51, 0, 1, v107);
    }

    goto LABEL_19;
  }

  v52 = GoalWorkoutConfiguration.goal.getter();
  v53 = [v52 goalTypeIdentifier];

  if (v53 == 2)
  {
    v54 = *(v2 + v12[8]);
    v55 = *v13;
    v56 = type metadata accessor for GoalWorkoutConfiguration();
    v57 = _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D928], MEMORY[0x277D7DA48]);
    v58 = MEMORY[0x20F308920](v55, v14, v56, v57);
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v59 = *(v2 + v12[5]);
    if (v59)
    {
      v60 = v132;
      v61 = v133;
      v62 = v134;
      v63 = v59;
      v64 = WorkoutConfigurationDataSource.lastWorkout.getter();

      v120 = a1;
      if (v64)
      {
        [v64 duration];
        v66 = v65;
      }

      else
      {
        v66 = 0.0;
      }

      v97 = (v2 + v12[10]);
      v98 = *v97;
      v99 = *(v97 + 1);
      LOBYTE(v124) = v98;
      v125 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
      State.projectedValue.getter();
      v100 = v128;
      v101 = v129;
      type metadata accessor for TimePickerViewModel(0);
      swift_allocObject();

      v102 = v62;
      v124 = TimePickerViewModel.init(formattingManager:goal:showHour:showSecond:lastWorkoutValue:minimumValue:)(v54, v60, v61, v102, 1, 0, 0, 1, v66);

      State.init(wrappedValue:)();

      v129 = v100;
      LOBYTE(v130) = v101;
      DWORD1(v130) = *(&v124 + 3);
      *(&v130 + 1) = v124;
      BYTE8(v130) = 0;
      *(&v130 + 9) = *v127;
      HIDWORD(v130) = *&v127[3];
      memset(v131, 0, 24);
      v131[24] = 1;
      v103 = v118;
      *(v118 + 57) = *&v131[9];
      v104 = *v131;
      v103[2] = v130;
      v103[3] = v104;
      v105 = v129;
      *v103 = v128;
      v103[1] = v105;
      swift_storeEnumTagMultiPayload();
      outlined init with copy of TimePicker(&v128, &v124);
      _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type DistancePicker and conformance DistancePicker, type metadata accessor for DistancePicker, &protocol conformance descriptor for DistancePicker);
      lazy protocol witness table accessor for type TimePicker and conformance TimePicker();
      v106 = v119;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(v106, v123, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014DistancePickerVAD04TimeG0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014DistancePickerVAD04TimeG0VGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<DistancePicker, TimePicker> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type EnergyPicker and conformance EnergyPicker();
      v51 = v120;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TimePicker(&v128);
      outlined destroy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(v106, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014DistancePickerVAD04TimeG0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014DistancePickerVAD04TimeG0VGMR);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v67 = GoalWorkoutConfiguration.goal.getter();
  v68 = [v67 goalTypeIdentifier];

  if (v68 == 3)
  {
    v69 = *v13;
    v70 = type metadata accessor for GoalWorkoutConfiguration();
    v71 = _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D928], MEMORY[0x277D7DA48]);
    v72 = MEMORY[0x20F308920](v69, v14, v70, v71);
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v73 = *(v2 + v12[5]);
    if (!v73)
    {
LABEL_19:
      type metadata accessor for WorkoutConfigurationDataSource();
      _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
      result = EnvironmentObject.error()();
      __break(1u);
      return result;
    }

    v74 = v128;
    v75 = v129;
    v119 = *(v2 + v12[8]);
    v76 = v73;
    v77 = WorkoutConfigurationDataSource.lastWorkout.getter();

    v120 = a1;
    if (v77)
    {
      _sSo21FIUIFormattingManagerCMaTm_1(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
      v78 = MEMORY[0x20F30C0E0](*MEMORY[0x277CCC918]);
      v79 = [v77 statisticsForType_];

      v77 = [v79 sumQuantity];
    }

    v80 = (v2 + v12[10]);
    v81 = *v80;
    v82 = *(v80 + 1);
    LOBYTE(v132) = v81;
    v133 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.projectedValue.getter();
    v83 = v124;
    v84 = v125;
    v85 = v126;
    type metadata accessor for EnergyPickerViewModel(0);
    swift_allocObject();
    v86 = v77;

    v87 = v75;
    EnergyPickerViewModel.init(goal:formattingManager:lastWorkoutValue:)(v74, *(&v74 + 1), v87, v119, v77);
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type EnergyPickerViewModel and conformance EnergyPickerViewModel, type metadata accessor for EnergyPickerViewModel, &protocol conformance descriptor for EnergyPickerViewModel);
    v88 = ObservedObject.init(wrappedValue:)();
    v90 = v89;

    v91 = v123;
    *v123 = v88;
    v91[1] = v90;
    v91[2] = v83;
    v91[3] = v84;
    *(v91 + 32) = v85;
    *(v91 + 40) = 0;
    v91[7] = 0;
    v91[8] = 0;
    v91[6] = 0;
    *(v91 + 72) = 1;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<DistancePicker, TimePicker> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type EnergyPicker and conformance EnergyPicker();
    v92 = v120;
    _ConditionalContent<>.init(storage:)();
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGMR);
    return (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
  }

  else
  {
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGMR);
    v96 = *(*(v95 - 8) + 56);

    return v96(a1, 1, 1, v95);
  }
}

uint64_t GoalValuePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMR);
  MEMORY[0x28223BE20](v3);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6VStackVyAA9TupleViewVyACyACy07WorkoutB014DistancePickerVAL04TimeL0VGAL06EnergyL0VGSg_AGyAGyAA6ButtonVyAA4TextVGAL012PinnedBottomO13ModifierPhoneVGAA024_EnvironmentKeyTransformS0VySbGGtGGAL0liS0VGAU_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6VStackVyAA9TupleViewVyACyACy07WorkoutB014DistancePickerVAL04TimeL0VGAL06EnergyL0VGSg_AGyAGyAA6ButtonVyAA4TextVGAL012PinnedBottomO13ModifierPhoneVGAA024_EnvironmentKeyTransformS0VySbGGtGGAL0liS0VGAU_GMR);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyAIy07WorkoutB014DistancePickerVAJ04TimeK0VGAJ06EnergyK0VGSg_ACyACyAA6ButtonVyAA4TextVGAJ012PinnedBottomN13ModifierPhoneVGAA024_EnvironmentKeyTransformR0VySbGGtGGAJ0kgR0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyAIy07WorkoutB014DistancePickerVAJ04TimeK0VGAJ06EnergyK0VGSg_ACyACyAA6ButtonVyAA4TextVGAJ012PinnedBottomN13ModifierPhoneVGAA024_EnvironmentKeyTransformR0VySbGGtGGAJ0kgR0VGMR);
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  if (static Platform.current.getter())
  {
    *v11 = static HorizontalAlignment.center.getter();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAKy07WorkoutB014DistancePickerVAL04TimeM0VGAL06EnergyM0VGSg_AA08ModifiedJ0VyAWyAA6ButtonVyAA4TextVGAL012PinnedBottomQ13ModifierPhoneVGAA024_EnvironmentKeyTransformU0VySbGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAKy07WorkoutB014DistancePickerVAL04TimeM0VGAL06EnergyM0VGSg_AA08ModifiedJ0VyAWyAA6ButtonVyAA4TextVGAL012PinnedBottomQ13ModifierPhoneVGAA024_EnvironmentKeyTransformU0VySbGGtGGMR);
    closure #1 in GoalValuePicker.body.getter(v1, &v11[*(v12 + 44)]);
    type metadata accessor for GoalValuePicker(0);
    v13 = WorkoutConfiguration.displayName(formattingManager:)();
    v25[1] = a1;
    v14 = v13;
    v16 = v15;
    WorkoutConfiguration.displayColorForCurrentContrastMode.getter();
    v17 = Color.init(uiColor:)();
    WorkoutConfiguration.displayColor.getter();
    v18 = Color.init(uiColor:)();
    v19 = static Edge.Set.all.getter();
    v20 = &v11[*(v9 + 36)];
    *v20 = v14;
    *(v20 + 1) = v16;
    *(v20 + 2) = v17;
    *(v20 + 3) = v18;
    v20[32] = v19;
    v21 = &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyAIy07WorkoutB014DistancePickerVAJ04TimeK0VGAJ06EnergyK0VGSg_ACyACyAA6ButtonVyAA4TextVGAJ012PinnedBottomN13ModifierPhoneVGAA024_EnvironmentKeyTransformR0VySbGGtGGAJ0kgR0VGMd;
    v22 = &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyAIy07WorkoutB014DistancePickerVAJ04TimeK0VGAJ06EnergyK0VGSg_ACyACyAA6ButtonVyAA4TextVGAJ012PinnedBottomN13ModifierPhoneVGAA024_EnvironmentKeyTransformR0VySbGGtGGAJ0kgR0VGMR;
    outlined init with copy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(v11, v8, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyAIy07WorkoutB014DistancePickerVAJ04TimeK0VGAJ06EnergyK0VGSg_ACyACyAA6ButtonVyAA4TextVGAJ012PinnedBottomN13ModifierPhoneVGAA024_EnvironmentKeyTransformR0VySbGGtGGAJ0kgR0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyAIy07WorkoutB014DistancePickerVAJ04TimeK0VGAJ06EnergyK0VGSg_ACyACyAA6ButtonVyAA4TextVGAJ012PinnedBottomN13ModifierPhoneVGAA024_EnvironmentKeyTransformR0VySbGGtGGAJ0kgR0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(_ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?, ModifiedContent<ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>? and conformance <A> A?();
    _ConditionalContent<>.init(storage:)();
    v23 = v11;
  }

  else
  {
    GoalValuePicker.pickerView()(v5);
    v21 = &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMd;
    v22 = &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMR;
    outlined init with copy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(v5, v8, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(_ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?, ModifiedContent<ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>? and conformance <A> A?();
    _ConditionalContent<>.init(storage:)();
    v23 = v5;
  }

  return outlined destroy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(v23, v21, v22);
}

uint64_t closure #1 in GoalValuePicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for GoalValuePicker(0);
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMR);
  MEMORY[0x28223BE20](v5 - 8);
  v36 = &v35 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGAA024_EnvironmentKeyTransformJ0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGAA024_EnvironmentKeyTransformJ0VySbGGMR);
  MEMORY[0x28223BE20](v39);
  v43 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v38 = &v35 - v9;
  MEMORY[0x28223BE20](v10);
  v42 = &v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v41 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v40 = &v35 - v15;
  GoalValuePicker.pickerView()(&v35 - v15);
  LocalizedStringKey.init(stringLiteral:)();
  outlined init with copy of GoalValuePicker(a1, &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GoalValuePicker);
  v16 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v17 = swift_allocObject();
  outlined init with take of GoalValuePicker(&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for GoalValuePicker);
  v18 = v36;
  Button<>.init(_:action:)();
  v19 = GoalWorkoutConfiguration.goal.getter();
  v20 = [v19 value];

  if (v20)
  {
    [v20 _value];
    v22 = v21;

    v23 = v22 == 0.0;
  }

  else
  {
    v23 = 0;
  }

  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v26 = v38;
  outlined init with take of ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>(v18, v38, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGMR);
  v27 = (v26 + *(v39 + 36));
  *v27 = KeyPath;
  v27[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_11;
  v27[2] = v25;
  v28 = v42;
  outlined init with take of ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>(v26, v42, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGAA024_EnvironmentKeyTransformJ0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGAA024_EnvironmentKeyTransformJ0VySbGGMR);
  v30 = v40;
  v29 = v41;
  outlined init with copy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(v40, v41, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMR);
  v31 = v43;
  outlined init with copy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(v28, v43, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGAA024_EnvironmentKeyTransformJ0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGAA024_EnvironmentKeyTransformJ0VySbGGMR);
  v32 = v44;
  outlined init with copy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(v29, v44, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMR);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSg_AA08ModifiedD0VyAOyAA6ButtonVyAA4TextVGAD012PinnedBottomK13ModifierPhoneVGAA024_EnvironmentKeyTransformO0VySbGGtMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSg_AA08ModifiedD0VyAOyAA6ButtonVyAA4TextVGAD012PinnedBottomK13ModifierPhoneVGAA024_EnvironmentKeyTransformO0VySbGGtMR);
  outlined init with copy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(v31, v32 + *(v33 + 48), &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGAA024_EnvironmentKeyTransformJ0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGAA024_EnvironmentKeyTransformJ0VySbGGMR);
  outlined destroy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(v28, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGAA024_EnvironmentKeyTransformJ0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGAA024_EnvironmentKeyTransformJ0VySbGGMR);
  outlined destroy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(v30, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMR);
  outlined destroy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(v31, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGAA024_EnvironmentKeyTransformJ0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomE13ModifierPhoneVGAA024_EnvironmentKeyTransformJ0VySbGGMR);
  return outlined destroy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(v29, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMR);
}

uint64_t closure #1 in closure #1 in GoalValuePicker.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for GoalValuePicker(0);
  GoalWorkoutConfiguration.goal.getter();
  GoalWorkoutConfiguration.goal.setter();
  v7 = *(a1 + v6[5]);
  if (*(a1 + v6[9]) == 1)
  {
    if (v7)
    {
      v8 = v7;
      WorkoutConfigurationDataSource.add(workoutConfiguration:)();

      if (*(a1 + v6[6]))
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v14[15] = 0;

        return static Published.subscript.setter();
      }

      type metadata accessor for ConfigurationNavigationModel(0);
      v11 = &lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel;
      v12 = type metadata accessor for ConfigurationNavigationModel;
      v13 = &protocol conformance descriptor for ConfigurationNavigationModel;
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for WorkoutConfigurationDataSource();
    v11 = &lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource;
    v12 = MEMORY[0x277D7DC28];
    v13 = MEMORY[0x277D7DC20];
LABEL_10:
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_3(v11, v12, v13);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  if (!v7)
  {
    goto LABEL_8;
  }

  v10 = v7;
  WorkoutConfigurationDataSource.save(workoutConfiguration:)();

  specialized Environment.wrappedValue.getter(v5);
  DismissAction.callAsFunction()();
  return (*(v3 + 8))(v5, v2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(_ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?, ModifiedContent<ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(_ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?, ModifiedContent<ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(_ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?, ModifiedContent<ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyAIy07WorkoutB014DistancePickerVAJ04TimeK0VGAJ06EnergyK0VGSg_ACyACyAA6ButtonVyAA4TextVGAJ012PinnedBottomN13ModifierPhoneVGAA024_EnvironmentKeyTransformR0VySbGGtGGAJ0kgR0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyAIy07WorkoutB014DistancePickerVAJ04TimeK0VGAJ06EnergyK0VGSg_ACyACyAA6ButtonVyAA4TextVGAJ012PinnedBottomN13ModifierPhoneVGAA024_EnvironmentKeyTransformR0VySbGGtGGAJ0kgR0VGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?, ModifiedContent<ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance VStack<A>();
    lazy protocol witness table accessor for type PickerViewModifier and conformance PickerViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(_ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?, ModifiedContent<ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?, ModifiedContent<ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance VStack<A>()
{
  result = lazy protocol witness table cache variable for type VStack<TupleView<(_ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?, ModifiedContent<ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance VStack<A>;
  if (!lazy protocol witness table cache variable for type VStack<TupleView<(_ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?, ModifiedContent<ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance VStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAGy07WorkoutB014DistancePickerVAH04TimeJ0VGAH06EnergyJ0VGSg_AA08ModifiedG0VyASyAA6ButtonVyAA4TextVGAH012PinnedBottomN13ModifierPhoneVGAA024_EnvironmentKeyTransformR0VySbGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAGy07WorkoutB014DistancePickerVAH04TimeJ0VGAH06EnergyJ0VGSg_AA08ModifiedG0VyASyAA6ButtonVyAA4TextVGAH012PinnedBottomN13ModifierPhoneVGAA024_EnvironmentKeyTransformR0VySbGGtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<TupleView<(_ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?, ModifiedContent<ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance VStack<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGSgMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014DistancePickerVAD04TimeG0VGAD06EnergyG0VGMR);
    lazy protocol witness table accessor for type _ConditionalContent<DistancePicker, TimePicker> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type EnergyPicker and conformance EnergyPicker();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<DistancePicker, TimePicker> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<DistancePicker, TimePicker> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<DistancePicker, TimePicker> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014DistancePickerVAD04TimeG0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014DistancePickerVAD04TimeG0VGMR);
    _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type DistancePicker and conformance DistancePicker, type metadata accessor for DistancePicker, &protocol conformance descriptor for DistancePicker);
    lazy protocol witness table accessor for type TimePicker and conformance TimePicker();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<DistancePicker, TimePicker> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in GoalValuePicker.body.getter()
{
  v1 = *(type metadata accessor for GoalValuePicker(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #1 in GoalValuePicker.body.getter(v2);
}

uint64_t outlined init with take of ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_16Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_1(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of GoalValuePicker(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of GoalValuePicker(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?, ModifiedContent<ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier>, _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?, ModifiedContent<ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier>, _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?, ModifiedContent<ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier>, _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6VStackVyAA9TupleViewVyACyACy07WorkoutB014DistancePickerVAJ04TimeK0VGAJ06EnergyK0VGSg_AEyAEyAA6ButtonVyAA4TextVGAJ012PinnedBottomN13ModifierPhoneVGAA024_EnvironmentKeyTransformR0VySbGGtGGAJ0khR0VGASGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6VStackVyAA9TupleViewVyACyACy07WorkoutB014DistancePickerVAJ04TimeK0VGAJ06EnergyK0VGSg_AEyAEyAA6ButtonVyAA4TextVGAJ012PinnedBottomN13ModifierPhoneVGAA024_EnvironmentKeyTransformR0VySbGGtGGAJ0khR0VGASGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(_ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?, ModifiedContent<ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?, ModifiedContent<ModifiedContent<Button<Text>, PinnedBottomButtonModifierPhone>, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier>, _ConditionalContent<_ConditionalContent<DistancePicker, TimePicker>, EnergyPicker>?> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirrorDistanceRemainingView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for MirrorDistanceRemainingView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MirrorDistanceRemainingView.distanceString.getter(uint64_t a1, void *a2, double a3)
{
  v5 = WorkoutStep.goal.getter();
  v6 = [v5 value];

  if (v6)
  {
    v7 = [objc_opt_self() meterUnit];
    [v6 doubleValueForUnit_];
    v9 = v8;

    v10 = v9 - a3 > 0.0 ? v9 - a3 : 0.0;
    v11 = WorkoutStep.goal.getter();
    v12 = [v11 value];

    if (v12)
    {
      v13 = [v12 _unit];
      v14 = MEMORY[0x20F30D2C0]();

      v15 = WorkoutStep.goal.getter();
      v16 = [v15 value];

      if (v16)
      {
        v17 = objc_opt_self();
        v18 = [v16 _unit];
        v19 = MEMORY[0x20F30D2C0]();

        v20 = [a2 localizedStringWithDistanceInMeters:v14 distanceUnit:0 unitStyle:objc_msgSend(v17 decimalPrecision:sel_defaultPrecisionForDistanceUnit_ roundingMode:v19) decimalTrimmingMode:{3, 1, v10}];
        if (v20)
        {
          v21 = v20;
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          return v22;
        }

        __break(1u);
      }
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t MirrorDistanceRemainingView.stepDescription.getter(uint64_t a1, void *a2, double a3)
{
  specialized MirrorDistanceRemainingView.distanceInUnit.getter(a1, a3);
  v5 = v4;
  v6 = WorkoutStep.goal.getter();
  v7 = [v6 value];

  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = [v7 _unit];
  v9 = MEMORY[0x20F30D2C0]();

  v10 = static Platform.current.getter();
  if (one-time initialization token for useLongUnitString != -1)
  {
    swift_once();
  }

  if (static DistanceRemainingMetricAppearance.useLongUnitString != 1)
  {
LABEL_7:
    v11 = [a2 localizedShortUnitStringForDistanceUnit_];
    if (v11)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_12:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v11 = [a2 localizedLongUnitStringForDistanceUnit:v9 distanceInUnit:v5];
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = specialized static Localization.remainingDistanceLocalizationKey(unit:platform:)(v9, v10 & 1);
  v18 = v17;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = WorkoutUIBundle.super.isa;
  v28._object = 0xE000000000000000;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = v16;
  v21._object = v18;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v20, v19, v22, v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20CB5DA80;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
  v24 = MEMORY[0x277D839F8];
  *(v23 + 32) = v13;
  *(v23 + 40) = v15;
  v25 = MEMORY[0x277D83A80];
  *(v23 + 96) = v24;
  *(v23 + 104) = v25;
  *(v23 + 72) = v5;
  static String.localizedStringWithFormat(_:_:)();

  lazy protocol witness table accessor for type String and conformance String();
  v26 = StringProtocol.localizedUppercase.getter();

  return v26;
}

uint64_t protocol witness for View.body.getter in conformance MirrorDistanceRemainingView@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[2];
  v6 = MirrorDistanceRemainingView.distanceString.getter(*v1, v5, v4);
  v8 = v7;
  result = MirrorDistanceRemainingView.stepDescription.getter(v3, v5, v4);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = result;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return result;
}

void specialized MirrorDistanceRemainingView.distanceInUnit.getter(uint64_t a1, double a2)
{
  v3 = WorkoutStep.goal.getter();
  v4 = [v3 value];

  if (v4)
  {
    v5 = [objc_opt_self() meterUnit];
    v6 = [objc_opt_self() quantityWithUnit:v5 doubleValue:a2];

    v7 = [v4 _unit];
    [v6 doubleValueForUnit_];
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t type metadata accessor for MirrorIntervalTimeView(uint64_t a1)
{
  result = type metadata singleton initialization cache for MirrorIntervalTimeView;
  if (!type metadata singleton initialization cache for MirrorIntervalTimeView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MirrorIntervalTimeView(uint64_t a1)
{
  type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WorkoutStep();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date?(319, &lazy cache variable for type metadata for [DateInterval], MEMORY[0x277CC88A8], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
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

void type metadata accessor for Double?()
{
  if (!lazy cache variable for type metadata for Double?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Double?);
    }
  }
}

uint64_t MirrorIntervalTimeView.offsetGoalEndDate(until:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  _s10Foundation4DateVSgWOcTm_0(v3, v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    (*(v10 + 16))(v15, a1, v9);
    if (v16(v8, 1, v9) != 1)
    {
      _s10Foundation4DateVSgWOhTm_0(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
  }

  type metadata accessor for MirrorIntervalTimeView(0);
  Date.offset(until:pauseTimes:lastUnbalancedPauseStart:)();
  v17 = WorkoutStep.goal.getter();
  v18 = [v17 value];

  if (v18)
  {
    v19 = [objc_opt_self() secondUnit];
    [v18 doubleValueForUnit_];
  }

  Date.addingTimeInterval(_:)();
  v20 = *(v10 + 8);
  v20(v12, v9);
  v20(v15, v9);
  return (*(v10 + 56))(a2, 0, 1, v9);
}

double MirrorIntervalTimeView.presentedTime(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  if ((*(v1 + *(type metadata accessor for MirrorIntervalTimeView(0) + 40)) & 1) == 0)
  {
    MirrorIntervalTimeView.offsetGoalEndDate(until:)(a1, v8);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v18, v8, v9);
      Date.timeIntervalSince(_:)();
      v20 = v21;
      v15 = v18;
      goto LABEL_9;
    }

    _s10Foundation4DateVSgWOhTm_0(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  _s10Foundation4DateVSgWOcTm_0(v1, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    _s10Foundation4DateVSgWOhTm_0(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v10 + 16))(v15, a1, v9);
  }

  else
  {
    (*(v10 + 32))(v12, v5, v9);
    Date.offset(until:pauseTimes:lastUnbalancedPauseStart:)();
    (*(v10 + 8))(v12, v9);
  }

  Date.timeIntervalSince(_:)();
  v20 = v19;
LABEL_9:
  (*(v10 + 8))(v15, v9);
  return v20;
}

uint64_t MirrorIntervalTimeView.timeString(_:)(double a1)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  Double.smoothedForDisplay.getter();
  v10 = v9;
  v11 = *(v1 + *(type metadata accessor for MirrorIntervalTimeView(0) + 40));
  v12 = MEMORY[0x277D84688];
  v13 = MEMORY[0x277D84680];
  if (v11)
  {
    v14 = MEMORY[0x277D84688];
  }

  else
  {
    v14 = MEMORY[0x277D84680];
  }

  (*(v3 + 104))(v8, *v14, v2);
  v20 = v10;
  (*(v3 + 16))(v5, v8, v2);
  v15 = (*(v3 + 88))(v5, v2);
  if (v15 == *MEMORY[0x277D84678])
  {
    v16 = round(v10);
LABEL_14:
    (*(v3 + 8))(v8, v2);
    goto LABEL_15;
  }

  if (v15 == *MEMORY[0x277D84670])
  {
    v16 = rint(v10);
    goto LABEL_14;
  }

  if (v15 == *v13)
  {
    v16 = ceil(v10);
    goto LABEL_14;
  }

  if (v15 == *v12)
  {
    v16 = floor(v10);
    goto LABEL_14;
  }

  if (v15 == *MEMORY[0x277D84660])
  {
    v16 = trunc(v10);
    goto LABEL_14;
  }

  if (v15 == *MEMORY[0x277D84668])
  {
    (*(v3 + 8))(v8, v2);
    if ((*&v10 & 0x8000000000000000) != 0)
    {
      v16 = floor(v10);
    }

    else
    {
      v16 = ceil(v10);
    }
  }

  else
  {
    Double._roundSlowPath(_:)();
    v18 = *(v3 + 8);
    v18(v8, v2);
    v18(v5, v2);
    v16 = v20;
  }

LABEL_15:
  type metadata accessor for ElapsedTimeFormatter();
  return MEMORY[0x20F305C20](1, 1, v16);
}

uint64_t MirrorIntervalTimeView.progress(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v27 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28 = &v25 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = v1;
  MirrorIntervalTimeView.offsetGoalEndDate(until:)(a1, v8);
  v18 = *(v10 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    return _s10Foundation4DateVSgWOhTm_0(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v25 = v16;
  v26 = a1;
  v20 = *(v10 + 32);
  v20(v16, v8, v9);
  _s10Foundation4DateVSgWOcTm_0(v17, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v18(v5, 1, v9) == 1)
  {
    _s10Foundation4DateVSgWOhTm_0(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v21 = v28;
    (*(v10 + 16))(v28, v26, v9);
  }

  else
  {
    v22 = v27;
    v20(v27, v5, v9);
    type metadata accessor for MirrorIntervalTimeView(0);
    v21 = v28;
    Date.offset(until:pauseTimes:lastUnbalancedPauseStart:)();
    (*(v10 + 8))(v22, v9);
  }

  Date.timeIntervalSince(_:)();
  v23 = v25;
  Date.timeIntervalSince(_:)();
  v24 = *(v10 + 8);
  v24(v21, v9);
  return (v24)(v23, v9);
}

uint64_t MirrorIntervalTimeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for MirrorIntervalTimeView(0);
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v46 = v4;
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for PeriodicTimelineSchedule();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMR);
  MEMORY[0x28223BE20](v50);
  v48 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v40 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v38 - v25;
  Date.init()();
  _s10Foundation4DateVSgWOcTm_0(v2, v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v39 = *(v16 + 48);
  if (v39(v14, 1, v15) == 1)
  {
    _s10Foundation4DateVSgWOhTm_0(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v16 + 32))(v26, v23, v15);
  }

  else
  {
    (*(v16 + 32))(v20, v14, v15);
    Date.offset(until:pauseTimes:lastUnbalancedPauseStart:)();
    v38 = v16;
    v27 = *(v16 + 8);
    v27(v20, v15);
    v27(v23, v15);
    v16 = v38;
  }

  v41 = v26;
  (*(v16 + 16))(v40, v26, v15);
  v28 = v43;
  PeriodicTimelineSchedule.init(from:by:)();
  v29 = v42;
  _s10Foundation4DateVSgWOcTm_0(v2 + *(v3 + 28), v42, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v30 = v39(v29, 1, v15) != 1;
  _s10Foundation4DateVSgWOhTm_0(v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v31 = v49;
  (*(v5 + 32))(v49, v28, v44);
  *(v31 + *(v50 + 36)) = v30;
  v32 = v2;
  v33 = v47;
  outlined init with copy of MirrorIntervalTimeView(v32, v47);
  v34 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v35 = swift_allocObject();
  outlined init with take of MirrorIntervalTimeView(v33, v35 + v34);
  _s10Foundation4DateVSgWOcTm_0(v31, v48, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMR);
  v36 = swift_allocObject();
  *(v36 + 16) = partial apply for closure #1 in MirrorIntervalTimeView.body.getter;
  *(v36 + 24) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingG0V_AA08ModifiedE0VyAH10MetricTextVAA12_FrameLayoutVGtGANGGMd, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingG0V_AA08ModifiedE0VyAH10MetricTextVAA12_FrameLayoutVGtGANGGMR);
  _s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGACyxGAD0dE0AAWlTm_0(&lazy protocol witness table cache variable for type PausableTimelineSchedule<PeriodicTimelineSchedule> and conformance PausableTimelineSchedule<A>, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMR, &protocol conformance descriptor for PausableTimelineSchedule<A>);
  _s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGACyxGAD0dE0AAWlTm_0(&lazy protocol witness table cache variable for type ZStack<_ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MetricText, _FrameLayout>)>, MetricText>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingG0V_AA08ModifiedE0VyAH10MetricTextVAA12_FrameLayoutVGtGANGGMd, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingG0V_AA08ModifiedE0VyAH10MetricTextVAA12_FrameLayoutVGtGANGGMR, MEMORY[0x277CE11A8]);
  TimelineView<>.init(_:content:)();
  _s10Foundation4DateVSgWOhTm_0(v31, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMd, &_s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGMR);
  return (*(v16 + 8))(v41, v15);
}

double closure #1 in MirrorIntervalTimeView.body.getter@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = static Alignment.center.getter();
  v7 = v6;
  closure #1 in closure #1 in MirrorIntervalTimeView.body.getter(a2, &v14);
  v29 = v20;
  v30 = v21;
  v31[0] = v22[0];
  *(v31 + 9) = *(v22 + 9);
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v23 = v14;
  v24 = v15;
  v32[6] = v20;
  v32[7] = v21;
  v33[0] = v22[0];
  *(v33 + 9) = *(v22 + 9);
  v32[2] = v16;
  v32[3] = v17;
  v32[4] = v18;
  v32[5] = v19;
  v32[0] = v14;
  v32[1] = v15;
  _s10Foundation4DateVSgWOcTm_0(&v23, &v13, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingF0V_AA08ModifiedD0VyAF10MetricTextVAA12_FrameLayoutVGtGALGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingF0V_AA08ModifiedD0VyAF10MetricTextVAA12_FrameLayoutVGtGALGMR);
  _s10Foundation4DateVSgWOhTm_0(v32, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingF0V_AA08ModifiedD0VyAF10MetricTextVAA12_FrameLayoutVGtGALGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingF0V_AA08ModifiedD0VyAF10MetricTextVAA12_FrameLayoutVGtGALGMR);
  *a3 = v5;
  *(a3 + 8) = v7;
  v8 = v30;
  *(a3 + 112) = v29;
  *(a3 + 128) = v8;
  *(a3 + 144) = v31[0];
  *(a3 + 153) = *(v31 + 9);
  v9 = v26;
  *(a3 + 48) = v25;
  *(a3 + 64) = v9;
  v10 = v28;
  *(a3 + 80) = v27;
  *(a3 + 96) = v10;
  result = v23.n128_f64[0];
  v12 = v24;
  *(a3 + 16) = v23;
  *(a3 + 32) = v12;
  return result;
}

__n128 closure #1 in closure #1 in MirrorIntervalTimeView.body.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd, &_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMR);
  TimelineView.Context.date.getter();
  v7 = MirrorIntervalTimeView.presentedTime(for:)(v6);
  v8 = *(v4 + 8);
  v8(v6, v3);
  v9 = type metadata accessor for MirrorIntervalTimeView(0);
  v10 = v9;
  if (*(a1 + *(v9 + 32)) == 1 && (v11 = a1 + *(v9 + 36), (*(v11 + 8) & 1) == 0))
  {
    v22 = *v11;
    v48 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:0];
    if (one-time initialization token for lineWidth != -1)
    {
      swift_once();
    }

    v23 = static MirrorRingConstants.lineWidth;
    TimelineView.Context.date.getter();
    MirrorIntervalTimeView.progress(for:)(v6);
    v25 = v24;
    v8(v6, v3);
    v26 = 0.0;
    if (v25 >= 0.0)
    {
      v26 = v25;
    }

    if (v26 <= 1.0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 1.0;
    }

    v28 = MirrorIntervalTimeView.timeString(_:)(v7);
    v30 = v29;
    if (*(a1 + *(v10 + 40)) == 1)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v31 = WorkoutUIBundle.super.isa;
      v46 = 0xE000000000000000;
      v32 = 0x4C41565245544E49;
      v33 = 0xED0000454D49545FLL;
    }

    else
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v31 = WorkoutUIBundle.super.isa;
      v46 = 0xE000000000000000;
      v33 = 0x800000020CB990A0;
      v32 = 0xD000000000000011;
    }

    v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v34.value._object = 0xEB00000000656C62;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    v36 = 0;
    v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v32, v34, v31, v35, *(&v46 - 1));

    if (one-time initialization token for heroHeight != -1)
    {
      swift_once();
    }

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v53[0] = v28;
    *(&v53[0] + 1) = v30;
    v53[1] = 0uLL;
    v53[2] = v37;
    v54.n128_u16[0] = 0;
    v54.n128_u64[1] = 0;
    *v55 = 0;
    *&v55[40] = v52;
    *&v55[24] = v51;
    *&v55[8] = v50;
    v59 = v54;
    v58 = v37;
    v57 = 0uLL;
    v56 = v53[0];
    v62 = *&v55[32];
    v61 = *&v55[16];
    v63 = *(&v52 + 1);
    v60 = *v55;
    v64[0] = v28;
    v64[1] = v30;
    v64[2] = 0;
    v64[3] = 0;
    v65 = v37;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v71 = v52;
    v70 = v51;
    v69 = v50;
    v38 = v48;
    _s10Foundation4DateVSgWOcTm_0(v53, &v90, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA12_FrameLayoutVGMR);
    _s10Foundation4DateVSgWOhTm_0(v64, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB010MetricTextVAA12_FrameLayoutVGMR);

    v81.n128_u64[0] = v38;
    v81.n128_u64[1] = v22;
    v82.n128_u64[0] = v23;
    v82.n128_f64[1] = v27;
    v87 = v60;
    v88 = v61;
    v89[0] = v62;
    *&v89[1] = v63;
    v83 = v56;
    v84 = v57;
    v85 = v58;
    v86 = v59;
    _s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVy07WorkoutB008GoalRingG0V_AA08ModifiedD0VyAH10MetricTextVAA12_FrameLayoutVGtGAN_GWOi_(&v81);
    v96 = v87;
    v97 = v88;
    v98[0] = v89[0];
    *(v98 + 9) = *(v89 + 9);
    v92 = v83;
    v93 = v84;
    v94 = v85;
    v95 = v86;
    v90 = v81;
    v91 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD10MetricTextVAA12_FrameLayoutVGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD10MetricTextVAA12_FrameLayoutVGtGMR);
    _s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGACyxGAD0dE0AAWlTm_0(&lazy protocol witness table cache variable for type TupleView<(GoalRingView, ModifiedContent<MetricText, _FrameLayout>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD10MetricTextVAA12_FrameLayoutVGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD10MetricTextVAA12_FrameLayoutVGtGMR, MEMORY[0x277CE14C0]);
    lazy protocol witness table accessor for type MetricText and conformance MetricText();
    _ConditionalContent<>.init(storage:)();

    v96 = v78;
    v97 = v79;
    v98[0] = v80[0];
    *(v98 + 9) = *(v80 + 9);
    v92 = v74;
    v93 = v75;
    v94 = v76;
    v95 = v77;
    v90 = v72;
    v91 = v73;
  }

  else
  {
    v12 = MirrorIntervalTimeView.timeString(_:)(v7);
    v14 = v13;
    if (*(a1 + *(v10 + 40)) == 1)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v15 = WorkoutUIBundle.super.isa;
      v45 = 0xE000000000000000;
      v16 = 0x4C41565245544E49;
      v17 = 0xED0000454D49545FLL;
    }

    else
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v15 = WorkoutUIBundle.super.isa;
      v45 = 0xE000000000000000;
      v17 = 0x800000020CB990A0;
      v16 = 0xD000000000000011;
    }

    v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v18.value._object = 0xEB00000000656C62;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v20 = 0;
    v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v16, v18, v15, v19, *(&v45 - 1));

    v81.n128_u64[0] = v12;
    v81.n128_u64[1] = v14;
    v82 = 0uLL;
    v83 = v21;
    v84.n128_u16[0] = 0;
    v85._countAndFlagsBits = 0;
    v84.n128_u64[1] = 0;
    _s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVy07WorkoutB008GoalRingG0V_AA08ModifiedD0VyAH10MetricTextVAA12_FrameLayoutVGtGAN_GWOi0_(&v81);
    v78 = v87;
    v79 = v88;
    v80[0] = v89[0];
    *(v80 + 9) = *(v89 + 9);
    v74 = v83;
    v75 = v84;
    v76 = v85;
    v77 = v86;
    v72 = v81;
    v73 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD10MetricTextVAA12_FrameLayoutVGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD10MetricTextVAA12_FrameLayoutVGtGMR);
    _s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGACyxGAD0dE0AAWlTm_0(&lazy protocol witness table cache variable for type TupleView<(GoalRingView, ModifiedContent<MetricText, _FrameLayout>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD10MetricTextVAA12_FrameLayoutVGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD10MetricTextVAA12_FrameLayoutVGtGMR, MEMORY[0x277CE14C0]);
    lazy protocol witness table accessor for type MetricText and conformance MetricText();
    _ConditionalContent<>.init(storage:)();
  }

  v39 = v97;
  v40 = v49;
  v49[6] = v96;
  v40[7] = v39;
  v40[8] = v98[0];
  *(v40 + 137) = *(v98 + 9);
  v41 = v93;
  v40[2] = v92;
  v40[3] = v41;
  v42 = v95;
  v40[4] = v94;
  v40[5] = v42;
  result = v90;
  v44 = v91;
  *v40 = v90;
  v40[1] = v44;
  return result;
}

uint64_t outlined init with copy of MirrorIntervalTimeView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MirrorIntervalTimeView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of MirrorIntervalTimeView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MirrorIntervalTimeView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double partial apply for closure #1 in MirrorIntervalTimeView.body.getter@<D0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for MirrorIntervalTimeView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return closure #1 in MirrorIntervalTimeView.body.getter(v5, a2);
}

uint64_t partial apply for specialized closure #1 in TimelineView<>.init(_:content:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  return specialized closure #1 in TimelineView<>.init(_:content:)(a1, *(v2 + 16), a2);
}

{
  return specialized closure #1 in TimelineView<>.init(_:content:)(a1, *(v2 + 16), a2);
}

uint64_t _s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGACyxGAD0dE0AAWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4DateVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, ZStack<_ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MetricText, _FrameLayout>)>, MetricText>>> and conformance <> TimelineView<A, B>()
{
  result = lazy protocol witness table cache variable for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, ZStack<_ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MetricText, _FrameLayout>)>, MetricText>>> and conformance <> TimelineView<A, B>;
  if (!lazy protocol witness table cache variable for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, ZStack<_ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MetricText, _FrameLayout>)>, MetricText>>> and conformance <> TimelineView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI12TimelineViewVy07WorkoutB008PausableC8ScheduleVyAA08PeriodiccG0VGAA6ZStackVyAA19_ConditionalContentVyAA05TupleD0VyAD08GoalRingD0V_AA08ModifiedK0VyAD10MetricTextVAA12_FrameLayoutVGtGAUGGGMd, &_s7SwiftUI12TimelineViewVy07WorkoutB008PausableC8ScheduleVyAA08PeriodiccG0VGAA6ZStackVyAA19_ConditionalContentVyAA05TupleD0VyAD08GoalRingD0V_AA08ModifiedK0VyAD10MetricTextVAA12_FrameLayoutVGtGAUGGGMR);
    _s9WorkoutUI24PausableTimelineScheduleVy05SwiftB008PeriodicdE0VGACyxGAD0dE0AAWlTm_0(&lazy protocol witness table cache variable for type ZStack<_ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MetricText, _FrameLayout>)>, MetricText>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingG0V_AA08ModifiedE0VyAH10MetricTextVAA12_FrameLayoutVGtGANGGMd, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingG0V_AA08ModifiedE0VyAH10MetricTextVAA12_FrameLayoutVGtGANGGMR, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineView<PausableTimelineSchedule<PeriodicTimelineSchedule>, ZStack<_ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MetricText, _FrameLayout>)>, MetricText>>> and conformance <> TimelineView<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for MediaContentRow(uint64_t a1)
{
  result = type metadata singleton initialization cache for MediaContentRow;
  if (!type metadata singleton initialization cache for MediaContentRow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MediaContentRow(uint64_t a1)
{
  type metadata accessor for WorkoutMediaSuggestion();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ScaledMetric<Double>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ScaledMetric<Double>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ScaledMetric<Double>)
  {
    lazy protocol witness table accessor for type Double and conformance Double();
    v1 = type metadata accessor for ScaledMetric();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ScaledMetric<Double>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

double MediaContentRow.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyAGyAH07AppIconE0VAA023AccessibilityAttachmentO0VGGG_AGyAA6VStackVyAEyAA4TextV_AGyAzA022_EnvironmentKeyWritingO0VySiSgGGSgtGGAA05_FlexlM0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyAGyAH07AppIconE0VAA023AccessibilityAttachmentO0VGGG_AGyAA6VStackVyAEyAA4TextV_AGyAzA022_EnvironmentKeyWritingO0VySiSgGGSgtGGAA05_FlexlM0VGtGGMR);
  MEMORY[0x28223BE20](v8);
  v10 = v33 - v9;
  type metadata accessor for MediaContentRow(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVySdGMd, &_s7SwiftUI12ScaledMetricVySdGMR);
  ScaledMetric.wrappedValue.getter();
  v11 = v33[1];
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = v11;
  v10[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKy07WorkoutB0022MediaSuggestionArtworkD0VAA06_FrameG0VGAA16_OverlayModifierVyAKyAL07AppIconD0VAA023AccessibilityAttachmentQ0VGGG_AKyAA6VStackVyAIyAA4TextV_AKyA2_AA022_EnvironmentKeyWritingQ0VySiSgGGSgtGGAA05_FlexoG0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKy07WorkoutB0022MediaSuggestionArtworkD0VAA06_FrameG0VGAA16_OverlayModifierVyAKyAL07AppIconD0VAA023AccessibilityAttachmentQ0VGGG_AKyAA6VStackVyAIyAA4TextV_AKyA2_AA022_EnvironmentKeyWritingQ0VySiSgGGSgtGGAA05_FlexoG0VGtGGMR);
  closure #1 in MediaContentRow.body.getter(v2, &v10[*(v12 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyAGyAH07AppIconE0VAA023AccessibilityAttachmentO0VGGG_AGyAA6VStackVyAEyAA4TextV_AGyAzA022_EnvironmentKeyWritingO0VySiSgGGSgtGGAA05_FlexlM0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyAGyAH07AppIconE0VAA023AccessibilityAttachmentO0VGGG_AGyAA6VStackVyAEyAA4TextV_AGyAzA022_EnvironmentKeyWritingO0VySiSgGGSgtGGAA05_FlexlM0VGtGGMR, MEMORY[0x277CE1138]);
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v7, v4);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>>(v10, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyAGyAH07AppIconE0VAA023AccessibilityAttachmentO0VGGG_AGyAA6VStackVyAEyAA4TextV_AGyAzA022_EnvironmentKeyWritingO0VySiSgGGSgtGGAA05_FlexlM0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyAGyAH07AppIconE0VAA023AccessibilityAttachmentO0VGGG_AGyAA6VStackVyAEyAA4TextV_AGyAzA022_EnvironmentKeyWritingO0VySiSgGGSgtGGAA05_FlexlM0VGtGGMR);
  LOBYTE(v11) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyACyAN07AppIconE0VAA0i10AttachmentU0VGGG_ACyAA6VStackVyAMyAA4TextV_ACyA4_AA022_EnvironmentKeyWritingU0VySiSgGGSgtGGAA05_FlexrS0VGtGG_Qo_AA08_PaddingS0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyACyAN07AppIconE0VAA0i10AttachmentU0VGGG_ACyAA6VStackVyAMyAA4TextV_ACyA4_AA022_EnvironmentKeyWritingU0VySiSgGGSgtGGAA05_FlexrS0VGtGG_Qo_AA08_PaddingS0VGMR) + 36);
  *v21 = v11;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  LOBYTE(v11) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyACyAN07AppIconE0VAA0i10AttachmentU0VGGG_ACyAA6VStackVyAMyAA4TextV_ACyA4_AA022_EnvironmentKeyWritingU0VySiSgGGSgtGGAA05_FlexrS0VGtGG_Qo_AA08_PaddingS0VGA20_GMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyACyAN07AppIconE0VAA0i10AttachmentU0VGGG_ACyAA6VStackVyAMyAA4TextV_ACyA4_AA022_EnvironmentKeyWritingU0VySiSgGGSgtGGAA05_FlexrS0VGtGG_Qo_AA08_PaddingS0VGA20_GMR) + 36);
  *v30 = v11;
  *(v30 + 8) = v23;
  *(v30 + 16) = v25;
  *(v30 + 24) = v27;
  *(v30 + 32) = v29;
  *(v30 + 40) = 0;
  v31 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyACyAN07AppIconE0VAA0i10AttachmentU0VGGG_ACyAA6VStackVyAMyAA4TextV_ACyA4_AA022_EnvironmentKeyWritingU0VySiSgGGSgtGGAA05_FlexrS0VGtGG_Qo_AA08_PaddingS0VGA20_GAA013_TraitWritingU0VyAA21ListRowInsetsTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyACyAN07AppIconE0VAA0i10AttachmentU0VGGG_ACyAA6VStackVyAMyAA4TextV_ACyA4_AA022_EnvironmentKeyWritingU0VySiSgGGSgtGGAA05_FlexrS0VGtGG_Qo_AA08_PaddingS0VGA20_GAA013_TraitWritingU0VyAA21ListRowInsetsTraitKeyVGGMR) + 36);
  *(v31 + 32) = 0;
  result = 0.0;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  return result;
}

uint64_t closure #1 in MediaContentRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for WorkoutMediaSuggestion();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB026MediaSuggestionArtworkViewVAA12_FrameLayoutVGAA16_OverlayModifierVyACyAD07AppIconI0VAA023AccessibilityAttachmentM0VGGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB026MediaSuggestionArtworkViewVAA12_FrameLayoutVGAA16_OverlayModifierVyACyAD07AppIconI0VAA023AccessibilityAttachmentM0VGGGMR);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v45 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v41 - v12;
  (*(v4 + 16))(v6, a1, v3, v11);
  v44 = WorkoutMediaSuggestion.artwork.getter();
  v14 = WorkoutMediaSuggestion.bundleID.getter();
  v42 = v15;
  v43 = v14;
  (*(v4 + 8))(v6, v3);
  type metadata accessor for MediaContentRow(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVySdGMd, &_s7SwiftUI12ScaledMetricVySdGMR);
  ScaledMetric.wrappedValue.getter();
  v41[1] = a1;
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v16 = static Alignment.bottomTrailing.getter();
  v41[0] = v17;
  v18 = &v13[*(v8 + 44)];
  v19 = WorkoutMediaSuggestion.msSuggestion.getter();
  v20 = MSSuggestion.effectiveAppIconBundleID.getter();
  v22 = v21;

  *&v47 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd, &_sSo7UIImageCSgMR);
  State.init(wrappedValue:)();
  v23 = v49;
  *&v49 = v20;
  *(&v49 + 1) = v22;
  *v50 = v23;
  lazy protocol witness table accessor for type AppIconView and conformance AppIconView();
  View.accessibilitySortPriority(_:)();

  v24 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy07WorkoutB011AppIconViewVAA023AccessibilityAttachmentD0VGGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy07WorkoutB011AppIconViewVAA023AccessibilityAttachmentD0VGGMR) + 36)];
  v25 = v41[0];
  *v24 = v16;
  v24[1] = v25;
  v26 = v43;
  *v13 = v44;
  *(v13 + 1) = v26;
  *(v13 + 2) = v42;
  v27 = *&v61[31];
  *(v13 + 56) = *&v61[33];
  v28 = *&v61[29];
  *(v13 + 40) = v27;
  *(v13 + 24) = v28;
  v29 = static HorizontalAlignment.leading.getter();
  v60 = 1;
  closure #2 in closure #1 in MediaContentRow.body.getter(&v49);
  v64 = *&v50[16];
  v65 = *&v50[32];
  v66 = *&v50[48];
  v67 = v50[64];
  v62 = v49;
  v63 = *v50;
  v69 = v50[64];
  v68[2] = *&v50[16];
  v68[3] = *&v50[32];
  v68[4] = *&v50[48];
  v68[0] = v49;
  v68[1] = *v50;
  outlined init with copy of TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>(&v62, &v47, &_s7SwiftUI9TupleViewVyAA4TextV_AA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVySiSgGGSgtGMd, &_s7SwiftUI9TupleViewVyAA4TextV_AA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVySiSgGGSgtGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>>(v68, &_s7SwiftUI9TupleViewVyAA4TextV_AA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVySiSgGGSgtGMd, &_s7SwiftUI9TupleViewVyAA4TextV_AA15ModifiedContentVyAeA30_EnvironmentKeyWritingModifierVySiSgGGSgtGMR);
  *&v59[39] = v64;
  *&v59[55] = v65;
  *&v59[71] = v66;
  v59[87] = v67;
  *&v59[7] = v62;
  *&v59[23] = v63;
  LOBYTE(v3) = v60;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v61[6] + 7) = *&v61[21];
  *(&v61[8] + 7) = *&v61[23];
  *(&v61[10] + 7) = *&v61[25];
  *(&v61[12] + 7) = *&v61[27];
  *(v61 + 7) = *&v61[15];
  *(&v61[2] + 7) = *&v61[17];
  *(&v61[4] + 7) = *&v61[19];
  v30 = v45;
  outlined init with copy of TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>(v13, v45, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB026MediaSuggestionArtworkViewVAA12_FrameLayoutVGAA16_OverlayModifierVyACyAD07AppIconI0VAA023AccessibilityAttachmentM0VGGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB026MediaSuggestionArtworkViewVAA12_FrameLayoutVGAA16_OverlayModifierVyACyAD07AppIconI0VAA023AccessibilityAttachmentM0VGGGMR);
  v31 = v46;
  outlined init with copy of TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>(v30, v46, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB026MediaSuggestionArtworkViewVAA12_FrameLayoutVGAA16_OverlayModifierVyACyAD07AppIconI0VAA023AccessibilityAttachmentM0VGGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB026MediaSuggestionArtworkViewVAA12_FrameLayoutVGAA16_OverlayModifierVyACyAD07AppIconI0VAA023AccessibilityAttachmentM0VGGGMR);
  v32 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB026MediaSuggestionArtworkViewVAA12_FrameLayoutVGAA16_OverlayModifierVyACyAD07AppIconI0VAA023AccessibilityAttachmentM0VGGG_ACyAA6VStackVyAA05TupleI0VyAA4TextV_ACyAxA022_EnvironmentKeyWritingM0VySiSgGGSgtGGAA05_FlexjK0VGtMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB026MediaSuggestionArtworkViewVAA12_FrameLayoutVGAA16_OverlayModifierVyACyAD07AppIconI0VAA023AccessibilityAttachmentM0VGGG_ACyAA6VStackVyAA05TupleI0VyAA4TextV_ACyAxA022_EnvironmentKeyWritingM0VySiSgGGSgtGGAA05_FlexjK0VGtMR) + 48));
  v47 = v29;
  LOBYTE(v48[0]) = v3;
  *(&v48[2] + 1) = *&v59[32];
  *(&v48[3] + 1) = *&v59[48];
  *(&v48[4] + 1) = *&v59[64];
  *(&v48[5] + 1) = *&v59[80];
  *(&v48[1] + 1) = *&v59[16];
  *(v48 + 1) = *v59;
  *(&v48[8] + 9) = *&v61[6];
  *(&v48[7] + 9) = *&v61[4];
  *(&v48[6] + 9) = *&v61[2];
  *(&v48[5] + 9) = *v61;
  *(&v48[12] + 1) = *(&v61[13] + 7);
  *(&v48[11] + 9) = *&v61[12];
  *(&v48[10] + 9) = *&v61[10];
  *(&v48[9] + 9) = *&v61[8];
  outlined init with copy of TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>(&v47, &v49, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_ACyAiA30_EnvironmentKeyWritingModifierVySiSgGGSgtGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_ACyAiA30_EnvironmentKeyWritingModifierVySiSgGGSgtGGAA16_FlexFrameLayoutVGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>>(v13, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB026MediaSuggestionArtworkViewVAA12_FrameLayoutVGAA16_OverlayModifierVyACyAD07AppIconI0VAA023AccessibilityAttachmentM0VGGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB026MediaSuggestionArtworkViewVAA12_FrameLayoutVGAA16_OverlayModifierVyACyAD07AppIconI0VAA023AccessibilityAttachmentM0VGGGMR);
  v33 = v48[10];
  v32[10] = v48[9];
  v32[11] = v33;
  v34 = v48[12];
  v32[12] = v48[11];
  v32[13] = v34;
  v35 = v48[6];
  v32[6] = v48[5];
  v32[7] = v35;
  v36 = v48[8];
  v32[8] = v48[7];
  v32[9] = v36;
  v37 = v48[2];
  v32[2] = v48[1];
  v32[3] = v37;
  v38 = v48[4];
  v32[4] = v48[3];
  v32[5] = v38;
  v39 = v48[0];
  *v32 = v47;
  v32[1] = v39;
  v49 = v29;
  v50[0] = v3;
  *&v50[33] = *&v59[32];
  *&v50[49] = *&v59[48];
  *&v50[65] = *&v59[64];
  v51 = *&v59[80];
  *&v50[1] = *v59;
  *&v50[17] = *&v59[16];
  v55 = *&v61[6];
  v54 = *&v61[4];
  v53 = *&v61[2];
  v52 = *v61;
  *&v58[15] = *(&v61[13] + 7);
  *v58 = *&v61[12];
  v57 = *&v61[10];
  v56 = *&v61[8];
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>>(&v49, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_ACyAiA30_EnvironmentKeyWritingModifierVySiSgGGSgtGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_ACyAiA30_EnvironmentKeyWritingModifierVySiSgGGSgtGGAA16_FlexFrameLayoutVGMR);
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>>(v30, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB026MediaSuggestionArtworkViewVAA12_FrameLayoutVGAA16_OverlayModifierVyACyAD07AppIconI0VAA023AccessibilityAttachmentM0VGGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB026MediaSuggestionArtworkViewVAA12_FrameLayoutVGAA16_OverlayModifierVyACyAD07AppIconI0VAA023AccessibilityAttachmentM0VGGGMR);
}

double closure #2 in closure #1 in MediaContentRow.body.getter@<D0>(uint64_t a1@<X8>)
{
  WorkoutMediaSuggestion.title.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v1 = Text.init<A>(_:)();
  v3 = v2;
  v5 = v4;
  static Font.body.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v6 = Text.font(_:)();
  v8 = v7;
  v10 = v9;

  outlined consume of Text.Storage(v1, v3, v5 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v11 = Text.foregroundStyle<A>(_:)();
  v13 = v12;
  v42 = v14;
  v16 = v15;
  outlined consume of Text.Storage(v6, v8, v10 & 1);

  WorkoutMediaSuggestion.detail.getter();
  if (v17)
  {
    v18 = Text.init<A>(_:)();
    v20 = v19;
    v22 = v21;
    static Font.body.getter();
    static Font.Weight.regular.getter();
    Font.weight(_:)();

    v23 = Text.font(_:)();
    v40 = v11;
    v41 = v16;
    v25 = v24;
    v27 = v26;

    outlined consume of Text.Storage(v18, v20, v22 & 1);

    static HierarchicalShapeStyle.secondary.getter();
    v28 = Text.foregroundStyle<A>(_:)();
    v30 = v29;
    LOBYTE(v18) = v31;
    v33 = v32;
    v34 = v27 & 1;
    v35 = v25;
    v11 = v40;
    v16 = v41;
    outlined consume of Text.Storage(v23, v35, v34);

    KeyPath = swift_getKeyPath();
    v37 = v18 & 1;
    outlined copy of Text.Storage(v28, v30, v18 & 1);

    v38 = 1;
  }

  else
  {
    v28 = 0;
    v30 = 0;
    v37 = 0;
    v33 = 0;
    KeyPath = 0;
    v38 = 0;
  }

  outlined copy of Text.Storage(v11, v13, v42 & 1);

  outlined copy of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?(v28, v30, v37, v33, KeyPath);
  outlined consume of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?(v28, v30, v37, v33, KeyPath);
  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v42 & 1;
  *(a1 + 24) = v16;
  *(a1 + 32) = v28;
  *(a1 + 40) = v30;
  *(a1 + 48) = v37;
  *(a1 + 56) = v33;
  *(a1 + 64) = KeyPath;
  *(a1 + 72) = v38;
  *(a1 + 80) = 0;
  outlined consume of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?(v28, v30, v37, v33, KeyPath);
  outlined consume of Text.Storage(v11, v13, v42 & 1);

  return result;
}

unint64_t lazy protocol witness table accessor for type AppIconView and conformance AppIconView()
{
  result = lazy protocol witness table cache variable for type AppIconView and conformance AppIconView;
  if (!lazy protocol witness table cache variable for type AppIconView and conformance AppIconView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppIconView and conformance AppIconView);
  }

  return result;
}

uint64_t outlined init with copy of TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double outlined copy of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

double outlined consume of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

double MediaSuggestionArtworkView.body.getter@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for RoundedRectangle();
  MEMORY[0x28223BE20](v8);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v30[-v12];
  closure #1 in MediaSuggestionArtworkView.body.getter(a1, a2, a3, v34);
  v14 = v34[0];
  v15 = v34[1];
  v31 = v35;
  LOBYTE(a2) = v36;
  v16 = static Alignment.center.getter();
  v32 = v17;
  v33 = v16;
  static Color.black.getter();
  v18 = Color.opacity(_:)();

  v37 = a2;
  v19 = *(v8 + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = type metadata accessor for RoundedCornerStyle();
  (*(*(v21 - 8) + 104))(&v13[v19], v20, v21);
  __asm { FMOV            V0.2D, #3.0 }

  *v13 = _Q0;
  outlined init with copy of RoundedRectangle(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA18_AspectRatioLayoutVG07WorkoutB018ArtworkPlaceholderVGGAA11_ClipEffectVyAA22ContainerRelativeShapeVGGAA19_BackgroundModifierVyAA11_ShadowViewVyAUGGGAA01_p18RoundedRectangularrT0VyAA0W9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA18_AspectRatioLayoutVG07WorkoutB018ArtworkPlaceholderVGGAA11_ClipEffectVyAA22ContainerRelativeShapeVGGAA19_BackgroundModifierVyAA11_ShadowViewVyAUGGGAA01_p18RoundedRectangularrT0VyAA0W9RectangleVGGMR);
  lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x277CDFC08], MEMORY[0x277CDFBD8]);
  _ContainerRoundedRectangularShapeModifier.init(shape:)();
  outlined destroy of RoundedRectangle(v13);
  *a4 = v14;
  *(a4 + 8) = v15;
  *(a4 + 16) = v31;
  *(a4 + 18) = a2;
  *(a4 + 19) = 256;
  *(a4 + 21) = v34[0];
  *(a4 + 23) = BYTE2(v34[0]);
  *(a4 + 24) = v18;
  result = 6.0;
  *(a4 + 32) = xmmword_20CB70CE0;
  v28 = v32;
  v29 = v33;
  *(a4 + 48) = 0x4000000000000000;
  *(a4 + 56) = v29;
  *(a4 + 64) = v28;
  return result;
}

double closure #1 in MediaSuggestionArtworkView.body.getter@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Image.ResizingMode();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
    Image.init(uiImage:)();
    (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
    v13 = Image.resizable(capInsets:resizingMode:)();

    (*(v9 + 8))(v11, v8);
    v25 = v13;
    v26 = 0;
    v27 = 1;
    v28 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ArtworkPlaceholder and conformance ArtworkPlaceholder();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v14 = 0x636973756DLL;
    if (static MediaPlaybackConstants.platformSpecificMusicBundleID.getter() == a2 && v15 == a3)
    {

      v16 = 0xE500000000000000;
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        v16 = 0xE500000000000000;
      }

      else if (static MediaPlaybackConstants.podcastsBundleID.getter() == a2 && v18 == a3)
      {

        v16 = 0xE800000000000000;
        v14 = 0x7374736163646F70;
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          v14 = 0x7374736163646F70;
          v16 = 0xE800000000000000;
        }

        else
        {
          v16 = 0xE500000000000000;
        }
      }
    }

    v20 = swift_allocObject();
    *(v20 + 16) = v14;
    *(v20 + 24) = v16;
    v25 = partial apply for specialized closure #1 in ArtworkPlaceholder.init(bundleId:);
    v26 = v20;
    v27 = 0;
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ArtworkPlaceholder and conformance ArtworkPlaceholder();
    _ConditionalContent<>.init(storage:)();
  }

  result = *&v29;
  v22 = v30;
  v23 = v31;
  *a4 = v29;
  *(a4 + 16) = v22;
  *(a4 + 18) = v23;
  return result;
}

uint64_t specialized closure #1 in ArtworkPlaceholder.init(bundleId:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  Image.init(_internalSystemName:)();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  return v6;
}

double ArtworkPlaceholder.body.getter@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1();
  static UnitPoint.center.getter();
  v5 = v4;
  v7 = v6;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v8 = static HierarchicalShapeStyle.tertiary.getter();
  v9 = static HierarchicalShapeStyle.secondary.getter();
  v10 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __asm { FMOV            V0.2D, #0.5 }

  *(a2 + 24) = _Q0;
  *(a2 + 40) = v5;
  *(a2 + 48) = v7;
  *(a2 + 104) = v21;
  *(a2 + 120) = v22;
  *(a2 + 136) = v23;
  *(a2 + 152) = v24;
  result = *&v18;
  *(a2 + 56) = v18;
  *(a2 + 72) = v19;
  *(a2 + 88) = v20;
  *(a2 + 168) = v8;
  *(a2 + 172) = 256;
  *(a2 + 176) = v9;
  *(a2 + 184) = KeyPath;
  *(a2 + 192) = v10;
  return result;
}

uint64_t AppIconView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingI0VGAA023AccessibilityAttachmentL0VGSgGMd, &_s7SwiftUI5GroupVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingI0VGAA023AccessibilityAttachmentL0VGSgGMR);
  MEMORY[0x28223BE20](v10 - 8);
  v34 = &v30 - v11;
  closure #1 in AppIconView.body.getter(a1, a2, a3, a4, &v30 - v11);
  type metadata accessor for MainActor();

  v12 = a3;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;
  v16 = type metadata accessor for TaskPriority();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v30 - v19;
  static TaskPriority.userInitiated.getter();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v32 = type metadata accessor for _TaskModifier2();
    v33 = &v30;
    v31 = *(v32 - 8);
    MEMORY[0x28223BE20](v32);
    v30 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v36 = 0xD00000000000002CLL;
    v37 = 0x800000020CB990C0;
    v35 = 153;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F30BC00](v22);

    v24 = MEMORY[0x28223BE20](v23);
    (*(v17 + 16))(&v30 - v19, &v30 - v19, v16, v24);
    v25 = v30;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v17 + 8))(v20, v16);
    outlined init with take of Group<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier>?>(v34, a5, &_s7SwiftUI5GroupVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingI0VGAA023AccessibilityAttachmentL0VGSgGMd, &_s7SwiftUI5GroupVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingI0VGAA023AccessibilityAttachmentL0VGSgGMR);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingI0VGAA023AccessibilityAttachmentL0VGSgGAA14_TaskModifier2VGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingI0VGAA023AccessibilityAttachmentL0VGSgGAA14_TaskModifier2VGMR);
    return (*(v31 + 32))(a5 + *(v26 + 36), v25, v32);
  }

  else
  {
    v28 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingI0VGAA023AccessibilityAttachmentL0VGSgGAA05_TaskL0VGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingI0VGAA023AccessibilityAttachmentL0VGSgGAA05_TaskL0VGMR) + 36));
    v29 = type metadata accessor for _TaskModifier();
    (*(v17 + 32))(&v28[*(v29 + 20)], &v30 - v19, v16);
    *v28 = &async function pointer to partial apply for closure #2 in AppIconView.body.getter;
    *(v28 + 1) = v14;
    return outlined init with take of Group<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier>?>(v34, a5, &_s7SwiftUI5GroupVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingI0VGAA023AccessibilityAttachmentL0VGSgGMd, &_s7SwiftUI5GroupVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingI0VGAA023AccessibilityAttachmentL0VGSgGMR);
  }
}

uint64_t closure #1 in AppIconView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a1;
  v43 = a2;
  v8 = type metadata accessor for Image.ResizingMode();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingH0VGAA023AccessibilityAttachmentK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingH0VGAA023AccessibilityAttachmentK0VGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  *&v48 = a3;
  *(&v48 + 1) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo7UIImageCSgGMd, &_s7SwiftUI5StateVySo7UIImageCSgGMR);
  State.wrappedValue.getter();
  if (!*&v46[0])
  {
    return (*(v13 + 56))(a5, 1, 1, v12);
  }

  v40 = v12;
  v41 = a5;
  v39 = *&v46[0];
  Image.init(uiImage:)();
  (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
  v16 = Image.resizable(capInsets:resizingMode:)();

  (*(v9 + 8))(v11, v8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v48) = 1;
  *&v56[6] = v58;
  *&v56[22] = v59;
  *&v56[38] = v60;
  v17 = static Alignment.center.getter();
  v19 = v18;
  static Color.black.getter();
  v20 = Color.opacity(_:)();

  v21 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v57 = 0;
  v48 = v16;
  LOWORD(v49[0]) = 1;
  *(v49 + 2) = *v56;
  *(&v49[1] + 2) = *&v56[16];
  *(&v49[2] + 2) = *&v56[32];
  *&v49[3] = *&v56[46];
  *(&v49[3] + 1) = v20;
  v50 = xmmword_20CB70CF0;
  *&v51 = 0x3FF0000000000000;
  *(&v51 + 1) = v17;
  *&v52 = v19;
  BYTE8(v52) = v21;
  *&v53 = v22;
  *(&v53 + 1) = v23;
  *&v54 = v24;
  *(&v54 + 1) = v25;
  v55 = 0;
  v26 = MEMORY[0x20F30BAD0](v42, v43);
  v27 = MEMORY[0x20F30CEC0]();

  if (v27)
  {
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v27 = WorkoutUIBundle.super.isa;
    v61._object = 0xE000000000000000;
    v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v31.value._object = 0xEB00000000656C62;
    v32._object = 0x800000020CB990F0;
    v32._countAndFlagsBits = 0xD000000000000020;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v61._countAndFlagsBits = 0;
    v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v31, v27, v33, v61);
    object = v34._object;
    countAndFlagsBits = v34._countAndFlagsBits;
  }

  v35 = countAndFlagsBits;
  v36 = object;

  v44 = v35;
  v45 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingH0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  v46[8] = v53;
  v46[9] = v54;
  v47 = v55;
  v46[4] = v49[3];
  v46[5] = v50;
  v46[6] = v51;
  v46[7] = v52;
  v46[0] = v48;
  v46[1] = v49[0];
  v46[2] = v49[1];
  v46[3] = v49[2];
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>>(v46, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingH0VGMR);
  v37 = v41;
  outlined init with take of Group<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier>?>(v15, v41, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingH0VGAA023AccessibilityAttachmentK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingH0VGAA023AccessibilityAttachmentK0VGMR);
  return (*(v13 + 56))(v37, 0, 1, v40);
}

uint64_t closure #2 in AppIconView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v7 = type metadata accessor for Logger();
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[29] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[30] = v9;
  v6[31] = v8;

  return MEMORY[0x2822009F8](closure #2 in AppIconView.body.getter, v9, v8);
}

uint64_t closure #2 in AppIconView.body.getter()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v4 = MEMORY[0x20F30BAD0](v2, v1);
  v5 = [v3 initWithBundleIdentifier_];
  v0[32] = v5;

  v6 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:0.0 scale:{0.0, 0.0}];
  v0[33] = v6;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = closure #2 in AppIconView.body.getter;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7IFImageCSgs5NeverOGMd, &_sSccySo7IFImageCSgs5NeverOGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IFImage?) -> () with result type IFImage?;
  v0[13] = &block_descriptor_16;
  v0[14] = v7;
  [v5 getImageForImageDescriptor:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);

  return MEMORY[0x2822009F8](closure #2 in AppIconView.body.getter, v2, v1);
}

{
  v30 = v0;

  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [*(v0 + 160) CGImage];
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + 256);
      v5 = *(v0 + 264);
      v7 = *(v0 + 192);
      v6 = *(v0 + 200);
      v8 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v2 scale:0 orientation:0.0];
      *(v0 + 144) = v7;
      *(v0 + 152) = v6;
      *(v0 + 168) = v8;

      v9 = v8;
      v10 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo7UIImageCSgGMd, &_s7SwiftUI5StateVySo7UIImageCSgGMR);
      State.wrappedValue.setter();

      goto LABEL_8;
    }
  }

  v11 = *(v0 + 192);
  static WOLog.mediaPlayback.getter();

  v12 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 256);
  v17 = *(v0 + 264);
  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  v20 = *(v0 + 208);
  if (v15)
  {
    v27 = *(v0 + 208);
    v28 = *(v0 + 224);
    v22 = *(v0 + 176);
    v21 = *(v0 + 184);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v29);
    _os_log_impl(&dword_20C66F000, v13, v14, "Failed to retrieve app icon for bundle ID: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x20F30E080](v24, -1, -1);
    MEMORY[0x20F30E080](v23, -1, -1);

    (*(v19 + 8))(v28, v27);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
  }

LABEL_8:

  v25 = *(v0 + 8);

  return v25();
}

uint64_t getEnumTagSinglePayload for AppIconView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for AppIconView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaSuggestionArtworkView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaSuggestionArtworkView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyACyAN07AppIconE0VAA0i10AttachmentU0VGGG_ACyAA6VStackVyAMyAA4TextV_ACyA4_AA022_EnvironmentKeyWritingU0VySiSgGGSgtGGAA05_FlexrS0VGtGG_Qo_AA08_PaddingS0VGA20_GAA013_TraitWritingU0VyAA21ListRowInsetsTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyACyAN07AppIconE0VAA0i10AttachmentU0VGGG_ACyAA6VStackVyAMyAA4TextV_ACyA4_AA022_EnvironmentKeyWritingU0VySiSgGGSgtGGAA05_FlexrS0VGtGG_Qo_AA08_PaddingS0VGA20_GAA013_TraitWritingU0VyAA21ListRowInsetsTraitKeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyACyAN07AppIconE0VAA0i10AttachmentU0VGGG_ACyAA6VStackVyAMyAA4TextV_ACyA4_AA022_EnvironmentKeyWritingU0VySiSgGGSgtGGAA05_FlexrS0VGtGG_Qo_AA08_PaddingS0VGA20_GMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyACyAN07AppIconE0VAA0i10AttachmentU0VGGG_ACyAA6VStackVyAMyAA4TextV_ACyA4_AA022_EnvironmentKeyWritingU0VySiSgGGSgtGGAA05_FlexrS0VGtGG_Qo_AA08_PaddingS0VGA20_GMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #2 in AppIconView.body.getter()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #2 in AppIconView.body.getter;

  return closure #2 in AppIconView.body.getter(v2, v3, v4, v5, v7, v6);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShadowView<Circle>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGMR, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of Group<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier>?>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of RoundedRectangle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ArtworkPlaceholder and conformance ArtworkPlaceholder()
{
  result = lazy protocol witness table cache variable for type ArtworkPlaceholder and conformance ArtworkPlaceholder;
  if (!lazy protocol witness table cache variable for type ArtworkPlaceholder and conformance ArtworkPlaceholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkPlaceholder and conformance ArtworkPlaceholder);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkPlaceholder(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ArtworkPlaceholder(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingH0VGAA023AccessibilityAttachmentK0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingH0VGAA023AccessibilityAttachmentK0VGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingH0VGAA023AccessibilityAttachmentK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingH0VGAA023AccessibilityAttachmentK0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder>>, _ClipEffect<ContainerRelativeShape>>, _BackgroundModifier<_ShadowView<ContainerRelativeShape>>>, _ContainerRoundedRectangularShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder>>, _ClipEffect<ContainerRelativeShape>>, _BackgroundModifier<_ShadowView<ContainerRelativeShape>>>, _ContainerRoundedRectangularShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder>>, _ClipEffect<ContainerRelativeShape>>, _BackgroundModifier<_ShadowView<ContainerRelativeShape>>>, _ContainerRoundedRectangularShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA18_AspectRatioLayoutVG07WorkoutB018ArtworkPlaceholderVGGAA11_ClipEffectVyAA22ContainerRelativeShapeVGGAA19_BackgroundModifierVyAA11_ShadowViewVyAUGGGAA01_p18RoundedRectangularrT0VyAA0W9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA18_AspectRatioLayoutVG07WorkoutB018ArtworkPlaceholderVGGAA11_ClipEffectVyAA22ContainerRelativeShapeVGGAA19_BackgroundModifierVyAA11_ShadowViewVyAUGGGAA01_p18RoundedRectangularrT0VyAA0W9RectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder>>, _ClipEffect<ContainerRelativeShape>>, _BackgroundModifier<_ShadowView<ContainerRelativeShape>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ContainerRoundedRectangularShapeModifier<RoundedRectangle> and conformance _ContainerRoundedRectangularShapeModifier<A>, &_s7SwiftUI41_ContainerRoundedRectangularShapeModifierVyAA0D9RectangleVGMd, &_s7SwiftUI41_ContainerRoundedRectangularShapeModifierVyAA0D9RectangleVGMR, MEMORY[0x277CE08C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder>>, _ClipEffect<ContainerRelativeShape>>, _BackgroundModifier<_ShadowView<ContainerRelativeShape>>>, _ContainerRoundedRectangularShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder>>, _ClipEffect<ContainerRelativeShape>>, _BackgroundModifier<_ShadowView<ContainerRelativeShape>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder>>, _ClipEffect<ContainerRelativeShape>>, _BackgroundModifier<_ShadowView<ContainerRelativeShape>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder>>, _ClipEffect<ContainerRelativeShape>>, _BackgroundModifier<_ShadowView<ContainerRelativeShape>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA18_AspectRatioLayoutVG07WorkoutB018ArtworkPlaceholderVGGAA11_ClipEffectVyAA22ContainerRelativeShapeVGGAA19_BackgroundModifierVyAA11_ShadowViewVyAUGGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA18_AspectRatioLayoutVG07WorkoutB018ArtworkPlaceholderVGGAA11_ClipEffectVyAA22ContainerRelativeShapeVGGAA19_BackgroundModifierVyAA11_ShadowViewVyAUGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder>>, _ClipEffect<ContainerRelativeShape>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShadowView<ContainerRelativeShape>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA11_ShadowViewVyAA22ContainerRelativeShapeVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA11_ShadowViewVyAA22ContainerRelativeShapeVGGMR, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder>>, _ClipEffect<ContainerRelativeShape>>, _BackgroundModifier<_ShadowView<ContainerRelativeShape>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder>>, _ClipEffect<ContainerRelativeShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder>>, _ClipEffect<ContainerRelativeShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder>>, _ClipEffect<ContainerRelativeShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA18_AspectRatioLayoutVG07WorkoutB018ArtworkPlaceholderVGGAA11_ClipEffectVyAA22ContainerRelativeShapeVGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA18_AspectRatioLayoutVG07WorkoutB018ArtworkPlaceholderVGGAA11_ClipEffectVyAA22ContainerRelativeShapeVGGMR);
    lazy protocol witness table accessor for type Group<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier>?> and conformance <A> Group<A>(&lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder>> and conformance <A> Group<A>, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA5ImageVAA18_AspectRatioLayoutVG07WorkoutB018ArtworkPlaceholderVGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA5ImageVAA18_AspectRatioLayoutVG07WorkoutB018ArtworkPlaceholderVGGMR, lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder> and conformance <> _ConditionalContent<A, B>);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ClipEffect<ContainerRelativeShape> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA22ContainerRelativeShapeVGMd, &_s7SwiftUI11_ClipEffectVyAA22ContainerRelativeShapeVGMR, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder>>, _ClipEffect<ContainerRelativeShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Group<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier>?> and conformance <A> Group<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA18_AspectRatioLayoutVG07WorkoutB018ArtworkPlaceholderVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA18_AspectRatioLayoutVG07WorkoutB018ArtworkPlaceholderVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ArtworkPlaceholder and conformance ArtworkPlaceholder();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _AspectRatioLayout>, ArtworkPlaceholder> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<HierarchicalShapeStyle, ContainerRelativeShape>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<HierarchicalShapeStyle, ContainerRelativeShape>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<HierarchicalShapeStyle, ContainerRelativeShape>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA12_ScaleEffectVGAA010_FlexFrameH0VGAA34_InsettableBackgroundShapeModifierVyAA012HierarchicalO5StyleVAA017ContainerRelativeO0VGGAA011_ForegroundrP0VyARGGAA022_EnvironmentKeyWritingP0VyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA12_ScaleEffectVGAA010_FlexFrameH0VGAA34_InsettableBackgroundShapeModifierVyAA012HierarchicalO5StyleVAA017ContainerRelativeO0VGGAA011_ForegroundrP0VyARGGAA022_EnvironmentKeyWritingP0VyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<HierarchicalShapeStyle, ContainerRelativeShape>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<HierarchicalShapeStyle, ContainerRelativeShape>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<HierarchicalShapeStyle, ContainerRelativeShape>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<HierarchicalShapeStyle, ContainerRelativeShape>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<HierarchicalShapeStyle, ContainerRelativeShape>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA12_ScaleEffectVGAA010_FlexFrameH0VGAA34_InsettableBackgroundShapeModifierVyAA012HierarchicalO5StyleVAA017ContainerRelativeO0VGGAA011_ForegroundrP0VyARGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA12_ScaleEffectVGAA010_FlexFrameH0VGAA34_InsettableBackgroundShapeModifierVyAA012HierarchicalO5StyleVAA017ContainerRelativeO0VGGAA011_ForegroundrP0VyARGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<HierarchicalShapeStyle, ContainerRelativeShape>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<HierarchicalShapeStyle, ContainerRelativeShape>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<HierarchicalShapeStyle, ContainerRelativeShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<HierarchicalShapeStyle, ContainerRelativeShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<HierarchicalShapeStyle, ContainerRelativeShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA12_ScaleEffectVGAA010_FlexFrameH0VGAA34_InsettableBackgroundShapeModifierVyAA012HierarchicalO5StyleVAA017ContainerRelativeO0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA12_ScaleEffectVGAA010_FlexFrameH0VGAA34_InsettableBackgroundShapeModifierVyAA012HierarchicalO5StyleVAA017ContainerRelativeO0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<HierarchicalShapeStyle, ContainerRelativeShape> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA012HierarchicalE5StyleVAA017ContainerRelativeE0VGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA012HierarchicalE5StyleVAA017ContainerRelativeE0VGMR, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<HierarchicalShapeStyle, ContainerRelativeShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA12_ScaleEffectVGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA12_ScaleEffectVGAA010_FlexFrameH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA12_ScaleEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirrorIntervalsPlatterView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for MirrorIntervalsPlatterView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MirrorIntervalsPlatterView.shouldShowDistanceMetrics.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 48);
  if ([v7 effectiveTypeIdentifier] == 13)
  {
    if ([v7 isIndoor])
    {
      return WorkoutStatePublisher.hasSpeedSensorEverBeenConnected.getter() & 1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    static WOLog.app.getter();
    outlined init with copy of MirrorIntervalsPlatterView(v1, v17);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    outlined destroy of MirrorIntervalsPlatterView(v1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136446210;
      [v7 effectiveTypeIdentifier];
      v13 = HKWorkoutActivityType.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_20C66F000, v9, v10, "Asking whether we support distance metrics, but not in a cycling workout: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x20F30E080](v12, -1, -1);
      MEMORY[0x20F30E080](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

uint64_t MirrorIntervalsPlatterView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsgI0VGAA05TupleG0VyAA08ModifiedD0VyASyAL09IntervalsmG0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingU0VyAL0kgT0OGG_AQyACyASyAL0l12IntervalTimeG0VA4_GASyAL18DistanceMetricTextVA4_GG_ASyACyACyACyACyACyACyAL012EnergyMetricG0VA14_GACyAL015HeartRateMetricG0VAL024HeartRateAggregateMetricG0VGGACyACyA19_AL010ZoneMetricG0VGACyAL016TimeInZoneMetricG0VA23_GGGACyACyACyA26_AL010PaceMetricG0VGACyA31_A31_GGACyA33_ACyAL014DistanceMetricG0VAL010LapsMetricG0VGGGGACyACyACyACyACyACyAL013CadenceMetricG0VAA05EmptyG0VGA44_GA44_GACyAL021ElevationChangeMetricG0VAL022CurrentElevationMetricG0VGGACyACyAL011PowerMetricG0VA57_GACyA57_AL020FlightsClimbedMetricG0VGGGACyACyACyAL021SegmentDurationMetricG0VAL020DistanceDetailMetricG0VGACyA31_A14_GGACyACyA14_A57_GACyA57_ASyASyAL0k4TimeG0VAL12MetricDetailVGAZGGGGGGACyACyACyACyA67_A31_GACyAL018StrideLengthMetricG0VA85_GGACyACyAL025VerticalOscillationMetricG0VA89_GACyAL023GroundContactTimeMetricG0VA92_GGGACyACyA51_AL022DownhillRunCountMetricG0VGACyA46_AA6HStackVyAQyASyAA4TextVAL15MetricValueFontVG_ASyASyA102_AL25MetricDescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA4_GtGSgASyAL0r6TargetG0VA4_GASyASyAL04Nextz4HintG0VA4_GA1_yAA16LegibilityWeightOSgGGtGGASyASyASyAA6VStackVyAQyASyASyASyA102_AL0K16NotificationFontVGA1_y04CoreN07CGFloatVGGA1_ySiSgGG_A102_AA6SpacerVtGGA104_GA4_GAA010_FlexFrameI0VG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsgI0VGAA05TupleG0VyAA08ModifiedD0VyASyAL09IntervalsmG0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingU0VyAL0kgT0OGG_AQyACyASyAL0l12IntervalTimeG0VA4_GASyAL18DistanceMetricTextVA4_GG_ASyACyACyACyACyACyACyAL012EnergyMetricG0VA14_GACyAL015HeartRateMetricG0VAL024HeartRateAggregateMetricG0VGGACyACyA19_AL010ZoneMetricG0VGACyAL016TimeInZoneMetricG0VA23_GGGACyACyACyA26_AL010PaceMetricG0VGACyA31_A31_GGACyA33_ACyAL014DistanceMetricG0VAL010LapsMetricG0VGGGGACyACyACyACyACyACyAL013CadenceMetricG0VAA05EmptyG0VGA44_GA44_GACyAL021ElevationChangeMetricG0VAL022CurrentElevationMetricG0VGGACyACyAL011PowerMetricG0VA57_GACyA57_AL020FlightsClimbedMetricG0VGGGACyACyACyAL021SegmentDurationMetricG0VAL020DistanceDetailMetricG0VGACyA31_A14_GGACyACyA14_A57_GACyA57_ASyASyAL0k4TimeG0VAL12MetricDetailVGAZGGGGGGACyACyACyACyA67_A31_GACyAL018StrideLengthMetricG0VA85_GGACyACyAL025VerticalOscillationMetricG0VA89_GACyAL023GroundContactTimeMetricG0VA92_GGGACyACyA51_AL022DownhillRunCountMetricG0VGACyA46_AA6HStackVyAQyASyAA4TextVAL15MetricValueFontVG_ASyASyA102_AL25MetricDescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA4_GtGSgASyAL0r6TargetG0VA4_GASyASyAL04Nextz4HintG0VA4_GA1_yAA16LegibilityWeightOSgGGtGGASyASyASyAA6VStackVyAQyASyASyASyA102_AL0K16NotificationFontVGA1_y04CoreN07CGFloatVGGA1_ySiSgGG_A102_AA6SpacerVtGGA104_GA4_GAA010_FlexFrameI0VG_GMR);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA15ModifiedContentVyAOyAH09IntervalsjD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingS0VyAH0hdR0OGG_AMyAA012_ConditionalO0VyAOyAH0i12IntervalTimeD0VA0_GAOyAH18DistanceMetricTextVA0_GG_AOyA3_yA3_yA3_yA3_yA3_yA3_yAH012EnergyMetricD0VA12_GA3_yAH015HeartRateMetricD0VAH024HeartRateAggregateMetricD0VGGA3_yA3_yA17_AH010ZoneMetricD0VGA3_yAH0z12InZoneMetricD0VA21_GGGA3_yA3_yA3_yA24_AH010PaceMetricD0VGA3_yA29_A29_GGA3_yA31_A3_yAH014DistanceMetricD0VAH010LapsMetricD0VGGGGA3_yA3_yA3_yA3_yA3_yA3_yAH013CadenceMetricD0VAA05EmptyD0VGA42_GA42_GA3_yAH021ElevationChangeMetricD0VAH022CurrentElevationMetricD0VGGA3_yA3_yAH011PowerMetricD0VA55_GA3_yA55_AH020FlightsClimbedMetricD0VGGGA3_yA3_yA3_yAH021SegmentDurationMetricD0VAH020DistanceDetailMetricD0VGA3_yA29_A12_GGA3_yA3_yA12_A55_GA3_yA55_AOyAOyAH0hzD0VAH12MetricDetailVGAVGGGGGGA3_yA3_yA3_yA3_yA65_A29_GA3_yAH018StrideLengthMetricD0VA83_GGA3_yA3_yAH025VerticalOscillationMetricD0VA87_GA3_yAH013GroundContactz6MetricD0VA90_GGGA3_yA3_yA49_AH022DownhillRunCountMetricD0VGA3_yA44_AA6HStackVyAMyAOyAA4TextVAH15MetricValueFontVG_AOyAOyA100_AH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA0_GtGSgAOyAH0p6TargetD0VA0_GAOyAOyAH04Nexty4HintD0VA0_GAYyAA16LegibilityWeightOSgGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA15ModifiedContentVyAOyAH09IntervalsjD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingS0VyAH0hdR0OGG_AMyAA012_ConditionalO0VyAOyAH0i12IntervalTimeD0VA0_GAOyAH18DistanceMetricTextVA0_GG_AOyA3_yA3_yA3_yA3_yA3_yA3_yAH012EnergyMetricD0VA12_GA3_yAH015HeartRateMetricD0VAH024HeartRateAggregateMetricD0VGGA3_yA3_yA17_AH010ZoneMetricD0VGA3_yAH0z12InZoneMetricD0VA21_GGGA3_yA3_yA3_yA24_AH010PaceMetricD0VGA3_yA29_A29_GGA3_yA31_A3_yAH014DistanceMetricD0VAH010LapsMetricD0VGGGGA3_yA3_yA3_yA3_yA3_yA3_yAH013CadenceMetricD0VAA05EmptyD0VGA42_GA42_GA3_yAH021ElevationChangeMetricD0VAH022CurrentElevationMetricD0VGGA3_yA3_yAH011PowerMetricD0VA55_GA3_yA55_AH020FlightsClimbedMetricD0VGGGA3_yA3_yA3_yAH021SegmentDurationMetricD0VAH020DistanceDetailMetricD0VGA3_yA29_A12_GGA3_yA3_yA12_A55_GA3_yA55_AOyAOyAH0hzD0VAH12MetricDetailVGAVGGGGGGA3_yA3_yA3_yA3_yA65_A29_GA3_yAH018StrideLengthMetricD0VA83_GGA3_yA3_yAH025VerticalOscillationMetricD0VA87_GA3_yAH013GroundContactz6MetricD0VA90_GGGA3_yA3_yA49_AH022DownhillRunCountMetricD0VGA3_yA44_AA6HStackVyAMyAOyAA4TextVAH15MetricValueFontVG_AOyAOyA100_AH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA0_GtGSgAOyAH0p6TargetD0VA0_GAOyAOyAH04Nexty4HintD0VA0_GAYyAA16LegibilityWeightOSgGGtGGMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = IntervalsMetricsPublisher.intervalThisStep.getter();
  if (v9)
  {
    v10 = v9;
    v11 = WorkoutStep.goal.getter();
    v12 = [v11 goalTypeIdentifier];

    v13 = [objc_opt_self() metricColorsForGoalTypeIdentifier_];
    *v8 = 0;
    closure #1 in MirrorIntervalsPlatterView.body.getter(v2, v13, v10, &v8[*(v6 + 44)]);
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v8, v5, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA15ModifiedContentVyAOyAH09IntervalsjD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingS0VyAH0hdR0OGG_AMyAA012_ConditionalO0VyAOyAH0i12IntervalTimeD0VA0_GAOyAH18DistanceMetricTextVA0_GG_AOyA3_yA3_yA3_yA3_yA3_yA3_yAH012EnergyMetricD0VA12_GA3_yAH015HeartRateMetricD0VAH024HeartRateAggregateMetricD0VGGA3_yA3_yA17_AH010ZoneMetricD0VGA3_yAH0z12InZoneMetricD0VA21_GGGA3_yA3_yA3_yA24_AH010PaceMetricD0VGA3_yA29_A29_GGA3_yA31_A3_yAH014DistanceMetricD0VAH010LapsMetricD0VGGGGA3_yA3_yA3_yA3_yA3_yA3_yAH013CadenceMetricD0VAA05EmptyD0VGA42_GA42_GA3_yAH021ElevationChangeMetricD0VAH022CurrentElevationMetricD0VGGA3_yA3_yAH011PowerMetricD0VA55_GA3_yA55_AH020FlightsClimbedMetricD0VGGGA3_yA3_yA3_yAH021SegmentDurationMetricD0VAH020DistanceDetailMetricD0VGA3_yA29_A12_GGA3_yA3_yA12_A55_GA3_yA55_AOyAOyAH0hzD0VAH12MetricDetailVGAVGGGGGGA3_yA3_yA3_yA3_yA65_A29_GA3_yAH018StrideLengthMetricD0VA83_GGA3_yA3_yAH025VerticalOscillationMetricD0VA87_GA3_yAH013GroundContactz6MetricD0VA90_GGGA3_yA3_yA49_AH022DownhillRunCountMetricD0VGA3_yA44_AA6HStackVyAMyAOyAA4TextVAH15MetricValueFontVG_AOyAOyA100_AH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA0_GtGSgAOyAH0p6TargetD0VA0_GAOyAOyAH04Nexty4HintD0VA0_GAYyAA16LegibilityWeightOSgGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA15ModifiedContentVyAOyAH09IntervalsjD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingS0VyAH0hdR0OGG_AMyAA012_ConditionalO0VyAOyAH0i12IntervalTimeD0VA0_GAOyAH18DistanceMetricTextVA0_GG_AOyA3_yA3_yA3_yA3_yA3_yA3_yAH012EnergyMetricD0VA12_GA3_yAH015HeartRateMetricD0VAH024HeartRateAggregateMetricD0VGGA3_yA3_yA17_AH010ZoneMetricD0VGA3_yAH0z12InZoneMetricD0VA21_GGGA3_yA3_yA3_yA24_AH010PaceMetricD0VGA3_yA29_A29_GGA3_yA31_A3_yAH014DistanceMetricD0VAH010LapsMetricD0VGGGGA3_yA3_yA3_yA3_yA3_yA3_yAH013CadenceMetricD0VAA05EmptyD0VGA42_GA42_GA3_yAH021ElevationChangeMetricD0VAH022CurrentElevationMetricD0VGGA3_yA3_yAH011PowerMetricD0VA55_GA3_yA55_AH020FlightsClimbedMetricD0VGGGA3_yA3_yA3_yAH021SegmentDurationMetricD0VAH020DistanceDetailMetricD0VGA3_yA29_A12_GGA3_yA3_yA12_A55_GA3_yA55_AOyAOyAH0hzD0VAH12MetricDetailVGAVGGGGGGA3_yA3_yA3_yA3_yA65_A29_GA3_yAH018StrideLengthMetricD0VA83_GGA3_yA3_yAH025VerticalOscillationMetricD0VA87_GA3_yAH013GroundContactz6MetricD0VA90_GGGA3_yA3_yA49_AH022DownhillRunCountMetricD0VGA3_yA44_AA6HStackVyAMyAOyAA4TextVAH15MetricValueFontVG_AOyAOyA100_AH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA0_GtGSgAOyAH0p6TargetD0VA0_GAOyAOyAH04Nexty4HintD0VA0_GAYyAA16LegibilityWeightOSgGGtGGMR);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyACyACyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AiA6SpacerVtGGAJ011MetricValueK0VGAOyAJ0iG5StyleOGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyACyACyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AiA6SpacerVtGGAJ011MetricValueK0VGAOyAJ0iG5StyleOGGAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, TupleView<(_ConditionalContent<ModifiedContent<MirrorIntervalTimeView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<DistanceMetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>>, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _Con();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>>, MetricValueFont>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v8, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA15ModifiedContentVyAOyAH09IntervalsjD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingS0VyAH0hdR0OGG_AMyAA012_ConditionalO0VyAOyAH0i12IntervalTimeD0VA0_GAOyAH18DistanceMetricTextVA0_GG_AOyA3_yA3_yA3_yA3_yA3_yA3_yAH012EnergyMetricD0VA12_GA3_yAH015HeartRateMetricD0VAH024HeartRateAggregateMetricD0VGGA3_yA3_yA17_AH010ZoneMetricD0VGA3_yAH0z12InZoneMetricD0VA21_GGGA3_yA3_yA3_yA24_AH010PaceMetricD0VGA3_yA29_A29_GGA3_yA31_A3_yAH014DistanceMetricD0VAH010LapsMetricD0VGGGGA3_yA3_yA3_yA3_yA3_yA3_yAH013CadenceMetricD0VAA05EmptyD0VGA42_GA42_GA3_yAH021ElevationChangeMetricD0VAH022CurrentElevationMetricD0VGGA3_yA3_yAH011PowerMetricD0VA55_GA3_yA55_AH020FlightsClimbedMetricD0VGGGA3_yA3_yA3_yAH021SegmentDurationMetricD0VAH020DistanceDetailMetricD0VGA3_yA29_A12_GGA3_yA3_yA12_A55_GA3_yA55_AOyAOyAH0hzD0VAH12MetricDetailVGAVGGGGGGA3_yA3_yA3_yA3_yA65_A29_GA3_yAH018StrideLengthMetricD0VA83_GGA3_yA3_yAH025VerticalOscillationMetricD0VA87_GA3_yAH013GroundContactz6MetricD0VA90_GGGA3_yA3_yA49_AH022DownhillRunCountMetricD0VGA3_yA44_AA6HStackVyAMyAOyAA4TextVAH15MetricValueFontVG_AOyAOyA100_AH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA0_GtGSgAOyAH0p6TargetD0VA0_GAOyAOyAH04Nexty4HintD0VA0_GAYyAA16LegibilityWeightOSgGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAA15ModifiedContentVyAOyAH09IntervalsjD0VAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingS0VyAH0hdR0OGG_AMyAA012_ConditionalO0VyAOyAH0i12IntervalTimeD0VA0_GAOyAH18DistanceMetricTextVA0_GG_AOyA3_yA3_yA3_yA3_yA3_yA3_yAH012EnergyMetricD0VA12_GA3_yAH015HeartRateMetricD0VAH024HeartRateAggregateMetricD0VGGA3_yA3_yA17_AH010ZoneMetricD0VGA3_yAH0z12InZoneMetricD0VA21_GGGA3_yA3_yA3_yA24_AH010PaceMetricD0VGA3_yA29_A29_GGA3_yA31_A3_yAH014DistanceMetricD0VAH010LapsMetricD0VGGGGA3_yA3_yA3_yA3_yA3_yA3_yAH013CadenceMetricD0VAA05EmptyD0VGA42_GA42_GA3_yAH021ElevationChangeMetricD0VAH022CurrentElevationMetricD0VGGA3_yA3_yAH011PowerMetricD0VA55_GA3_yA55_AH020FlightsClimbedMetricD0VGGGA3_yA3_yA3_yAH021SegmentDurationMetricD0VAH020DistanceDetailMetricD0VGA3_yA29_A12_GGA3_yA3_yA12_A55_GA3_yA55_AOyAOyAH0hzD0VAH12MetricDetailVGAVGGGGGGA3_yA3_yA3_yA3_yA65_A29_GA3_yAH018StrideLengthMetricD0VA83_GGA3_yA3_yAH025VerticalOscillationMetricD0VA87_GA3_yAH013GroundContactz6MetricD0VA90_GGGA3_yA3_yA49_AH022DownhillRunCountMetricD0VGA3_yA44_AA6HStackVyAMyAOyAA4TextVAH15MetricValueFontVG_AOyAOyA100_AH25MetricDescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGA0_GtGSgAOyAH0p6TargetD0VA0_GAOyAOyAH04Nexty4HintD0VA0_GAYyAA16LegibilityWeightOSgGGtGGMR);
  }

  else
  {
    v26 = static HorizontalAlignment.leading.getter();
    v39 = 1;
    closure #2 in MirrorIntervalsPlatterView.body.getter(&v29);
    v46 = v34;
    v47 = v35;
    v48 = v36;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    v45 = v33;
    v41 = v29;
    v50[6] = v35;
    v50[7] = v36;
    v50[2] = v31;
    v50[3] = v32;
    v50[4] = v33;
    v50[5] = v34;
    v49 = v37;
    v51 = v37;
    v50[0] = v29;
    v50[1] = v30;
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(&v41, &v28, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA4TextV07WorkoutB00H16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGG_AgA6SpacerVtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA4TextV07WorkoutB00H16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGG_AgA6SpacerVtGMR);
    outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v50, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA4TextV07WorkoutB00H16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGG_AgA6SpacerVtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA4TextV07WorkoutB00H16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMySiSgGG_AgA6SpacerVtGMR);
    *&v38[87] = v46;
    *&v38[103] = v47;
    *&v38[119] = v48;
    v38[135] = v49;
    *&v38[23] = v42;
    *&v38[39] = v43;
    *&v38[55] = v44;
    *&v38[71] = v45;
    *&v38[7] = v41;
    v15 = v39;
    KeyPath = swift_getKeyPath();
    LOBYTE(v29) = 0;
    v17 = swift_getKeyPath();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v40[55] = v32;
    *&v40[71] = v33;
    *&v40[87] = v34;
    *&v40[103] = v35;
    *&v40[7] = v29;
    *&v40[23] = v30;
    *&v40[39] = v31;
    v18 = *&v38[64];
    *(v5 + 97) = *&v38[80];
    v19 = *&v38[112];
    *(v5 + 113) = *&v38[96];
    *(v5 + 129) = v19;
    v20 = *v38;
    *(v5 + 33) = *&v38[16];
    v21 = *&v38[48];
    *(v5 + 49) = *&v38[32];
    *(v5 + 65) = v21;
    *(v5 + 81) = v18;
    *(v5 + 17) = v20;
    v22 = *&v40[80];
    *(v5 + 257) = *&v40[64];
    *(v5 + 273) = v22;
    *(v5 + 289) = *&v40[96];
    v23 = *&v40[16];
    *(v5 + 193) = *v40;
    *(v5 + 209) = v23;
    v24 = *&v40[48];
    *(v5 + 225) = *&v40[32];
    *v5 = v26;
    *(v5 + 1) = 0;
    v5[16] = v15;
    *(v5 + 145) = *&v38[128];
    *(v5 + 80) = 256;
    *(v5 + 21) = KeyPath;
    v5[176] = 0;
    *(v5 + 23) = v17;
    v5[192] = 2;
    *(v5 + 38) = *&v40[111];
    *(v5 + 241) = v24;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyACyACyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AiA6SpacerVtGGAJ011MetricValueK0VGAOyAJ0iG5StyleOGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyACyACyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AiA6SpacerVtGGAJ011MetricValueK0VGAOyAJ0iG5StyleOGGAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(ModifiedContent<ModifiedContent<IntervalsHeroView, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, TupleView<(_ConditionalContent<ModifiedContent<MirrorIntervalTimeView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<DistanceMetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>>, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _Con();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>>, MetricValueFont>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    return _ConditionalContent<>.init(storage:)();
  }
}

id closure #1 in MirrorIntervalsPlatterView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v114 = a3;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB020NextIntervalHintViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGAHyAA16LegibilityWeightOSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB020NextIntervalHintViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGAHyAA16LegibilityWeightOSgGGMR);
  MEMORY[0x28223BE20](v134);
  v8 = v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v111 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0Vy07WorkoutB0018MirrorIntervalTimeD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAGyAH18DistanceMetricTextVAOGG_AGyAEyAEyAEyAEyAEyAEyAH06EnergyrD0VAVGAEyAH09HeartRaterD0VAH0uv9AggregaterD0VGGAEyAEyA_AH04ZonerD0VGAEyAH0k2InxrD0VA3_GGGAEyAEyAEyA6_AH04PacerD0VGAEyA11_A11_GGAEyA13_AEyAH0qrD0VAH04LapsrD0VGGGGAEyAEyAEyAEyAEyAEyAH07CadencerD0VAA05EmptyD0VGA24_GA24_GAEyAH015ElevationChangerD0VAH016CurrentElevationrD0VGGAEyAEyAH05PowerrD0VA37_GAEyA37_AH014FlightsClimbedrD0VGGGAEyAEyAEyAH015SegmentDurationrD0VAH0q6DetailrD0VGAEyA11_AVGGAEyAEyAVA37_GAEyA37_AGyAGyAH0hkD0VAH0R6DetailVGAA011_ForegroundpO0VyAA5ColorVGGGGGGGAEyAEyAEyAEyA47_A11_GAEyAH012StrideLengthrD0VA70_GGAEyAEyAH019VerticalOscillationrD0VA74_GAEyAH013GroundContactkrD0VA77_GGGAEyAEyA31_AH016DownhillRunCountrD0VGAEyA26_AA6HStackVyACyAGyAA0S0VAH0R9ValueFontVG_AGyAGyA87_AH0R19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAOGtGMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0Vy07WorkoutB0018MirrorIntervalTimeD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAGyAH18DistanceMetricTextVAOGG_AGyAEyAEyAEyAEyAEyAEyAH06EnergyrD0VAVGAEyAH09HeartRaterD0VAH0uv9AggregaterD0VGGAEyAEyA_AH04ZonerD0VGAEyAH0k2InxrD0VA3_GGGAEyAEyAEyA6_AH04PacerD0VGAEyA11_A11_GGAEyA13_AEyAH0qrD0VAH04LapsrD0VGGGGAEyAEyAEyAEyAEyAEyAH07CadencerD0VAA05EmptyD0VGA24_GA24_GAEyAH015ElevationChangerD0VAH016CurrentElevationrD0VGGAEyAEyAH05PowerrD0VA37_GAEyA37_AH014FlightsClimbedrD0VGGGAEyAEyAEyAH015SegmentDurationrD0VAH0q6DetailrD0VGAEyA11_AVGGAEyAEyAVA37_GAEyA37_AGyAGyAH0hkD0VAH0R6DetailVGAA011_ForegroundpO0VyAA5ColorVGGGGGGGAEyAEyAEyAEyA47_A11_GAEyAH012StrideLengthrD0VA70_GGAEyAEyAH019VerticalOscillationrD0VA74_GAEyAH013GroundContactkrD0VA77_GGGAEyAEyA31_AH016DownhillRunCountrD0VGAEyA26_AA6HStackVyACyAGyAA0S0VAH0R9ValueFontVG_AGyAGyA87_AH0R19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAOGtGMR);
  v132 = *(v12 - 8);
  v133 = v12;
  MEMORY[0x28223BE20](v12);
  v127 = v111 - v13;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGG_GMR);
  MEMORY[0x28223BE20](v125);
  v126 = v111 - v14;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGG_GMR);
  MEMORY[0x28223BE20](v118);
  v122 = v111 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGG_GMR);
  MEMORY[0x28223BE20](v16);
  v18 = (v111 - v17);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  MEMORY[0x28223BE20](v116);
  v115 = v111 - v19;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  MEMORY[0x28223BE20](v121);
  v120 = v111 - v20;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMR);
  MEMORY[0x28223BE20](v119);
  v124 = v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v123 = v111 - v23;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAH0gK5StyleOGGAGyAH18DistanceMetricTextVAOG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAH0gK5StyleOGGAGyAH18DistanceMetricTextVAOG_GMR);
  MEMORY[0x28223BE20](v112);
  v25 = v111 - v24;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMR);
  MEMORY[0x28223BE20](v113);
  v27 = v111 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAF0fJ5StyleOGGAEyAF18DistanceMetricTextVAMGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAF0fJ5StyleOGGAEyAF18DistanceMetricTextVAMGGMR);
  MEMORY[0x28223BE20](v28 - 8);
  v117 = v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v131 = v111 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0Vy07WorkoutB0018MirrorIntervalTimeD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAGyAH18DistanceMetricTextVAOGG_AGyAEyAEyAEyAEyAEyAEyAH06EnergyrD0VAVGAEyAH09HeartRaterD0VAH0uv9AggregaterD0VGGAEyAEyA_AH04ZonerD0VGAEyAH0k2InxrD0VA3_GGGAEyAEyAEyA6_AH04PacerD0VGAEyA11_A11_GGAEyA13_AEyAH0qrD0VAH04LapsrD0VGGGGAEyAEyAEyAEyAEyAEyAH07CadencerD0VAA05EmptyD0VGA24_GA24_GAEyAH015ElevationChangerD0VAH016CurrentElevationrD0VGGAEyAEyAH05PowerrD0VA37_GAEyA37_AH014FlightsClimbedrD0VGGGAEyAEyAEyAH015SegmentDurationrD0VAH0q6DetailrD0VGAEyA11_AVGGAEyAEyAVA37_GAEyA37_AGyAGyAH0hkD0VAH0R6DetailVGAA011_ForegroundpO0VyAA5ColorVGGGGGGGAEyAEyAEyAEyA47_A11_GAEyAH012StrideLengthrD0VA70_GGAEyAEyAH019VerticalOscillationrD0VA74_GAEyAH013GroundContactkrD0VA77_GGGAEyAEyA31_AH016DownhillRunCountrD0VGAEyA26_AA6HStackVyACyAGyAA0S0VAH0R9ValueFontVG_AGyAGyA87_AH0R19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAOGtGSgMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0Vy07WorkoutB0018MirrorIntervalTimeD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAGyAH18DistanceMetricTextVAOGG_AGyAEyAEyAEyAEyAEyAEyAH06EnergyrD0VAVGAEyAH09HeartRaterD0VAH0uv9AggregaterD0VGGAEyAEyA_AH04ZonerD0VGAEyAH0k2InxrD0VA3_GGGAEyAEyAEyA6_AH04PacerD0VGAEyA11_A11_GGAEyA13_AEyAH0qrD0VAH04LapsrD0VGGGGAEyAEyAEyAEyAEyAEyAH07CadencerD0VAA05EmptyD0VGA24_GA24_GAEyAH015ElevationChangerD0VAH016CurrentElevationrD0VGGAEyAEyAH05PowerrD0VA37_GAEyA37_AH014FlightsClimbedrD0VGGGAEyAEyAEyAH015SegmentDurationrD0VAH0q6DetailrD0VGAEyA11_AVGGAEyAEyAVA37_GAEyA37_AGyAGyAH0hkD0VAH0R6DetailVGAA011_ForegroundpO0VyAA5ColorVGGGGGGGAEyAEyAEyAEyA47_A11_GAEyAH012StrideLengthrD0VA70_GGAEyAEyAH019VerticalOscillationrD0VA74_GAEyAH013GroundContactkrD0VA77_GGGAEyAEyA31_AH016DownhillRunCountrD0VGAEyA26_AA6HStackVyACyAGyAA0S0VAH0R9ValueFontVG_AGyAGyA87_AH0R19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAOGtGSgMR);
  MEMORY[0x28223BE20](v32 - 8);
  v144 = v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v147 = v111 - v35;
  v146 = *(a1 + 40);
  result = [a2 gradientDarkColor];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v111[1] = v16;
  v129 = a4;
  v130 = v11;
  v143 = Color.init(uiColor:)();
  result = [a2 gradientLightColor];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v142 = Color.init(uiColor:)();
  v37 = *(a1 + 48);
  v171 = *(a1 + 8);
  v38 = *(&v171 + 1);
  v39 = *a1;
  v145 = v37;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(&v171, &v166, &_s7SwiftUI14ObservedObjectVy11WorkoutCore25IntervalsMetricsPublisherCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore25IntervalsMetricsPublisherCGMR);
  v136 = v39;
  MetricsPublisher.workoutStatePublisher.getter();
  type metadata accessor for IntervalsMetricsPublisher();
  _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type IntervalsMetricsPublisher and conformance IntervalsMetricsPublisher, MEMORY[0x277D7E518], MEMORY[0x277D7E510]);
  v135 = v38;
  v40 = ObservedObject.init(wrappedValue:)();
  v140 = v41;
  v141 = v40;
  type metadata accessor for WorkoutStatePublisher();
  _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88], MEMORY[0x277D7DA78]);
  v42 = ObservedObject.init(wrappedValue:)();
  *(&v139 + 1) = v43;
  result = [a2 nonGradientTextColor];
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v138 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v44 = MirrorIntervalsPlatterView.shouldShowDistanceMetrics.getter();
  v45 = v147;
  v128 = v8;
  *&v139 = v42;
  if (v44)
  {
    v46 = v114;
    v47 = WorkoutStep.goal.getter();
    v48 = [v47 goalTypeIdentifier];

    if (v48 == 1)
    {

      IntervalsMetricsPublisher.intervalStartDate.getter();
      MetricsPublisher.workoutStatePublisher.getter();
      v49 = WorkoutStatePublisher.pauseTimes.getter();

      MetricsPublisher.workoutStatePublisher.getter();
      v50 = type metadata accessor for MirrorIntervalTimeView(0);
      WorkoutStatePublisher.lastUnbalancedPauseStart.getter();

      *&v27[v50[5]] = v46;
      *&v27[v50[6]] = v49;
      v27[v50[8]] = 0;
      v51 = &v27[v50[9]];
      *v51 = 0;
      v51[8] = 1;
      v27[v50[10]] = 1;
      v52 = swift_getKeyPath();
      v53 = &v27[*(v113 + 36)];
      *v53 = v52;
      v53[8] = 5;

      outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v27, v25, &_s7SwiftUI15ModifiedContentVy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMR);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGMR);
      lazy protocol witness table accessor for type ModifiedContent<MirrorIntervalTimeView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<DistanceMetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v27, &_s7SwiftUI15ModifiedContentVy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMR);
    }

    else
    {
      IntervalsMetricsPublisher.intervalDistance.getter();
      v57 = v56;
      v58 = FIUIDistanceTypeForActivityType();
      MetricsPublisher.trackRunningMetricsPublisher.getter();
      v59 = TrackRunningMetricsPublisher.trackRunningCoordinator.getter();

      v60 = dispatch thunk of TrackRunningCoordinator.preferredDistanceUnit.getter();
      v62 = v61;

      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v63 = WorkoutUIBundle.super.isa;
      v172._object = 0xE000000000000000;
      v64.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v64.value._object = 0xEB00000000656C62;
      v65._object = 0x800000020CB99120;
      v65._countAndFlagsBits = 0xD000000000000011;
      v66._countAndFlagsBits = 0;
      v66._object = 0xE000000000000000;
      v172._countAndFlagsBits = 0;
      v67 = NSLocalizedString(_:tableName:bundle:value:comment:)(v65, v64, v63, v66, v172);

      v68 = swift_getKeyPath();
      LOBYTE(v166) = v62 & 1;
      *v25 = v57;
      *(v25 + 1) = v146;
      *(v25 + 2) = v58;
      *(v25 + 3) = v60;
      v25[32] = v62 & 1;
      *(v25 + 40) = v67;
      *(v25 + 7) = v68;
      v25[64] = 5;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGMR);
      lazy protocol witness table accessor for type ModifiedContent<MirrorIntervalTimeView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<DistanceMetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
    }

    MetricsPublisher.intervalsMetricsPublisher.getter();
    IntervalsMetricsPublisher.intervalAveragePace.getter();
    v70 = v69;

    MetricsPublisher.workoutStatePublisher.getter();
    v71 = WorkoutStatePublisher.gpsUnavailable.getter();

    v72 = swift_getKeyPath();
    *&v152 = v146;
    *(&v152 + 1) = 41;
    *&v153 = v145;
    *(&v153 + 1) = v72;
    LOBYTE(v154) = 0;
    *(&v154 + 1) = v70;
    LOBYTE(v155) = v71 & 1;
    v156 = 0;
    v157 = 0;
    v168 = v154;
    *v169 = v155;
    *&v169[16] = 0;
    v166 = v152;
    v167 = v153;
    v158 = 1;
    v169[24] = 1;
    outlined init with copy of PaceMetricView(&v152, &v161);
    lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
    _ConditionalContent<>.init(storage:)();
    v168 = v163;
    *v169 = v164[0];
    *&v169[9] = *(v164 + 9);
    v166 = v161;
    v167 = v162;
    v159 = 0;
    v169[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018DistanceMetricViewVAD04LapsgH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB018DistanceMetricViewVAD04LapsgH0VGMR);
    _s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_0(&lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR, lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView);
    lazy protocol witness table accessor for type _ConditionalContent<DistanceMetricView, LapsMetricView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v163 = v150;
    v164[0] = v151[0];
    *(v164 + 10) = *(v151 + 10);
    v161 = v148;
    v162 = v149;
    v160 = 1;
    BYTE10(v164[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v73 = *v169;
    v18[2] = v168;
    v18[3] = v73;
    *(v18 + 59) = *&v169[11];
    v74 = v167;
    *v18 = v166;
    v18[1] = v74;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
    v75 = v115;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v75, v122, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
    v76 = v120;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v75, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v76, v126, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
    v77 = v123;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of PaceMetricView(&v152);
    outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v76, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
    v78 = swift_getKeyPath();
    v79 = v77 + *(v119 + 36);
    *v79 = v78;
    *(v79 + 8) = 5;
    v80 = v131;
    v81 = v117;
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v131, v117, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAF0fJ5StyleOGGAEyAF18DistanceMetricTextVAMGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAF0fJ5StyleOGGAEyAF18DistanceMetricTextVAMGGMR);
    v82 = v124;
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v77, v124, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMR);
    v83 = v127;
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v81, v127, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAF0fJ5StyleOGGAEyAF18DistanceMetricTextVAMGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAF0fJ5StyleOGGAEyAF18DistanceMetricTextVAMGGMR);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAF0fJ5StyleOGGAEyAF18DistanceMetricTextVAMGG_AEyACyACyACyACyACyACyAF06EnergyqJ0VATGACyAF09HeartRateqJ0VAF0tu9AggregateqJ0VGGACyACyAyF04ZoneqJ0VGACyAF0i2InwqJ0VA1_GGGACyACyACyA4_AF04PaceqJ0VGACyA9_A9_GGACyA11_ACyAF0pqJ0VAF04LapsqJ0VGGGGACyACyACyACyACyACyAF07CadenceqJ0VAA05EmptyJ0VGA22_GA22_GACyAF015ElevationChangeqJ0VAF016CurrentElevationqJ0VGGACyACyAF05PowerqJ0VA35_GACyA35_AF014FlightsClimbedqJ0VGGGACyACyACyAF015SegmentDurationqJ0VAF0p6DetailqJ0VGACyA9_ATGGACyACyATA35_GACyA35_AEyAEyAF0fiJ0VAF0Q6DetailVGAA011_ForegroundoN0VyAA5ColorVGGGGGGGACyACyACyACyA45_A9_GACyAF012StrideLengthqJ0VA68_GGACyACyAF019VerticalOscillationqJ0VA72_GACyAF013GroundContactiqJ0VA75_GGGACyACyA29_AF016DownhillRunCountqJ0VGACyA24_AA6HStackVyAA05TupleJ0VyAEyAA0R0VAF0Q9ValueFontVG_AEyAEyA87_AF0Q19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAMGtMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAF0fJ5StyleOGGAEyAF18DistanceMetricTextVAMGG_AEyACyACyACyACyACyACyAF06EnergyqJ0VATGACyAF09HeartRateqJ0VAF0tu9AggregateqJ0VGGACyACyAyF04ZoneqJ0VGACyAF0i2InwqJ0VA1_GGGACyACyACyA4_AF04PaceqJ0VGACyA9_A9_GGACyA11_ACyAF0pqJ0VAF04LapsqJ0VGGGGACyACyACyACyACyACyAF07CadenceqJ0VAA05EmptyJ0VGA22_GA22_GACyAF015ElevationChangeqJ0VAF016CurrentElevationqJ0VGGACyACyAF05PowerqJ0VA35_GACyA35_AF014FlightsClimbedqJ0VGGGACyACyACyAF015SegmentDurationqJ0VAF0p6DetailqJ0VGACyA9_ATGGACyACyATA35_GACyA35_AEyAEyAF0fiJ0VAF0Q6DetailVGAA011_ForegroundoN0VyAA5ColorVGGGGGGGACyACyACyACyA45_A9_GACyAF012StrideLengthqJ0VA68_GGACyACyAF019VerticalOscillationqJ0VA72_GACyAF013GroundContactiqJ0VA75_GGGACyACyA29_AF016DownhillRunCountqJ0VGACyA24_AA6HStackVyAA05TupleJ0VyAEyAA0R0VAF0Q9ValueFontVG_AEyAEyA87_AF0Q19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAMGtMR);
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v82, v83 + *(v84 + 48), &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMR);
    outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v77, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMR);
    outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v80, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAF0fJ5StyleOGGAEyAF18DistanceMetricTextVAMGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAF0fJ5StyleOGGAEyAF18DistanceMetricTextVAMGGMR);
    outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v82, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAEyAEyAEy07WorkoutB016EnergyMetricViewVAHGAEyAF09HeartRatehI0VAF0jk9AggregatehI0VGGAEyAEyAmF04ZonehI0VGAEyAF06TimeInmhI0VAQGGGAEyAEyAEyAtF04PacehI0VGAEyA2YGGAEyA_AEyAF08DistancehI0VAF04LapshI0VGGGGAEyAEyAEyAEyAEyAEyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GAEyAF015ElevationChangehI0VAF07CurrentuhI0VGGAEyAEyAF05PowerhI0VA23_GAEyA23_AF014FlightsClimbedhI0VGGGAEyAEyAEyAF015SegmentDurationhI0VAF0q6DetailhI0VGAEyAyHGGAEyAEyAHA23_GAEyA23_ACyACyAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAEyAEyAEyAEyA33_AYGAEyAF012StrideLengthhI0VA56_GGAEyAEyAF019VerticalOscillationhI0VA60_GAEyAF013GroundContactnhI0VA63_GGGAEyAEyA17_AF016DownhillRunCounthI0VGAEyA12_AA6HStackVyAA05TupleI0VyACyAA4TextVAF0H9ValueFontVG_ACyACyA75_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGMR);
    outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v81, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAF0fJ5StyleOGGAEyAF18DistanceMetricTextVAMGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAF0fJ5StyleOGGAEyAF18DistanceMetricTextVAMGGMR);
    v85 = v147;
    outlined init with take of TupleView<(_ConditionalContent<ModifiedContent<MirrorIntervalTimeView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<DistanceMetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>>, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_Condi(v83, v147);
    (*(v132 + 56))(v85, 0, 1, v133);
    v55 = v134;
  }

  else
  {

    v54 = v146;
    (*(v132 + 56))(v45, 1, 1, v133);
    v55 = v134;
  }

  type metadata accessor for MetricsPublisher();
  _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, MEMORY[0x277D7E090], MEMORY[0x277D7E088]);
  v136 = ObservedObject.init(wrappedValue:)();
  v134 = v86;
  v133 = swift_getKeyPath();
  v135 = IntervalsMetricsPublisher.intervalNextStep.getter();
  v87 = swift_getKeyPath();
  v88 = swift_getKeyPath();
  v89 = *(v55 + 36);
  v90 = v130;
  v91 = &v130[v89];
  v92 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMR) + 28);
  v93 = *MEMORY[0x277CDFB78];
  v94 = type metadata accessor for LegibilityWeight();
  v95 = *(v94 - 8);
  (*(v95 + 104))(v91 + v92, v93, v94);
  (*(v95 + 56))(v91 + v92, 0, 1, v94);
  *v91 = v88;
  v97 = v146;
  v96 = v147;
  *v90 = v135;
  *(v90 + 8) = v97;
  *(v90 + 16) = v87;
  *(v90 + 24) = 5;
  v98 = v144;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v96, v144, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0Vy07WorkoutB0018MirrorIntervalTimeD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAGyAH18DistanceMetricTextVAOGG_AGyAEyAEyAEyAEyAEyAEyAH06EnergyrD0VAVGAEyAH09HeartRaterD0VAH0uv9AggregaterD0VGGAEyAEyA_AH04ZonerD0VGAEyAH0k2InxrD0VA3_GGGAEyAEyAEyA6_AH04PacerD0VGAEyA11_A11_GGAEyA13_AEyAH0qrD0VAH04LapsrD0VGGGGAEyAEyAEyAEyAEyAEyAH07CadencerD0VAA05EmptyD0VGA24_GA24_GAEyAH015ElevationChangerD0VAH016CurrentElevationrD0VGGAEyAEyAH05PowerrD0VA37_GAEyA37_AH014FlightsClimbedrD0VGGGAEyAEyAEyAH015SegmentDurationrD0VAH0q6DetailrD0VGAEyA11_AVGGAEyAEyAVA37_GAEyA37_AGyAGyAH0hkD0VAH0R6DetailVGAA011_ForegroundpO0VyAA5ColorVGGGGGGGAEyAEyAEyAEyA47_A11_GAEyAH012StrideLengthrD0VA70_GGAEyAEyAH019VerticalOscillationrD0VA74_GAEyAH013GroundContactkrD0VA77_GGGAEyAEyA31_AH016DownhillRunCountrD0VGAEyA26_AA6HStackVyACyAGyAA0S0VAH0R9ValueFontVG_AGyAGyA87_AH0R19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAOGtGSgMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0Vy07WorkoutB0018MirrorIntervalTimeD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAGyAH18DistanceMetricTextVAOGG_AGyAEyAEyAEyAEyAEyAEyAH06EnergyrD0VAVGAEyAH09HeartRaterD0VAH0uv9AggregaterD0VGGAEyAEyA_AH04ZonerD0VGAEyAH0k2InxrD0VA3_GGGAEyAEyAEyA6_AH04PacerD0VGAEyA11_A11_GGAEyA13_AEyAH0qrD0VAH04LapsrD0VGGGGAEyAEyAEyAEyAEyAEyAH07CadencerD0VAA05EmptyD0VGA24_GA24_GAEyAH015ElevationChangerD0VAH016CurrentElevationrD0VGGAEyAEyAH05PowerrD0VA37_GAEyA37_AH014FlightsClimbedrD0VGGGAEyAEyAEyAH015SegmentDurationrD0VAH0q6DetailrD0VGAEyA11_AVGGAEyAEyAVA37_GAEyA37_AGyAGyAH0hkD0VAH0R6DetailVGAA011_ForegroundpO0VyAA5ColorVGGGGGGGAEyAEyAEyAEyA47_A11_GAEyAH012StrideLengthrD0VA70_GGAEyAEyAH019VerticalOscillationrD0VA74_GAEyAH013GroundContactkrD0VA77_GGGAEyAEyA31_AH016DownhillRunCountrD0VGAEyA26_AA6HStackVyACyAGyAA0S0VAH0R9ValueFontVG_AGyAGyA87_AH0R19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAOGtGSgMR);
  v99 = v128;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v90, v128, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB020NextIntervalHintViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGAHyAA16LegibilityWeightOSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB020NextIntervalHintViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGAHyAA16LegibilityWeightOSgGGMR);
  *&v161 = v97;
  *(&v161 + 1) = v143;
  *&v162 = v142;
  v100 = v145;
  *(&v162 + 1) = v145;
  *&v163 = v141;
  *(&v163 + 1) = v140;
  v164[0] = v139;
  *&v164[1] = v138;
  *(&v164[1] + 1) = KeyPath;
  v165 = 4;
  v101 = v129;
  *(v129 + 80) = 4;
  v102 = v164[0];
  v101[2] = v163;
  v101[3] = v102;
  v101[4] = v164[1];
  v103 = v162;
  *v101 = v161;
  v101[1] = v103;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB017IntervalsHeroViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAD0ehJ0OGG_AA05TupleH0VyAA012_ConditionalD0VyACyAD018MirrorIntervalTimeH0VAQGACyAD18DistanceMetricTextVAQGG_ACyAVyAVyAVyAVyAVyAVyAD06EnergyvH0VA3_GAVyAD09HeartRatevH0VAD0yz9AggregatevH0VGGAVyAVyA8_AD04ZonevH0VGAVyAD0t6InZonevH0VA12_GGGAVyAVyAVyA15_AD04PacevH0VGAVyA20_A20_GGAVyA22_AVyAD0uvH0VAD04LapsvH0VGGGGAVyAVyAVyAVyAVyAVyAD07CadencevH0VAA05EmptyH0VGA33_GA33_GAVyAD015ElevationChangevH0VAD016CurrentElevationvH0VGGAVyAVyAD05PowervH0VA46_GAVyA46_AD014FlightsClimbedvH0VGGGAVyAVyAVyAD015SegmentDurationvH0VAD0u6DetailvH0VGAVyA20_A3_GGAVyAVyA3_A46_GAVyA46_ACyACyAD0etH0VAD0V6DetailVGAKGGGGGGAVyAVyAVyAVyA56_A20_GAVyAD012StrideLengthvH0VA74_GGAVyAVyAD019VerticalOscillationvH0VA78_GAVyAD013GroundContacttvH0VA81_GGGAVyAVyA40_AD016DownhillRunCountvH0VGAVyA35_AA6HStackVyATyACyAA0W0VAD0V9ValueFontVG_ACyACyA91_AD0V19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAQGtGSgACyAD0f6TargetH0VAQGACyACyAD04Nexts4HintH0VAQGANyAA16LegibilityWeightOSgGGtMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB017IntervalsHeroViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAD0ehJ0OGG_AA05TupleH0VyAA012_ConditionalD0VyACyAD018MirrorIntervalTimeH0VAQGACyAD18DistanceMetricTextVAQGG_ACyAVyAVyAVyAVyAVyAVyAD06EnergyvH0VA3_GAVyAD09HeartRatevH0VAD0yz9AggregatevH0VGGAVyAVyA8_AD04ZonevH0VGAVyAD0t6InZonevH0VA12_GGGAVyAVyAVyA15_AD04PacevH0VGAVyA20_A20_GGAVyA22_AVyAD0uvH0VAD04LapsvH0VGGGGAVyAVyAVyAVyAVyAVyAD07CadencevH0VAA05EmptyH0VGA33_GA33_GAVyAD015ElevationChangevH0VAD016CurrentElevationvH0VGGAVyAVyAD05PowervH0VA46_GAVyA46_AD014FlightsClimbedvH0VGGGAVyAVyAVyAD015SegmentDurationvH0VAD0u6DetailvH0VGAVyA20_A3_GGAVyAVyA3_A46_GAVyA46_ACyACyAD0etH0VAD0V6DetailVGAKGGGGGGAVyAVyAVyAVyA56_A20_GAVyAD012StrideLengthvH0VA74_GGAVyAVyAD019VerticalOscillationvH0VA78_GAVyAD013GroundContacttvH0VA81_GGGAVyAVyA40_AD016DownhillRunCountvH0VGAVyA35_AA6HStackVyATyACyAA0W0VAD0V9ValueFontVG_ACyACyA91_AD0V19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAQGtGSgACyAD0f6TargetH0VAQGACyACyAD04Nexts4HintH0VAQGANyAA16LegibilityWeightOSgGGtMR);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v98, v101 + v104[12], &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0Vy07WorkoutB0018MirrorIntervalTimeD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAGyAH18DistanceMetricTextVAOGG_AGyAEyAEyAEyAEyAEyAEyAH06EnergyrD0VAVGAEyAH09HeartRaterD0VAH0uv9AggregaterD0VGGAEyAEyA_AH04ZonerD0VGAEyAH0k2InxrD0VA3_GGGAEyAEyAEyA6_AH04PacerD0VGAEyA11_A11_GGAEyA13_AEyAH0qrD0VAH04LapsrD0VGGGGAEyAEyAEyAEyAEyAEyAH07CadencerD0VAA05EmptyD0VGA24_GA24_GAEyAH015ElevationChangerD0VAH016CurrentElevationrD0VGGAEyAEyAH05PowerrD0VA37_GAEyA37_AH014FlightsClimbedrD0VGGGAEyAEyAEyAH015SegmentDurationrD0VAH0q6DetailrD0VGAEyA11_AVGGAEyAEyAVA37_GAEyA37_AGyAGyAH0hkD0VAH0R6DetailVGAA011_ForegroundpO0VyAA5ColorVGGGGGGGAEyAEyAEyAEyA47_A11_GAEyAH012StrideLengthrD0VA70_GGAEyAEyAH019VerticalOscillationrD0VA74_GAEyAH013GroundContactkrD0VA77_GGGAEyAEyA31_AH016DownhillRunCountrD0VGAEyA26_AA6HStackVyACyAGyAA0S0VAH0R9ValueFontVG_AGyAGyA87_AH0R19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAOGtGSgMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0Vy07WorkoutB0018MirrorIntervalTimeD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAGyAH18DistanceMetricTextVAOGG_AGyAEyAEyAEyAEyAEyAEyAH06EnergyrD0VAVGAEyAH09HeartRaterD0VAH0uv9AggregaterD0VGGAEyAEyA_AH04ZonerD0VGAEyAH0k2InxrD0VA3_GGGAEyAEyAEyA6_AH04PacerD0VGAEyA11_A11_GGAEyA13_AEyAH0qrD0VAH04LapsrD0VGGGGAEyAEyAEyAEyAEyAEyAH07CadencerD0VAA05EmptyD0VGA24_GA24_GAEyAH015ElevationChangerD0VAH016CurrentElevationrD0VGGAEyAEyAH05PowerrD0VA37_GAEyA37_AH014FlightsClimbedrD0VGGGAEyAEyAEyAH015SegmentDurationrD0VAH0q6DetailrD0VGAEyA11_AVGGAEyAEyAVA37_GAEyA37_AGyAGyAH0hkD0VAH0R6DetailVGAA011_ForegroundpO0VyAA5ColorVGGGGGGGAEyAEyAEyAEyA47_A11_GAEyAH012StrideLengthrD0VA70_GGAEyAEyAH019VerticalOscillationrD0VA74_GAEyAH013GroundContactkrD0VA77_GGGAEyAEyA31_AH016DownhillRunCountrD0VGAEyA26_AA6HStackVyACyAGyAA0S0VAH0R9ValueFontVG_AGyAGyA87_AH0R19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAOGtGSgMR);
  v105 = v101 + v104[16];
  v107 = v133;
  v106 = v134;
  *v105 = v136;
  *(v105 + 1) = v106;
  *(v105 + 2) = v100;
  *(v105 + 3) = v97;
  *(v105 + 4) = v107;
  v105[40] = 5;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v99, v101 + v104[20], &_s7SwiftUI15ModifiedContentVyACy07WorkoutB020NextIntervalHintViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGAHyAA16LegibilityWeightOSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB020NextIntervalHintViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGAHyAA16LegibilityWeightOSgGGMR);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(&v161, &v166, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB017IntervalsHeroViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAD0ehJ0OGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB017IntervalsHeroViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAD0ehJ0OGGMR);
  v108 = v106;
  v109 = v100;
  v110 = v97;

  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v90, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB020NextIntervalHintViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGAHyAA16LegibilityWeightOSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB020NextIntervalHintViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGAHyAA16LegibilityWeightOSgGGMR);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v147, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0Vy07WorkoutB0018MirrorIntervalTimeD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAGyAH18DistanceMetricTextVAOGG_AGyAEyAEyAEyAEyAEyAEyAH06EnergyrD0VAVGAEyAH09HeartRaterD0VAH0uv9AggregaterD0VGGAEyAEyA_AH04ZonerD0VGAEyAH0k2InxrD0VA3_GGGAEyAEyAEyA6_AH04PacerD0VGAEyA11_A11_GGAEyA13_AEyAH0qrD0VAH04LapsrD0VGGGGAEyAEyAEyAEyAEyAEyAH07CadencerD0VAA05EmptyD0VGA24_GA24_GAEyAH015ElevationChangerD0VAH016CurrentElevationrD0VGGAEyAEyAH05PowerrD0VA37_GAEyA37_AH014FlightsClimbedrD0VGGGAEyAEyAEyAH015SegmentDurationrD0VAH0q6DetailrD0VGAEyA11_AVGGAEyAEyAVA37_GAEyA37_AGyAGyAH0hkD0VAH0R6DetailVGAA011_ForegroundpO0VyAA5ColorVGGGGGGGAEyAEyAEyAEyA47_A11_GAEyAH012StrideLengthrD0VA70_GGAEyAEyAH019VerticalOscillationrD0VA74_GAEyAH013GroundContactkrD0VA77_GGGAEyAEyA31_AH016DownhillRunCountrD0VGAEyA26_AA6HStackVyACyAGyAA0S0VAH0R9ValueFontVG_AGyAGyA87_AH0R19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAOGtGSgMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0Vy07WorkoutB0018MirrorIntervalTimeD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAGyAH18DistanceMetricTextVAOGG_AGyAEyAEyAEyAEyAEyAEyAH06EnergyrD0VAVGAEyAH09HeartRaterD0VAH0uv9AggregaterD0VGGAEyAEyA_AH04ZonerD0VGAEyAH0k2InxrD0VA3_GGGAEyAEyAEyA6_AH04PacerD0VGAEyA11_A11_GGAEyA13_AEyAH0qrD0VAH04LapsrD0VGGGGAEyAEyAEyAEyAEyAEyAH07CadencerD0VAA05EmptyD0VGA24_GA24_GAEyAH015ElevationChangerD0VAH016CurrentElevationrD0VGGAEyAEyAH05PowerrD0VA37_GAEyA37_AH014FlightsClimbedrD0VGGGAEyAEyAEyAH015SegmentDurationrD0VAH0q6DetailrD0VGAEyA11_AVGGAEyAEyAVA37_GAEyA37_AGyAGyAH0hkD0VAH0R6DetailVGAA011_ForegroundpO0VyAA5ColorVGGGGGGGAEyAEyAEyAEyA47_A11_GAEyAH012StrideLengthrD0VA70_GGAEyAEyAH019VerticalOscillationrD0VA74_GAEyAH013GroundContactkrD0VA77_GGGAEyAEyA31_AH016DownhillRunCountrD0VGAEyA26_AA6HStackVyACyAGyAA0S0VAH0R9ValueFontVG_AGyAGyA87_AH0R19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAOGtGSgMR);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v99, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB020NextIntervalHintViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGAHyAA16LegibilityWeightOSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB020NextIntervalHintViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGAHyAA16LegibilityWeightOSgGGMR);

  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v144, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0Vy07WorkoutB0018MirrorIntervalTimeD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAGyAH18DistanceMetricTextVAOGG_AGyAEyAEyAEyAEyAEyAEyAH06EnergyrD0VAVGAEyAH09HeartRaterD0VAH0uv9AggregaterD0VGGAEyAEyA_AH04ZonerD0VGAEyAH0k2InxrD0VA3_GGGAEyAEyAEyA6_AH04PacerD0VGAEyA11_A11_GGAEyA13_AEyAH0qrD0VAH04LapsrD0VGGGGAEyAEyAEyAEyAEyAEyAH07CadencerD0VAA05EmptyD0VGA24_GA24_GAEyAH015ElevationChangerD0VAH016CurrentElevationrD0VGGAEyAEyAH05PowerrD0VA37_GAEyA37_AH014FlightsClimbedrD0VGGGAEyAEyAEyAH015SegmentDurationrD0VAH0q6DetailrD0VGAEyA11_AVGGAEyAEyAVA37_GAEyA37_AGyAGyAH0hkD0VAH0R6DetailVGAA011_ForegroundpO0VyAA5ColorVGGGGGGGAEyAEyAEyAEyA47_A11_GAEyAH012StrideLengthrD0VA70_GGAEyAEyAH019VerticalOscillationrD0VA74_GAEyAH013GroundContactkrD0VA77_GGGAEyAEyA31_AH016DownhillRunCountrD0VGAEyA26_AA6HStackVyACyAGyAA0S0VAH0R9ValueFontVG_AGyAGyA87_AH0R19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAOGtGSgMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0Vy07WorkoutB0018MirrorIntervalTimeD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAGyAH18DistanceMetricTextVAOGG_AGyAEyAEyAEyAEyAEyAEyAH06EnergyrD0VAVGAEyAH09HeartRaterD0VAH0uv9AggregaterD0VGGAEyAEyA_AH04ZonerD0VGAEyAH0k2InxrD0VA3_GGGAEyAEyAEyA6_AH04PacerD0VGAEyA11_A11_GGAEyA13_AEyAH0qrD0VAH04LapsrD0VGGGGAEyAEyAEyAEyAEyAEyAH07CadencerD0VAA05EmptyD0VGA24_GA24_GAEyAH015ElevationChangerD0VAH016CurrentElevationrD0VGGAEyAEyAH05PowerrD0VA37_GAEyA37_AH014FlightsClimbedrD0VGGGAEyAEyAEyAH015SegmentDurationrD0VAH0q6DetailrD0VGAEyA11_AVGGAEyAEyAVA37_GAEyA37_AGyAGyAH0hkD0VAH0R6DetailVGAA011_ForegroundpO0VyAA5ColorVGGGGGGGAEyAEyAEyAEyA47_A11_GAEyAH012StrideLengthrD0VA70_GGAEyAEyAH019VerticalOscillationrD0VA74_GAEyAH013GroundContactkrD0VA77_GGGAEyAEyA31_AH016DownhillRunCountrD0VGAEyA26_AA6HStackVyACyAGyAA0S0VAH0R9ValueFontVG_AGyAGyA87_AH0R19DescriptionCoreFontVGAH26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGAOGtGSgMR);
  *&v166 = v110;
  *(&v166 + 1) = v143;
  *&v167 = v142;
  *(&v167 + 1) = v109;
  *&v168 = v141;
  *(&v168 + 1) = v140;
  *v169 = v139;
  *&v169[16] = v138;
  *&v169[24] = KeyPath;
  v170 = 4;
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(&v166, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB017IntervalsHeroViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAD0ehJ0OGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB017IntervalsHeroViewVAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingK0VyAD0ehJ0OGGMR);
}

uint64_t closure #2 in MirrorIntervalsPlatterView.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v38._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x800000020CB99140;
  v4._countAndFlagsBits = 0xD000000000000011;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v38);

  static WorkoutNotificationFont.multilineTextView(with:lineLimit:)(2, &v30);

  v24 = v32;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v22 = v30;
  v23 = v31;
  type metadata accessor for ElapsedTimeFormatter();
  IntervalsMetricsPublisher.intervalTotalTime.getter();
  *&v30 = MEMORY[0x20F305C20](0, 0);
  *(&v30 + 1) = v6;
  lazy protocol witness table accessor for type String and conformance String();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.607843137 green:0.431372549 blue:0.980392157 alpha:1.0];
  Color.init(uiColor:)();
  v12 = Text.foregroundColor(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  outlined consume of Text.Storage(v7, v9, v11 & 1);

  v28[2] = v24;
  v28[3] = v25;
  v28[4] = v26;
  v29 = v27;
  v28[0] = v22;
  v28[1] = v23;
  v30 = v22;
  v31 = v23;
  v33 = v25;
  v34 = v26;
  v32 = v24;
  LOBYTE(v35) = v27;
  *(a1 + 32) = v24;
  *(a1 + 48) = v25;
  *(a1 + 64) = v34;
  v19 = v35;
  v20 = v31;
  *a1 = v30;
  *(a1 + 16) = v20;
  *(a1 + 80) = v19;
  *(a1 + 88) = v12;
  *(a1 + 96) = v14;
  *(a1 + 104) = v16 & 1;
  *(a1 + 112) = v18;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v28, v36, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGMR);
  outlined copy of Text.Storage(v12, v14, v16 & 1);

  outlined consume of Text.Storage(v12, v14, v16 & 1);

  v36[2] = v24;
  v36[3] = v25;
  v36[4] = v26;
  v37 = v27;
  v36[0] = v22;
  v36[1] = v23;
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(v36, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGMR);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>>, MetricValueFont>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>>, MetricValueFont>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>>, MetricValueFont>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyACyACyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AiA6SpacerVtGGAJ011MetricValueK0VGAOyAJ0iG5StyleOGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyACyACyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AiA6SpacerVtGGAJ011MetricValueK0VGAOyAJ0iG5StyleOGGAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>>, MetricValueFont>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>>, MetricValueFont>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>>, MetricValueFont>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>>, MetricValueFont>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>>, MetricValueFont>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AiA6SpacerVtGGAJ011MetricValueK0VGAOyAJ0iG5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AiA6SpacerVtGGAJ011MetricValueK0VGAOyAJ0iG5StyleOGGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>>, MetricValueFont> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI11_LayoutRootVy07WorkoutB0029MirrorHeroGraphicsMetricsViewC0VGACyxGAA09_Variadicj1_jD0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>>, MetricValueFont>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>>, MetricValueFont> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>>, MetricValueFont> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>>, MetricValueFont> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AiA6SpacerVtGGAJ011MetricValueK0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AiA6SpacerVtGGAJ011MetricValueK0VGMR);
    _s7SwiftUI11_LayoutRootVy07WorkoutB0029MirrorHeroGraphicsMetricsViewC0VGACyxGAA09_Variadicj1_jD0AAWlTm_0(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AiA6SpacerVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AiA6SpacerVtGGMR, MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>>, MetricValueFont> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MirrorIntervalTimeView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MirrorIntervalTimeView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MirrorIntervalTimeView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB022MirrorIntervalTimeViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMR);
    _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type MirrorIntervalTimeView and conformance MirrorIntervalTimeView, type metadata accessor for MirrorIntervalTimeView, &protocol conformance descriptor for MirrorIntervalTimeView);
    _s7SwiftUI11_LayoutRootVy07WorkoutB0029MirrorHeroGraphicsMetricsViewC0VGACyxGAA09_Variadicj1_jD0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MirrorIntervalTimeView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<DistanceMetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DistanceMetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DistanceMetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018DistanceMetricTextVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGMR);
    lazy protocol witness table accessor for type DistanceMetricText and conformance DistanceMetricText();
    _s7SwiftUI11_LayoutRootVy07WorkoutB0029MirrorHeroGraphicsMetricsViewC0VGACyxGAA09_Variadicj1_jD0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DistanceMetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI11_LayoutRootVy07WorkoutB0029MirrorHeroGraphicsMetricsViewC0VGACyxGAA09_Variadicj1_jD0AAWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Text, Spacer)>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for IntervalsHeroView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for IntervalsHeroView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t IntervalsHeroView.offsetStartDate(until:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntervalsMetricsPublisher.intervalStartDate.getter();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    _s7SwiftUI15ModifiedContentVy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGWOhTm_0(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return (*(v11 + 16))(a2, a1, v10);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    WorkoutStatePublisher.pauseTimes.getter();
    WorkoutStatePublisher.lastUnbalancedPauseStart.getter();
    Date.offset(until:pauseTimes:lastUnbalancedPauseStart:)();

    _s7SwiftUI15ModifiedContentVy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGWOhTm_0(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t closure #1 in IntervalsHeroView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for Date();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v73 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGMR);
  MEMORY[0x28223BE20](v77);
  v74 = &v72 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGAA023AccessibilityAttachmentN0VGMR);
  MEMORY[0x28223BE20](v87);
  v78 = &v72 - v6;
  v82 = type metadata accessor for MirrorIntervalTimeView(0);
  MEMORY[0x28223BE20](v82);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA9TupleViewVy07WorkoutB008GoalRingG0V_AA08ModifiedD0VyAH023MirrorDistanceRemainingG0VAA12_FrameLayoutVGtGAH0l12IntervalTimeG0VGALyALyAH013AnimatingOpenirJ0VAA30_EnvironmentKeyWritingModifierVyAH0hG5StyleOGGAA023AccessibilityAttachmentX0VG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA9TupleViewVy07WorkoutB008GoalRingG0V_AA08ModifiedD0VyAH023MirrorDistanceRemainingG0VAA12_FrameLayoutVGtGAH0l12IntervalTimeG0VGALyALyAH013AnimatingOpenirJ0VAA30_EnvironmentKeyWritingModifierVyAH0hG5StyleOGGAA023AccessibilityAttachmentX0VG_GMR);
  MEMORY[0x28223BE20](v84);
  v86 = &v72 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVy07WorkoutB008GoalRingG0V_AA08ModifiedD0VyAH023MirrorDistanceRemainingG0VAA12_FrameLayoutVGtGAH0l12IntervalTimeG0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVy07WorkoutB008GoalRingG0V_AA08ModifiedD0VyAH023MirrorDistanceRemainingG0VAA12_FrameLayoutVGtGAH0l12IntervalTimeG0V_GMR);
  MEMORY[0x28223BE20](v80);
  v81 = (&v72 - v10);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingF0V_AA08ModifiedD0VyAF023MirrorDistanceRemainingF0VAA12_FrameLayoutVGtGAF0k12IntervalTimeF0VGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingF0V_AA08ModifiedD0VyAF023MirrorDistanceRemainingF0VAA12_FrameLayoutVGtGAF0k12IntervalTimeF0VGMR);
  MEMORY[0x28223BE20](v85);
  v83 = &v72 - v11;
  v12 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = type metadata accessor for StepType();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = IntervalsMetricsPublisher.intervalThisStep.getter();
  v89 = a1;
  v79 = v13;
  if (v17)
  {
    v18 = v16;
    v19 = v14;
  }

  else
  {
    v19 = v14;
    (*(v14 + 104))(v16, *MEMORY[0x277D7E708], v13);
    type metadata accessor for NLSessionActivityGoal();
    static NLSessionActivityGoal.makeOpenGoal()();
    v20 = *(a1 + 24);
    UUID.init()();
    type metadata accessor for WorkoutStep();
    swift_allocObject();
    v18 = v16;
    WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  }

  v21 = WorkoutStep.goal.getter();

  v22 = [v21 goalTypeIdentifier];

  if (v22 == 2)
  {
    IntervalsMetricsPublisher.intervalStartDate.getter();
    v23 = IntervalsMetricsPublisher.intervalThisStep.getter();
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      (*(v19 + 104))(v18, *MEMORY[0x277D7E708], v79);
      type metadata accessor for NLSessionActivityGoal();
      static NLSessionActivityGoal.makeOpenGoal()();
      v66 = *(v89 + 24);
      UUID.init()();
      type metadata accessor for WorkoutStep();
      swift_allocObject();
      v24 = WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
    }

    v67 = WorkoutStatePublisher.pauseTimes.getter();
    v68 = v82;
    WorkoutStatePublisher.lastUnbalancedPauseStart.getter();
    if (one-time initialization token for heroHeight != -1)
    {
      swift_once();
    }

    *&v8[v68[5]] = v24;
    *&v8[v68[6]] = v67;
    v69 = static MirrorHeroGraphicsMetricsViewLayout.heroHeight;
    v8[v68[8]] = 1;
    v70 = &v8[v68[9]];
    *v70 = v69;
    v70[8] = 0;
    v8[v68[10]] = 0;
    outlined init with copy of MirrorIntervalTimeView(v8, v81);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD023MirrorDistanceRemainingD0VAA12_FrameLayoutVGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD023MirrorDistanceRemainingD0VAA12_FrameLayoutVGtGMR);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGACyxGAA0hF0AAWlTm_1(&lazy protocol witness table cache variable for type TupleView<(GoalRingView, ModifiedContent<MirrorDistanceRemainingView, _FrameLayout>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD023MirrorDistanceRemainingD0VAA12_FrameLayoutVGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD023MirrorDistanceRemainingD0VAA12_FrameLayoutVGtGMR, MEMORY[0x277CE14C0]);
    lazy protocol witness table accessor for type AnimatingOpenGoalTimeRing and conformance AnimatingOpenGoalTimeRing(&lazy protocol witness table cache variable for type MirrorIntervalTimeView and conformance MirrorIntervalTimeView, type metadata accessor for MirrorIntervalTimeView, &protocol conformance descriptor for MirrorIntervalTimeView);
    v71 = v83;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier>(v71, v86, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingF0V_AA08ModifiedD0VyAF023MirrorDistanceRemainingF0VAA12_FrameLayoutVGtGAF0k12IntervalTimeF0VGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingF0V_AA08ModifiedD0VyAF023MirrorDistanceRemainingF0VAA12_FrameLayoutVGtGAF0k12IntervalTimeF0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MirrorDistanceRemainingView, _FrameLayout>)>, MirrorIntervalTimeView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    _s7SwiftUI15ModifiedContentVy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGWOhTm_0(v71, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingF0V_AA08ModifiedD0VyAF023MirrorDistanceRemainingF0VAA12_FrameLayoutVGtGAF0k12IntervalTimeF0VGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingF0V_AA08ModifiedD0VyAF023MirrorDistanceRemainingF0VAA12_FrameLayoutVGtGAF0k12IntervalTimeF0VGMR);
    return outlined destroy of MirrorIntervalTimeView(v8);
  }

  else
  {
    if (v22 == 1)
    {
      if (!IntervalsMetricsPublisher.intervalThisStep.getter())
      {
        (*(v19 + 104))(v18, *MEMORY[0x277D7E708], v79);
        type metadata accessor for NLSessionActivityGoal();
        static NLSessionActivityGoal.makeOpenGoal()();
        v44 = *(v89 + 24);
        UUID.init()();
        type metadata accessor for WorkoutStep();
        swift_allocObject();
        WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
      }

      v45 = WorkoutStep.goal.getter();

      if (one-time initialization token for heroHeight != -1)
      {
        swift_once();
      }

      v46 = static MirrorHeroGraphicsMetricsViewLayout.heroHeight;
      if (one-time initialization token for lineWidth != -1)
      {
        swift_once();
      }

      v47 = static MirrorRingConstants.lineWidth;
      IntervalsMetricsPublisher.intervalProgress.getter();
      if (v48 < 0.0)
      {
        v48 = 0.0;
      }

      if (v48 <= 1.0)
      {
        v49 = v48;
      }

      else
      {
        v49 = 1.0;
      }

      v50 = IntervalsMetricsPublisher.intervalThisStep.getter();
      if (v50)
      {
        v51 = v50;
        v52 = v89;
      }

      else
      {
        (*(v19 + 104))(v18, *MEMORY[0x277D7E708], v79);
        type metadata accessor for NLSessionActivityGoal();
        static NLSessionActivityGoal.makeOpenGoal()();
        v52 = v89;
        v53 = *(v89 + 24);
        UUID.init()();
        type metadata accessor for WorkoutStep();
        swift_allocObject();
        v51 = WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
      }

      IntervalsMetricsPublisher.intervalDistance.getter();
      v55 = v54;
      v56 = *v52;
      v57 = FIUIDistanceTypeForActivityType();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v91 = v51;
      *(&v91 + 1) = v55;
      *&v92 = v56;
      *(&v92 + 1) = v57;
      v111[2] = v93;
      v111[3] = v94;
      v111[4] = v95;
      v96[2] = v93;
      v96[3] = v94;
      v96[4] = v95;
      v111[0] = v91;
      v111[1] = v92;
      v96[0] = v91;
      v96[1] = v92;
      v102 = v94;
      v103 = v95;
      v100 = v92;
      v101 = v93;
      v99 = v91;
      *&v97 = v45;
      *(&v97 + 1) = v46;
      *&v98 = v47;
      *(&v98 + 1) = v49;
      v104 = v97;
      v105 = v98;
      v109 = v94;
      v110 = v95;
      v107 = v92;
      v108 = v93;
      v106 = v91;
      v58 = v45;
      outlined init with copy of ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier>(&v91, v90, &_s7SwiftUI15ModifiedContentVy07WorkoutB027MirrorDistanceRemainingViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB027MirrorDistanceRemainingViewVAA12_FrameLayoutVGMR);
      v59 = v58;
      outlined init with copy of ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier>(v96, v90, &_s7SwiftUI15ModifiedContentVy07WorkoutB027MirrorDistanceRemainingViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB027MirrorDistanceRemainingViewVAA12_FrameLayoutVGMR);
      _s7SwiftUI15ModifiedContentVy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGWOhTm_0(v111, &_s7SwiftUI15ModifiedContentVy07WorkoutB027MirrorDistanceRemainingViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB027MirrorDistanceRemainingViewVAA12_FrameLayoutVGMR);

      v60 = v109;
      v61 = v81;
      v81[4] = v108;
      v61[5] = v60;
      v61[6] = v110;
      v62 = v105;
      *v61 = v104;
      v61[1] = v62;
      v63 = v107;
      v61[2] = v106;
      v61[3] = v63;
      swift_storeEnumTagMultiPayload();
      outlined init with copy of ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier>(&v97, v90, &_s9WorkoutUI12GoalRingViewV_05SwiftB015ModifiedContentVyAA023MirrorDistanceRemainingE0VAD12_FrameLayoutVGtMd, &_s9WorkoutUI12GoalRingViewV_05SwiftB015ModifiedContentVyAA023MirrorDistanceRemainingE0VAD12_FrameLayoutVGtMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD023MirrorDistanceRemainingD0VAA12_FrameLayoutVGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD023MirrorDistanceRemainingD0VAA12_FrameLayoutVGtGMR);
      _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGACyxGAA0hF0AAWlTm_1(&lazy protocol witness table cache variable for type TupleView<(GoalRingView, ModifiedContent<MirrorDistanceRemainingView, _FrameLayout>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD023MirrorDistanceRemainingD0VAA12_FrameLayoutVGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD023MirrorDistanceRemainingD0VAA12_FrameLayoutVGtGMR, MEMORY[0x277CE14C0]);
      lazy protocol witness table accessor for type AnimatingOpenGoalTimeRing and conformance AnimatingOpenGoalTimeRing(&lazy protocol witness table cache variable for type MirrorIntervalTimeView and conformance MirrorIntervalTimeView, type metadata accessor for MirrorIntervalTimeView, &protocol conformance descriptor for MirrorIntervalTimeView);
      v64 = v83;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier>(v64, v86, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingF0V_AA08ModifiedD0VyAF023MirrorDistanceRemainingF0VAA12_FrameLayoutVGtGAF0k12IntervalTimeF0VGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingF0V_AA08ModifiedD0VyAF023MirrorDistanceRemainingF0VAA12_FrameLayoutVGtGAF0k12IntervalTimeF0VGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MirrorDistanceRemainingView, _FrameLayout>)>, MirrorIntervalTimeView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      _s7SwiftUI15ModifiedContentVy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGWOhTm_0(&v97, &_s9WorkoutUI12GoalRingViewV_05SwiftB015ModifiedContentVyAA023MirrorDistanceRemainingE0VAD12_FrameLayoutVGtMd, &_s9WorkoutUI12GoalRingViewV_05SwiftB015ModifiedContentVyAA023MirrorDistanceRemainingE0VAD12_FrameLayoutVGtMR);
      _s7SwiftUI15ModifiedContentVy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGWOhTm_0(&v91, &_s7SwiftUI15ModifiedContentVy07WorkoutB027MirrorDistanceRemainingViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB027MirrorDistanceRemainingViewVAA12_FrameLayoutVGMR);

      v41 = v64;
      v42 = &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingF0V_AA08ModifiedD0VyAF023MirrorDistanceRemainingF0VAA12_FrameLayoutVGtGAF0k12IntervalTimeF0VGMd;
      v43 = &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingF0V_AA08ModifiedD0VyAF023MirrorDistanceRemainingF0VAA12_FrameLayoutVGtGAF0k12IntervalTimeF0VGMR;
    }

    else
    {
      v25 = v73;
      Date.init()();
      v26 = v74;
      v27 = v89;
      IntervalsHeroView.offsetStartDate(until:)(v25, v74);
      (*(v75 + 8))(v25, v76);
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v28 = WorkoutUIBundle.super.isa;
      v112._object = 0xE000000000000000;
      v29._countAndFlagsBits = 0x4C41565245544E49;
      v29._object = 0xED0000454D49545FLL;
      v30.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v30.value._object = 0xEB00000000656C62;
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      v112._countAndFlagsBits = 0;
      v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v112);

      v33 = swift_allocObject();
      v34 = v27[1];
      *(v33 + 1) = *v27;
      *(v33 + 2) = v34;
      v35 = v27[3];
      *(v33 + 3) = v27[2];
      *(v33 + 4) = v35;
      v36 = type metadata accessor for AnimatingOpenGoalTimeRing(0);
      *(v26 + *(v36 + 20)) = v32;
      v37 = (v26 + *(v36 + 24));
      *v37 = partial apply for closure #1 in closure #1 in IntervalsHeroView.body.getter;
      v37[1] = v33;
      KeyPath = swift_getKeyPath();
      v39 = v26 + *(v77 + 36);
      *v39 = KeyPath;
      *(v39 + 8) = 4;
      outlined init with copy of IntervalsHeroView(v27, &v104);
      lazy protocol witness table accessor for type ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>();
      v40 = v78;
      View.accessibilityIdentifier(_:)();
      _s7SwiftUI15ModifiedContentVy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGWOhTm_0(v26, &_s7SwiftUI15ModifiedContentVy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGMR);
      outlined init with copy of ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier>(v40, v86, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGAA023AccessibilityAttachmentN0VGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MirrorDistanceRemainingView, _FrameLayout>)>, MirrorIntervalTimeView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      v41 = v40;
      v42 = &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGAA023AccessibilityAttachmentN0VGMd;
      v43 = &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGAA023AccessibilityAttachmentN0VGMR;
    }

    return _s7SwiftUI15ModifiedContentVy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGWOhTm_0(v41, v42, v43);
  }
}

double closure #1 in closure #1 in IntervalsHeroView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntervalsHeroView.offsetStartDate(until:)(a1, v5);
  Date.timeIntervalSince(_:)();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t protocol witness for View.body.getter in conformance IntervalsHeroView@<X0>(uint64_t *a2@<X8>)
{
  v4 = v2[1];
  v11[0] = *v2;
  v11[1] = v4;
  v5 = v2[3];
  v11[2] = v2[2];
  v11[3] = v5;
  *a2 = static Alignment.center.getter();
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAIyAA05TupleD0Vy07WorkoutB008GoalRingD0V_AA08ModifiedI0VyAL023MirrorDistanceRemainingD0VAA06_FrameG0VGtGAL0o12IntervalTimeD0VGAPyAPyAL013AnimatingOpenltM0VAA30_EnvironmentKeyWritingModifierVyAL0kD5StyleOGGAA023AccessibilityAttachmentZ0VGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAIyAA05TupleD0Vy07WorkoutB008GoalRingD0V_AA08ModifiedI0VyAL023MirrorDistanceRemainingD0VAA06_FrameG0VGtGAL0o12IntervalTimeD0VGAPyAPyAL013AnimatingOpenltM0VAA30_EnvironmentKeyWritingModifierVyAL0kD5StyleOGGAA023AccessibilityAttachmentZ0VGGGMR);
  closure #1 in IntervalsHeroView.body.getter(v11, a2 + *(v7 + 44));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyAA9TupleViewVy07WorkoutB008GoalRingH0V_ACyAJ023MirrorDistanceRemainingH0VAA12_FrameLayoutVGtGAJ0l12IntervalTimeH0VGACyACyAJ013AnimatingOpenjrK0VAA30_EnvironmentKeyWritingModifierVyAJ0iH5StyleOGGAA023AccessibilityAttachmentX0VGGGA0_GMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyAA9TupleViewVy07WorkoutB008GoalRingH0V_ACyAJ023MirrorDistanceRemainingH0VAA12_FrameLayoutVGtGAJ0l12IntervalTimeH0VGACyACyAJ013AnimatingOpenjrK0VAA30_EnvironmentKeyWritingModifierVyAJ0iH5StyleOGGAA023AccessibilityAttachmentX0VGGGA0_GMR);
  v10 = a2 + *(result + 36);
  *v10 = KeyPath;
  v10[8] = 4;
  return result;
}

unint64_t type metadata accessor for NLSessionActivityGoal()
{
  result = lazy cache variable for type metadata for NLSessionActivityGoal;
  if (!lazy cache variable for type metadata for NLSessionActivityGoal)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NLSessionActivityGoal);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MirrorDistanceRemainingView, _FrameLayout>)>, MirrorIntervalTimeView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MirrorDistanceRemainingView, _FrameLayout>)>, MirrorIntervalTimeView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MirrorDistanceRemainingView, _FrameLayout>)>, MirrorIntervalTimeView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingF0V_AA08ModifiedD0VyAF023MirrorDistanceRemainingF0VAA12_FrameLayoutVGtGAF0k12IntervalTimeF0VGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB008GoalRingF0V_AA08ModifiedD0VyAF023MirrorDistanceRemainingF0VAA12_FrameLayoutVGtGAF0k12IntervalTimeF0VGMR);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGACyxGAA0hF0AAWlTm_1(&lazy protocol witness table cache variable for type TupleView<(GoalRingView, ModifiedContent<MirrorDistanceRemainingView, _FrameLayout>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD023MirrorDistanceRemainingD0VAA12_FrameLayoutVGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB008GoalRingD0V_AA15ModifiedContentVyAD023MirrorDistanceRemainingD0VAA12_FrameLayoutVGtGMR, MEMORY[0x277CE14C0]);
    lazy protocol witness table accessor for type AnimatingOpenGoalTimeRing and conformance AnimatingOpenGoalTimeRing(&lazy protocol witness table cache variable for type MirrorIntervalTimeView and conformance MirrorIntervalTimeView, type metadata accessor for MirrorIntervalTimeView, &protocol conformance descriptor for MirrorIntervalTimeView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MirrorDistanceRemainingView, _FrameLayout>)>, MirrorIntervalTimeView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGAA023AccessibilityAttachmentN0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AnimatingOpenGoalTimeRing and conformance AnimatingOpenGoalTimeRing(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnimatingOpenGoalTimeRing and conformance AnimatingOpenGoalTimeRing(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of MirrorIntervalTimeView(uint64_t a1)
{
  v2 = type metadata accessor for MirrorIntervalTimeView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI15ModifiedContentVy07WorkoutB025AnimatingOpenGoalTimeRingVAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<_ConditionalContent<_ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MirrorDistanceRemainingView, _FrameLayout>)>, MirrorIntervalTimeView>, ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<_ConditionalContent<_ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MirrorDistanceRemainingView, _FrameLayout>)>, MirrorIntervalTimeView>, ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<_ConditionalContent<_ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MirrorDistanceRemainingView, _FrameLayout>)>, MirrorIntervalTimeView>, ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyAA9TupleViewVy07WorkoutB008GoalRingH0V_ACyAJ023MirrorDistanceRemainingH0VAA12_FrameLayoutVGtGAJ0l12IntervalTimeH0VGACyACyAJ013AnimatingOpenjrK0VAA30_EnvironmentKeyWritingModifierVyAJ0iH5StyleOGGAA023AccessibilityAttachmentX0VGGGA0_GMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyAA9TupleViewVy07WorkoutB008GoalRingH0V_ACyAJ023MirrorDistanceRemainingH0VAA12_FrameLayoutVGtGAJ0l12IntervalTimeH0VGACyACyAJ013AnimatingOpenjrK0VAA30_EnvironmentKeyWritingModifierVyAJ0iH5StyleOGGAA023AccessibilityAttachmentX0VGGGA0_GMR);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGACyxGAA0hF0AAWlTm_1(&lazy protocol witness table cache variable for type ZStack<_ConditionalContent<_ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MirrorDistanceRemainingView, _FrameLayout>)>, MirrorIntervalTimeView>, ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier>>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA9TupleViewVy07WorkoutB008GoalRingG0V_AA08ModifiedE0VyAH023MirrorDistanceRemainingG0VAA12_FrameLayoutVGtGAH0l12IntervalTimeG0VGALyALyAH013AnimatingOpenirJ0VAA30_EnvironmentKeyWritingModifierVyAH0hG5StyleOGGAA023AccessibilityAttachmentX0VGGGMd, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA9TupleViewVy07WorkoutB008GoalRingG0V_AA08ModifiedE0VyAH023MirrorDistanceRemainingG0VAA12_FrameLayoutVGtGAH0l12IntervalTimeG0VGALyALyAH013AnimatingOpenirJ0VAA30_EnvironmentKeyWritingModifierVyAH0hG5StyleOGGAA023AccessibilityAttachmentX0VGGGMR, MEMORY[0x277CE11A8]);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGACyxGAA0hF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<_ConditionalContent<_ConditionalContent<TupleView<(GoalRingView, ModifiedContent<MirrorDistanceRemainingView, _FrameLayout>)>, MirrorIntervalTimeView>, ModifiedContent<ModifiedContent<AnimatingOpenGoalTimeRing, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGACyxGAA0hF0AAWlTm_1(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MetricsViewLayout.compressedLayout.getter()
{
  v1 = OBJC_IVAR___WOMetricsViewLayout_compressedLayout;
  swift_beginAccess();
  return *(v0 + v1);
}

void MetricsViewLayout.compressedLayout.setter(char a1)
{
  v3 = OBJC_IVAR___WOMetricsViewLayout_compressedLayout;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id MetricsViewLayout.init(compressedLayout:)(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___WOMetricsViewLayout____lazy_storage___ringBottomPadding];
  *v2 = 0;
  v2[8] = 1;
  v3 = &v1[OBJC_IVAR___WOMetricsViewLayout____lazy_storage___ringDiameter];
  *v3 = 0;
  v3[8] = 1;
  *&v1[OBJC_IVAR___WOMetricsViewLayout_ringThickness] = 0x4010000000000000;
  v4 = &v1[OBJC_IVAR___WOMetricsViewLayout____lazy_storage___metricsViewBottomPadding];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v1[OBJC_IVAR___WOMetricsViewLayout____lazy_storage___glyphTopPadding];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v1[OBJC_IVAR___WOMetricsViewLayout____lazy_storage___laneIndicatorSymbolSize];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v1[OBJC_IVAR___WOMetricsViewLayout____lazy_storage___overlayIndicatorLeadingPadding];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v1[OBJC_IVAR___WOMetricsViewLayout____lazy_storage___overlayIndicatorTrailingPadding];
  *v8 = 0;
  v8[8] = 1;
  v1[OBJC_IVAR___WOMetricsViewLayout_compressedLayout] = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for MetricsViewLayout();
  return objc_msgSendSuper2(&v10, sel_init);
}

double MetricsViewLayout.ringBottomPadding.getter()
{
  v1 = (v0 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___ringBottomPadding);
  if ((*(v0 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___ringBottomPadding + 8) & 1) == 0)
  {
    return *v1;
  }

  v2 = OBJC_IVAR___WOMetricsViewLayout_compressedLayout;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  v6 = specialized UIDevice.screenType.getter();

  v7 = 0.0;
  if (v6 <= 4u)
  {
    if (v6 >= 3u)
    {
      v7 = -3.0;
    }
  }

  else if (v6 > 7u)
  {
    if (v6 == 8)
    {
      v7 = 10.0;
    }

    else if (v6 == 9)
    {
      v7 = 2.0;
    }

    else if (v3)
    {
      v7 = -2.5;
    }

    else
    {
      v7 = 4.5;
    }
  }

  else if (v6 == 5 || v6 == 6)
  {
    v7 = 5.0;
  }

  v8 = objc_opt_self();
  v9 = [v8 mainScreen];
  [v9 scale];
  v11 = v10;

  v12 = [v8 mainScreen];
  [v12 nativeScale];
  v14 = v13;

  if (v11 != v14)
  {
    v15 = [v8 mainScreen];
    [v15 scale];
    v17 = v16;

    v18 = [v8 mainScreen];
    [v18 nativeScale];
    v20 = v19;

    v7 = v7 * (v17 / v20 * 0.95);
  }

  *v1 = v7;
  v1[8] = 0;
  return v7;
}

double MetricsViewLayout.ringDiameter.getter()
{
  v1 = (v0 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___ringDiameter);
  if ((*(v0 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___ringDiameter + 8) & 1) == 0)
  {
    return *v1;
  }

  *v1 = 0x404A000000000000;
  v1[8] = 0;
  return 52.0;
}

double MetricsViewLayout.metricsViewBottomPadding.getter()
{
  v1 = (v0 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___metricsViewBottomPadding);
  if ((*(v0 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___metricsViewBottomPadding + 8) & 1) == 0)
  {
    return *v1;
  }

  v2 = OBJC_IVAR___WOMetricsViewLayout_compressedLayout;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  v6 = specialized UIDevice.screenType.getter();

  v7 = 0.0;
  if (v6 <= 4u)
  {
    if (v6 >= 3u)
    {
      v7 = 12.0;
    }
  }

  else if (v6 > 7u)
  {
    if (v6 == 8 || v6 == 9)
    {
      v7 = 19.5;
    }

    else if (v3)
    {
      v7 = 12.5;
    }

    else
    {
      v7 = 24.0;
    }
  }

  else if (v6 == 5 || v6 == 6)
  {
    v7 = 15.5;
  }

  v8 = objc_opt_self();
  v9 = [v8 mainScreen];
  [v9 scale];
  v11 = v10;

  v12 = [v8 mainScreen];
  [v12 nativeScale];
  v14 = v13;

  if (v11 != v14)
  {
    v15 = [v8 mainScreen];
    [v15 scale];
    v17 = v16;

    v18 = [v8 mainScreen];
    [v18 nativeScale];
    v20 = v19;

    v7 = v7 * (v17 / v20 * 0.95);
  }

  *v1 = v7;
  v1[8] = 0;
  return v7;
}

double MetricsViewLayout.glyphTopPadding.getter()
{
  v1 = (v0 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___glyphTopPadding);
  if ((*(v0 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___glyphTopPadding + 8) & 1) == 0)
  {
    return *v1;
  }

  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  [v3 scale];
  v5 = v4;

  v6 = -16.0 / v5;
  v7 = objc_opt_self();
  v8 = [v7 currentDevice];
  v9 = specialized UIDevice.screenType.getter();

  if (((1 << v9) & 0x7E7) != 0)
  {
    v6 = 0.0;
  }

  v10 = [v2 mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = [v2 mainScreen];
  [v13 nativeScale];
  v15 = v14;

  if (v12 != v15)
  {
    v16 = [v2 mainScreen];
    [v16 scale];
    v18 = v17;

    v19 = [v2 mainScreen];
    [v19 nativeScale];
    v21 = v20;

    v6 = v6 * (v18 / v21 * 0.95);
  }

  *v1 = v6;
  v1[8] = 0;
  return v6;
}

double MetricsViewLayout.laneIndicatorSymbolSize.getter()
{
  v1 = (v0 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___laneIndicatorSymbolSize);
  if ((*(v0 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___laneIndicatorSymbolSize + 8) & 1) == 0)
  {
    return *v1;
  }

  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = specialized UIDevice.screenType.getter();

  v5 = dbl_20CB71410[v4];
  v6 = objc_opt_self();
  v7 = [v6 mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [v6 mainScreen];
  [v10 nativeScale];
  v12 = v11;

  if (v9 != v12)
  {
    v13 = [v6 mainScreen];
    [v13 scale];
    v15 = v14;

    v16 = [v6 mainScreen];
    [v16 nativeScale];
    v18 = v17;

    v5 = v5 * (v15 / v18 * 0.95);
  }

  *v1 = v5;
  v1[8] = 0;
  return v5;
}

double MetricsViewLayout.overlayIndicatorLeadingPadding.getter()
{
  v1 = (v0 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___overlayIndicatorLeadingPadding);
  if ((*(v0 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___overlayIndicatorLeadingPadding + 8) & 1) == 0)
  {
    return *v1;
  }

  *v1 = 0x4018000000000000;
  v1[8] = 0;
  return 6.0;
}

double MetricsViewLayout.overlayIndicatorTrailingPadding.getter()
{
  v1 = (v0 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___overlayIndicatorTrailingPadding);
  if ((*(v0 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___overlayIndicatorTrailingPadding + 8) & 1) == 0)
  {
    return *v1;
  }

  *v1 = 0x402C000000000000;
  v1[8] = 0;
  return 14.0;
}

double static MetricsViewLayout.bottomPadding(for:)(uint64_t a1)
{
  v2 = type metadata accessor for MetricPlatterType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricPlatter.type.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D7E1E8] || v6 == *MEMORY[0x277D7E1A8])
  {
    v8 = MetricPlatter.metrics.getter();
    a1 = MEMORY[0x277D84F90];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = (v9 + 32);
      do
      {
        v15 = *v11++;
        v14 = v15;
        if (v15)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v24 = a1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16) + 1, 1);
            a1 = v24;
          }

          v13 = *(a1 + 16);
          v12 = *(a1 + 24);
          if (v13 >= v12 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
            a1 = v24;
          }

          *(a1 + 16) = v13 + 1;
          *(a1 + 8 * v13 + 32) = v14;
        }

        --v10;
      }

      while (v10);
    }

    goto LABEL_33;
  }

  v17 = 0;
  if (v6 != *MEMORY[0x277D7E1E0] && v6 != *MEMORY[0x277D7E1A0] && v6 != *MEMORY[0x277D7E1B8] && v6 != *MEMORY[0x277D7E1B0] && v6 != *MEMORY[0x277D7E1D8] && v6 != *MEMORY[0x277D7E190] && v6 != *MEMORY[0x277D7E1D0] && v6 != *MEMORY[0x277D7E1C8] && v6 != *MEMORY[0x277D7E198] && v6 != *MEMORY[0x277D7E178] && v6 != *MEMORY[0x277D7E1C0] && v6 != *MEMORY[0x277D7E180] && v6 != *MEMORY[0x277D7E1F0] && v6 != *MEMORY[0x277D7E188])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_33:

    v18 = *(a1 + 16);

    v17 = v18 > 4;
  }

  v19 = objc_allocWithZone(type metadata accessor for MetricsViewLayout());
  v20 = MetricsViewLayout.init(compressedLayout:)(v17);
  v21 = MetricsViewLayout.metricsViewBottomPadding.getter();

  return v21;
}

id MetricsViewLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MetricsViewLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsViewLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int DetailViewFontModifier.TextStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DetailViewFontModifier.TextStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DetailViewFontModifier.TextStyle(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

uint64_t DetailViewFontModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v67 = a2;
  v2 = type metadata accessor for Font.PrivateDesign();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Font.TextStyle();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB006Detaile4FontF0VGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGAKyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB006Detaile4FontF0VGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGAKyAA5ImageV5ScaleOGGMR);
  MEMORY[0x28223BE20](v59);
  v58 = &v52 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA01_e9Modifier_D0Vy07WorkoutB006Detaile4FontJ0VGAA022_EnvironmentKeyWritingJ0VyAA0M0VSgGGARyAA5ImageV5ScaleOGG_Qo_ARyAA13TextAlignmentOGGARySiSgGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA01_e9Modifier_D0Vy07WorkoutB006Detaile4FontJ0VGAA022_EnvironmentKeyWritingJ0VyAA0M0VSgGGARyAA5ImageV5ScaleOGG_Qo_ARyAA13TextAlignmentOGGARySiSgGGAA13_OffsetEffectVGMR);
  MEMORY[0x28223BE20](v66);
  v60 = &v52 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAiAE10fontWeightyQrAA4FontV0M0VSgFQOyAGyAA01_g9Modifier_D0Vy07WorkoutB006DetailgnO0VGAA022_EnvironmentKeyWritingO0VyAQSgGG_Qo__Qo_A0_yAA13TextAlignmentOGGAW17HeaderHyphenationVGAGyAGyAGyAiAEAJyQrANFQOyAGyA3_A0_yAA5ImageV5ScaleOGG_Qo_A8_GA0_ySiSgGGAA13_OffsetEffectVG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAiAE10fontWeightyQrAA4FontV0M0VSgFQOyAGyAA01_g9Modifier_D0Vy07WorkoutB006DetailgnO0VGAA022_EnvironmentKeyWritingO0VyAQSgGG_Qo__Qo_A0_yAA13TextAlignmentOGGAW17HeaderHyphenationVGAGyAGyAGyAiAEAJyQrANFQOyAGyA3_A0_yAA5ImageV5ScaleOGG_Qo_A8_GA0_ySiSgGGAA13_OffsetEffectVG_GMR);
  MEMORY[0x28223BE20](v64);
  v65 = &v52 - v10;
  v11 = type metadata accessor for Font.Leading();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB006Detaile4FontF0VGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB006Detaile4FontF0VGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMR);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA01_c9Modifier_H0Vy07WorkoutB006DetailcfI0VGAA022_EnvironmentKeyWritingI0VyAFSgGG_Qo_Md, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA01_c9Modifier_H0Vy07WorkoutB006DetailcfI0VGAA022_EnvironmentKeyWritingI0VyAFSgGG_Qo_MR);
  v53 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA01_e9Modifier_D0Vy07WorkoutB006DetailelM0VGAA022_EnvironmentKeyWritingM0VyAMSgGG_Qo__Qo_AXyAA13TextAlignmentOGGAS17HeaderHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA01_e9Modifier_D0Vy07WorkoutB006DetailelM0VGAA022_EnvironmentKeyWritingM0VyAMSgGG_Qo__Qo_AXyAA13TextAlignmentOGGAS17HeaderHyphenationVGMR);
  v21 = MEMORY[0x28223BE20](v63);
  v23 = &v52 - v22;
  if (*v61)
  {
    v25 = v54;
    v24 = v55;
    (*(v54 + 104))(v7, *MEMORY[0x277CE0AA0], v55, v21);
    static Font.PrivateDesign.compactRounded.getter();
    static Font.Weight.regular.getter();
    static Font.system(_:design:weight:)();
    (*(v56 + 8))(v4, v57);
    (*(v25 + 8))(v7, v24);
    (*(v12 + 104))(v14, *MEMORY[0x277CE0A10], v11);
    v26 = Font.leading(_:)();

    (*(v12 + 8))(v14, v11);
    KeyPath = swift_getKeyPath();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006Detailc4FontD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006Detailc4FontD0VGMR);
    v29 = v58;
    (*(*(v28 - 8) + 16))(v58, v62, v28);
    v30 = (v29 + *(v15 + 36));
    *v30 = KeyPath;
    v30[1] = v26;
    v31 = (v29 + *(v59 + 36));
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
    v33 = *MEMORY[0x277CE1050];
    v34 = type metadata accessor for Image.Scale();
    (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
    *v31 = swift_getKeyPath();
    static Edge.Set.horizontal.getter();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    v35 = v60;
    View.scenePadding(_:)();
    outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>(v29, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB006Detaile4FontF0VGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGAKyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB006Detaile4FontF0VGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGAKyAA5ImageV5ScaleOGGMR);
    v36 = swift_getKeyPath();
    v37 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA01_e9Modifier_D0Vy07WorkoutB006Detaile4FontJ0VGAA022_EnvironmentKeyWritingJ0VyAA0M0VSgGGARyAA5ImageV5ScaleOGG_Qo_ARyAA13TextAlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA01_e9Modifier_D0Vy07WorkoutB006Detaile4FontJ0VGAA022_EnvironmentKeyWritingJ0VyAA0M0VSgGGARyAA5ImageV5ScaleOGG_Qo_ARyAA13TextAlignmentOGGMR) + 36);
    *v37 = v36;
    *(v37 + 8) = 1;
    v38 = swift_getKeyPath();
    v39 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA01_e9Modifier_D0Vy07WorkoutB006Detaile4FontJ0VGAA022_EnvironmentKeyWritingJ0VyAA0M0VSgGGARyAA5ImageV5ScaleOGG_Qo_ARyAA13TextAlignmentOGGARySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA01_e9Modifier_D0Vy07WorkoutB006Detaile4FontJ0VGAA022_EnvironmentKeyWritingJ0VyAA0M0VSgGGARyAA5ImageV5ScaleOGG_Qo_ARyAA13TextAlignmentOGGARySiSgGGMR) + 36);
    *v39 = v38;
    *(v39 + 8) = 2;
    *(v39 + 16) = 0;
    v40 = v65;
    *(v35 + *(v66 + 36)) = xmmword_20CB71470;
    v41 = &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA01_e9Modifier_D0Vy07WorkoutB006Detaile4FontJ0VGAA022_EnvironmentKeyWritingJ0VyAA0M0VSgGGARyAA5ImageV5ScaleOGG_Qo_ARyAA13TextAlignmentOGGARySiSgGGAA13_OffsetEffectVGMd;
    v42 = &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA01_e9Modifier_D0Vy07WorkoutB006Detaile4FontJ0VGAA022_EnvironmentKeyWritingJ0VyAA0M0VSgGGARyAA5ImageV5ScaleOGG_Qo_ARyAA13TextAlignmentOGGARySiSgGGAA13_OffsetEffectVGMR;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _OffsetEffect>(v35, v40, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA01_e9Modifier_D0Vy07WorkoutB006Detaile4FontJ0VGAA022_EnvironmentKeyWritingJ0VyAA0M0VSgGGARyAA5ImageV5ScaleOGG_Qo_ARyAA13TextAlignmentOGGARySiSgGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA01_e9Modifier_D0Vy07WorkoutB006Detaile4FontJ0VGAA022_EnvironmentKeyWritingJ0VyAA0M0VSgGGARyAA5ImageV5ScaleOGG_Qo_ARyAA13TextAlignmentOGGARySiSgGGAA13_OffsetEffectVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v43 = v35;
  }

  else
  {
    static Font.body.getter();
    (*(v12 + 104))(v14, *MEMORY[0x277CE0A10], v11);
    v44 = Font.leading(_:)();

    (*(v12 + 8))(v14, v11);
    v45 = swift_getKeyPath();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006Detailc4FontD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006Detailc4FontD0VGMR);
    (*(*(v46 - 8) + 16))(v17, v62, v46);
    v47 = &v17[*(v15 + 36)];
    *v47 = v45;
    v47[1] = v44;
    static Font.Weight.bold.getter();
    v48 = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    View.fontWeight(_:)();
    outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>(v17, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB006Detaile4FontF0VGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB006Detaile4FontF0VGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMR);
    static Edge.Set.horizontal.getter();
    v68 = v15;
    v69 = v48;
    swift_getOpaqueTypeConformance2();
    View.scenePadding(_:)();
    (*(v53 + 8))(v20, v18);
    v49 = swift_getKeyPath();
    v50 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA01_e9Modifier_D0Vy07WorkoutB006DetailelM0VGAA022_EnvironmentKeyWritingM0VyAMSgGG_Qo__Qo_AXyAA13TextAlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA01_e9Modifier_D0Vy07WorkoutB006DetailelM0VGAA022_EnvironmentKeyWritingM0VyAMSgGG_Qo__Qo_AXyAA13TextAlignmentOGGMR) + 36)];
    *v50 = v49;
    v50[8] = 1;
    v41 = &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA01_e9Modifier_D0Vy07WorkoutB006DetailelM0VGAA022_EnvironmentKeyWritingM0VyAMSgGG_Qo__Qo_AXyAA13TextAlignmentOGGAS17HeaderHyphenationVGMd;
    v42 = &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA01_e9Modifier_D0Vy07WorkoutB006DetailelM0VGAA022_EnvironmentKeyWritingM0VyAMSgGG_Qo__Qo_AXyAA13TextAlignmentOGGAS17HeaderHyphenationVGMR;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _OffsetEffect>(v23, v65, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA01_e9Modifier_D0Vy07WorkoutB006DetailelM0VGAA022_EnvironmentKeyWritingM0VyAMSgGG_Qo__Qo_AXyAA13TextAlignmentOGGAS17HeaderHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA01_e9Modifier_D0Vy07WorkoutB006DetailelM0VGAA022_EnvironmentKeyWritingM0VyAMSgGG_Qo__Qo_AXyAA13TextAlignmentOGGAS17HeaderHyphenationVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v43 = v23;
  }

  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _OffsetEffect>(v43, v41, v42);
}

uint64_t key path getter for EnvironmentValues.multilineTextAlignment : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for EnvironmentValues.imageScale : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.imageScale.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB006Detaile4FontF0VGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGAKyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB006Detaile4FontF0VGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGAKyAA5ImageV5ScaleOGGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<DetailViewFontModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB006Detaile4FontF0VGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB006Detaile4FontF0VGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMR);
    lazy protocol witness table accessor for type _ViewModifier_Content<DetailViewFontModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<DetailViewFontModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006Detailc4FontD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB006Detailc4FontD0VGMR, MEMORY[0x277CE04B0]);
    lazy protocol witness table accessor for type _ViewModifier_Content<DetailViewFontModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA01_e9Modifier_D0Vy07WorkoutB006DetailelM0VGAA022_EnvironmentKeyWritingM0VyAMSgGG_Qo__Qo_AXyAA13TextAlignmentOGGAS17HeaderHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA01_e9Modifier_D0Vy07WorkoutB006DetailelM0VGAA022_EnvironmentKeyWritingM0VyAMSgGG_Qo__Qo_AXyAA13TextAlignmentOGGAS17HeaderHyphenationVGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HeaderHyphenation and conformance HeaderHyphenation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA01_e9Modifier_D0Vy07WorkoutB006DetailelM0VGAA022_EnvironmentKeyWritingM0VyAMSgGG_Qo__Qo_AXyAA13TextAlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA01_e9Modifier_D0Vy07WorkoutB006DetailelM0VGAA022_EnvironmentKeyWritingM0VyAMSgGG_Qo__Qo_AXyAA13TextAlignmentOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA01_c9Modifier_H0Vy07WorkoutB006DetailcfI0VGAA022_EnvironmentKeyWritingI0VyAFSgGG_Qo_Md, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA01_c9Modifier_H0Vy07WorkoutB006DetailcfI0VGAA022_EnvironmentKeyWritingI0VyAFSgGG_Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB006Detaile4FontF0VGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB006Detaile4FontF0VGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<DetailViewFontModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA01_e9Modifier_D0Vy07WorkoutB006Detaile4FontJ0VGAA022_EnvironmentKeyWritingJ0VyAA0M0VSgGGARyAA5ImageV5ScaleOGG_Qo_ARyAA13TextAlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA01_e9Modifier_D0Vy07WorkoutB006Detaile4FontJ0VGAA022_EnvironmentKeyWritingJ0VyAA0M0VSgGGARyAA5ImageV5ScaleOGG_Qo_ARyAA13TextAlignmentOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB006Detaile4FontF0VGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGAKyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB006Detaile4FontF0VGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGAKyAA5ImageV5ScaleOGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<DetailViewFontModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA01_e9Modifier_D0Vy07WorkoutB006Detaile4FontJ0VGAA022_EnvironmentKeyWritingJ0VyAA0M0VSgGGARyAA5ImageV5ScaleOGG_Qo_ARyAA13TextAlignmentOGGARySiSgGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA01_e9Modifier_D0Vy07WorkoutB006Detaile4FontJ0VGAA022_EnvironmentKeyWritingJ0VyAA0M0VSgGGARyAA5ImageV5ScaleOGG_Qo_ARyAA13TextAlignmentOGGARySiSgGGAA13_OffsetEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA01_e9Modifier_D0Vy07WorkoutB006Detaile4FontJ0VGAA022_EnvironmentKeyWritingJ0VyAA0M0VSgGGARyAA5ImageV5ScaleOGG_Qo_ARyAA13TextAlignmentOGGARySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyACyAA01_e9Modifier_D0Vy07WorkoutB006Detaile4FontJ0VGAA022_EnvironmentKeyWritingJ0VyAA0M0VSgGGARyAA5ImageV5ScaleOGG_Qo_ARyAA13TextAlignmentOGGARySiSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<DetailViewFontModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<DetailViewFontModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailViewFontModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _OffsetEffect>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _OffsetEffect>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DetailViewFontModifier.TextStyle and conformance DetailViewFontModifier.TextStyle()
{
  result = lazy protocol witness table cache variable for type DetailViewFontModifier.TextStyle and conformance DetailViewFontModifier.TextStyle;
  if (!lazy protocol witness table cache variable for type DetailViewFontModifier.TextStyle and conformance DetailViewFontModifier.TextStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailViewFontModifier.TextStyle and conformance DetailViewFontModifier.TextStyle);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetailViewFontModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailViewFontModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAgAE10fontWeightyQrAA4FontV0L0VSgFQOyAEyAA01_f9Modifier_D0Vy07WorkoutB006DetailfmN0VGAA022_EnvironmentKeyWritingN0VyAOSgGG_Qo__Qo_AZyAA13TextAlignmentOGGAU17HeaderHyphenationVGAEyAEyAEyAgAEAHyQrALFQOyAEyA1_AZyAA5ImageV5ScaleOGG_Qo_A6_GAZySiSgGGAA13_OffsetEffectVGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAgAE10fontWeightyQrAA4FontV0L0VSgFQOyAEyAA01_f9Modifier_D0Vy07WorkoutB006DetailfmN0VGAA022_EnvironmentKeyWritingN0VyAOSgGG_Qo__Qo_AZyAA13TextAlignmentOGGAU17HeaderHyphenationVGAEyAEyAEyAgAEAHyQrALFQOyAEyA1_AZyAA5ImageV5ScaleOGG_Qo_A6_GAZySiSgGGAA13_OffsetEffectVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, HeaderHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Int?>>, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DetailViewFontModifier and conformance DetailViewFontModifier()
{
  result = lazy protocol witness table cache variable for type DetailViewFontModifier and conformance DetailViewFontModifier;
  if (!lazy protocol witness table cache variable for type DetailViewFontModifier and conformance DetailViewFontModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailViewFontModifier and conformance DetailViewFontModifier);
  }

  return result;
}

uint64_t StatefulPreviewWrapper.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(a4 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  (*(v14 + 16))(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17, v15);
  State.init(wrappedValue:)();
  (*(v14 + 8))(a1, a4);
  result = type metadata accessor for StatefulPreviewWrapper(0, a4, a5, a6);
  v19 = (a7 + *(result + 44));
  *v19 = a2;
  v19[1] = a3;
  return result;
}

uint64_t StatefulPreviewWrapper.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v20 = a2;
  v19 = type metadata accessor for Binding();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v19 - v5;
  v7 = *(a1 + 24);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  v15 = *(v2 + *(a1 + 44));
  type metadata accessor for State();
  State.projectedValue.getter();
  v15(v6);
  (*(v4 + 8))(v6, v19);
  v16 = *(v8 + 16);
  v16(v14, v11, v7);
  v17 = *(v8 + 8);
  v17(v11, v7);
  v16(v20, v14, v7);
  return (v17)(v14, v7);
}

unint64_t type metadata completion function for StatefulPreviewWrapper(uint64_t a1)
{
  result = type metadata accessor for State();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StatefulPreviewWrapper(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v7 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v6;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v6 + (v10 | v16) + 1;
}

void storeEnumTagSinglePayload for StatefulPreviewWrapper(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v9 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
    v15 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v11 = a3 - v8;
    if (((v9 + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
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

    v15 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_20:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
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

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v19 = v9 + 8;
      if (v6 < 0x7FFFFFFF)
      {
        v22 = (&a1[v19 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v22 = a2 & 0x7FFFFFFF;
          v22[1] = 0;
        }

        else
        {
          *v22 = a2 - 1;
        }
      }

      else if (v7 >= a2)
      {
        v23 = *(v5 + 56);

        v23();
      }

      else if (v9 != -8)
      {
        v20 = ~v7 + a2;
        v21 = a1;
        bzero(a1, v19);
        *v21 = v20;
      }

      return;
    }
  }

  if (((v9 + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v8 + a2;
    v18 = a1;
    bzero(a1, ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    a1 = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&a1[v10] = v16;
    }

    else
    {
      *&a1[v10] = v16;
    }
  }

  else if (v14)
  {
    a1[v10] = v16;
  }
}

BOOL UITraitEnvironment.isAppearanceInactive.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 activeAppearance];

  return v2 == 0;
}

uint64_t WorkoutBrowsingViewiOS.$navigationModel.getter()
{
  type metadata accessor for ConfigurationNavigationModel(0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);

  return EnvironmentObject.projectedValue.getter();
}

uint64_t WorkoutBrowsingViewiOS.scrollingCoordinator.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v8 = outlined consume of Environment<WorkoutScrollingCoordinator?>.Content(v5);
    (*(v2 + 8))(v4, v1, v8);
    return v10[1];
  }

  return v5;
}

uint64_t WorkoutBrowsingViewiOS.$isAddWorkoutViewPresented.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  return v2;
}

uint64_t WorkoutBrowsingViewiOS.devicesProvider.getter(uint64_t a1)
{
  type metadata accessor for WorkoutDevicesProvider();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider, MEMORY[0x277D7DAA8], MEMORY[0x277D7DAA0]);

  return StateObject.wrappedValue.getter();
}

uint64_t WorkoutBrowsingViewiOS.$isPresentingManualLoggingView.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  return v2;
}

uint64_t WorkoutBrowsingViewiOS.scrollToActivityType.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMR);
  State.wrappedValue.getter();
  return v2;
}

uint64_t property wrapper backing initializer of WorkoutBrowsingViewiOS.scrollToActivityType(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR);
  State.init(wrappedValue:)();
  return v2;
}

uint64_t WorkoutBrowsingViewiOS.scrollToExistingActivityType.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7SwiftUI5StateVySo23FIUIWorkoutActivityTypeCSgGMR);
  State.wrappedValue.getter();
  return v2;
}

BOOL WorkoutBrowsingViewiOS.swipeToDeleteEnabled.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutReadinessChecker();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  WorkoutBrowsingViewiOS.devicesProvider.getter(a1);
  WorkoutReadinessChecker.init(workoutDevicesProvider:)();
  v6 = WorkoutReadinessChecker.supportsExternalHeartRateSensorFeatures()();
  v7 = *(v3 + 8);
  v7(v5, v2);
  if (v6)
  {
    return 1;
  }

  else
  {
    WorkoutBrowsingViewiOS.devicesProvider.getter(a1);
    WorkoutReadinessChecker.init(workoutDevicesProvider:)();
    v8 = WorkoutReadinessChecker.supportsPairedWatchFeatures()();
    v7(v5, v2);
  }

  return v8;
}

uint64_t WorkoutBrowsingViewiOS.init(activityMoveMode:formattingManager:dataSource:healthStore:occurrenceStore:makeFitnessPlusSampleContentView:inferenceClient:snapshotClient:workoutVoiceAvailabilityProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v66 = a7;
  v60 = a5;
  v67 = a10;
  v68 = a8;
  v61 = a11;
  v62 = a6;
  v18 = type metadata accessor for WorkoutReadinessChecker();
  v64 = *(v18 - 8);
  v65 = v18;
  MEMORY[0x28223BE20](v18);
  v63 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A19ReadinessCheckErrorOSgMd, &_s11WorkoutCore0A19ReadinessCheckErrorOSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v60 - v21;
  type metadata accessor for ConfigurationNavigationModel(0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  *a9 = EnvironmentObject.init()();
  *(a9 + 8) = v23;
  type metadata accessor for WorkoutScrollingCoordinator(0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator, type metadata accessor for WorkoutScrollingCoordinator, &protocol conformance descriptor for WorkoutScrollingCoordinator);
  *(a9 + 64) = Environment.init<A>(_:)();
  *(a9 + 72) = v24 & 1;
  v26 = type metadata accessor for WorkoutBrowsingViewiOS(0, a12, a13, v25);
  v27 = a9 + v26[21];
  v70 = 0;
  State.init(wrappedValue:)();
  v28 = v72;
  *v27 = v71;
  *(v27 + 8) = v28;
  v29 = a9 + v26[22];
  *v29 = implicit closure #2 in implicit closure #1 in variable initialization expression of WorkoutBrowsingViewiOS._devicesProvider;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  v30 = a9 + v26[23];
  v70 = 0;
  State.init(wrappedValue:)();
  v31 = v72;
  *v30 = v71;
  *(v30 + 8) = v31;
  v32 = (a9 + v26[24]);
  *v32 = property wrapper backing initializer of WorkoutBrowsingViewiOS.scrollToActivityType(0);
  v32[1] = v33;
  v34 = (a9 + v26[25]);
  *v34 = property wrapper backing initializer of WorkoutBrowsingViewiOS.scrollToActivityType(0);
  v34[1] = v35;
  v36 = v26[27];
  *(a9 + v36) = [objc_allocWithZone(type metadata accessor for SafetyMonitorManager(0)) init];
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  type metadata accessor for ActivityPickerDataSource();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type ActivityPickerDataSource and conformance ActivityPickerDataSource, MEMORY[0x277D7E470], MEMORY[0x277D7E468]);

  *(a9 + 32) = ObservedObject.init(wrappedValue:)();
  *(a9 + 40) = v37;
  v38 = v60;
  *(a9 + 80) = a4;
  *(a9 + 88) = v38;
  v39 = v26[17];
  v40 = type metadata accessor for InferenceClient();
  v41 = *(v40 - 8);
  (*(v41 + 16))(a9 + v39, v68, v40);
  v42 = v62;
  *(a9 + v26[18]) = v61;
  v43 = (a9 + v26[20]);
  v44 = v66;
  *v43 = v42;
  v43[1] = v44;
  v66 = a3;
  v45 = ActivityPickerDataSource.standardActivityItemsDataSource.getter();
  v46 = StandardActivityItemsDataSource.wheelchairUseProvider.getter();

  type metadata accessor for Dependencies();
  _sSo17OS_dispatch_queueCMaTm_0(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v47 = static OS_dispatch_queue.main.getter();
  swift_getObjectType();
  v48 = specialized static Dependencies.workout(wheelchairStatusProvider:queue:)(v46, v47);

  v49 = type metadata accessor for DependenciesWrapper();
  v50 = objc_allocWithZone(v49);
  *&v50[OBJC_IVAR___SMDependencies_dependencies] = v48;
  v69.receiver = v50;
  v69.super_class = v49;

  v51 = objc_msgSendSuper2(&v69, sel_init);

  swift_unknownObjectRelease();
  *(a9 + 96) = v51;
  type metadata accessor for SeymourDataSource(0);
  v52 = v51;

  Dependencies.resolve<A>(failureHandler:)();

  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type SeymourDataSource and conformance SeymourDataSource, type metadata accessor for SeymourDataSource, &protocol conformance descriptor for SeymourDataSource);
  *(a9 + 48) = ObservedObject.init(wrappedValue:)();
  *(a9 + 56) = v53;
  type metadata accessor for WorkoutDevicesProvider();
  static WorkoutDevicesProvider.shared.getter();
  v54 = v63;
  WorkoutReadinessChecker.init(workoutDevicesProvider:)();
  WorkoutReadinessChecker.checkReadiness()();
  (*(v64 + 8))(v54, v65);
  v55 = type metadata accessor for WorkoutReadinessCheckError();
  v56 = *(v55 - 8);
  if ((*(v56 + 48))(v22, 1, v55) == 1)
  {
    outlined destroy of WorkoutReadinessCheckError?(v22, &_s11WorkoutCore0A19ReadinessCheckErrorOSgMd, &_s11WorkoutCore0A19ReadinessCheckErrorOSgMR);
  }

  else
  {
    WorkoutReadinessCheckError.appStorageKey.getter();
    (*(v56 + 8))(v22, v55);
  }

  v57 = AppStorage.init<A>(wrappedValue:_:store:)();

  v58 = type metadata accessor for SnapshotClient();
  (*(*(v58 - 8) + 8))(v67, v58);
  result = (*(v41 + 8))(v68, v40);
  *(a9 + v26[19]) = v57;
  return result;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WorkoutBrowsingViewiOS.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a1;
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd, &_s7SwiftUI7BindingVyAA14NavigationPathVGMR);
  MEMORY[0x28223BE20](v3 - 8);
  v81 = &v77 - v4;
  v77 = type metadata accessor for NavigationPath();
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6IDViewVyAA9EmptyViewVSSGMd, &_s7SwiftUI6IDViewVyAA9EmptyViewVSSGMR);
  v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGSgMR);
  v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP6TipKitE03tipE5StyleyQrqd__AF0feI0Rd__lFQOyAF0fE0VyAF03AnyF0VG_07WorkoutB00fg22SafetyCheckInRemindersfI0VQo_AN17ZeroListRowInsetsVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP6TipKitE03tipE5StyleyQrqd__AF0feI0Rd__lFQOyAF0fE0VyAF03AnyF0VG_07WorkoutB00fg22SafetyCheckInRemindersfI0VQo_AN17ZeroListRowInsetsVGMR);
  v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGSiAA15ModifiedContentVyAIyAIyAIy0eB00gH7ViewiOSVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0H15NavigationModelCSgGGANySo13HKHealthStoreCSgGGANyAD0eh10OccurrenceY0CSgGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGSiAA15ModifiedContentVyAIyAIyAIy0eB00gH7ViewiOSVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0H15NavigationModelCSgGGANySo13HKHealthStoreCSgGGANyAD0eh10OccurrenceY0CSgGGGMR);
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGACyACyACyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipE9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVACyACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0gB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_D17ShapeKindModifierVyAA6CircleVGGSgtGG_ACyACyAA4TextVA3_y0H8Graphics7CGFloatVGGA36_GACyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AF0G25VoiceAvailabilityProviderCQo_SgACyACyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGA113_yAA16OnDeleteTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGACyACyACyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipE9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVACyACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0gB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_D17ShapeKindModifierVyAA6CircleVGGSgtGG_ACyACyAA4TextVA3_y0H8Graphics7CGFloatVGGA36_GACyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AF0G25VoiceAvailabilityProviderCQo_SgACyACyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGA113_yAA16OnDeleteTraitKeyVGGMR);
  v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGAA023AccessibilityAttachmentN0VGMR);
  v78 = *(a1 + 16);
  v96 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  v6 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v90 = MEMORY[0x277D84A98];
  v91 = v6;
  v92 = MEMORY[0x277D84AA8];
  v93 = WitnessTable;
  type metadata accessor for List();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMR);
  v8 = type metadata accessor for ModifiedContent();
  v9 = swift_getWitnessTable();
  v10 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMR, MEMORY[0x277CE0868]);
  v88 = v9;
  v89 = v10;
  v11 = swift_getWitnessTable();
  v90 = v8;
  v91 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v90 = v8;
  v91 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v90 = OpaqueTypeMetadata2;
  v91 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMR);
  v14 = type metadata accessor for ModifiedContent();
  v15 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  v90 = OpaqueTypeMetadata2;
  v91 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v17 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMR, MEMORY[0x277CE04A0]);
  v86 = v16;
  v87 = v17;
  v18 = swift_getWitnessTable();
  v90 = v5;
  v91 = v14;
  v92 = v15;
  v93 = v18;
  v19 = type metadata accessor for SubscriptionView();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore26StandardActivityPickerItemCGMd, &_sSay11WorkoutCore26StandardActivityPickerItemCGMR);
  v21 = swift_getWitnessTable();
  v22 = lazy protocol witness table accessor for type [StandardActivityPickerItem] and conformance <A> [A]();
  v90 = v19;
  v91 = v20;
  v92 = v21;
  v93 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR);
  v90 = v19;
  v91 = v20;
  v92 = v21;
  v93 = v22;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = lazy protocol witness table accessor for type FIUIWorkoutActivityType? and conformance <A> A?();
  v90 = v23;
  v91 = v24;
  v92 = v25;
  v93 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSbSgMd, &_sSbSgMR);
  v90 = v23;
  v91 = v24;
  v92 = v25;
  v93 = v26;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  v90 = v27;
  v91 = v28;
  v92 = v29;
  v93 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v90 = v27;
  v91 = v28;
  v92 = v29;
  v93 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v90 = v31;
  v91 = v24;
  v92 = v32;
  v93 = v26;
  swift_getOpaqueTypeMetadata2();
  v90 = v31;
  v91 = v24;
  v92 = v32;
  v93 = v26;
  swift_getOpaqueTypeConformance2();
  v33 = type metadata accessor for ScrollViewReader();
  v34 = _sSo17OS_dispatch_queueCMaTm_0(255, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy07WorkoutB016ActivityTypeRoomV_0I4Core0I25VoiceAvailabilityProviderCQo_AA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy07WorkoutB016ActivityTypeRoomV_0I4Core0I25VoiceAvailabilityProviderCQo_AA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGMR);
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x277D85378];
  v38 = _sSo13HKHealthStoreCAB7Combine16ObservableObject9WorkoutUIWlTm_0(&lazy protocol witness table cache variable for type FIUIWorkoutActivityType and conformance NSObject, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810, MEMORY[0x277D85378]);
  v39 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>();
  v90 = v33;
  v91 = v34;
  v92 = v35;
  v93 = v36;
  v94 = v38;
  v95 = v39;
  v40 = swift_getOpaqueTypeMetadata2();
  v41 = type metadata accessor for AddWorkoutList(255);
  v90 = v33;
  v91 = v34;
  v92 = v35;
  v93 = v36;
  v94 = v38;
  v95 = v39;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type AddWorkoutList and conformance AddWorkoutList, type metadata accessor for AddWorkoutList, &protocol conformance descriptor for AddWorkoutList);
  v90 = v40;
  v91 = v41;
  v92 = v42;
  v93 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v45 = type metadata accessor for ManagedConfigurationSourcePickerItem();
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB036ManagedConfigurationsUpcomingViewiOSVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD28ConfigurationNavigationModelCSgGGAHySo13HKHealthStoreCSgGGAHy0E4Core0eq10OccurrenceU0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB036ManagedConfigurationsUpcomingViewiOSVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD28ConfigurationNavigationModelCSgGGAHySo13HKHealthStoreCSgGGAHy0E4Core0eq10OccurrenceU0CSgGGMR);
  v90 = v40;
  v91 = v41;
  v92 = v42;
  v93 = v43;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance NSObject, MEMORY[0x277D7E6E8], v37);
  v49 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsUpcomingViewiOS, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>> and conformance <> ModifiedContent<A, B>();
  v90 = v44;
  v91 = v45;
  v92 = v46;
  v93 = v47;
  v94 = v48;
  v95 = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  v51 = type metadata accessor for ManualWorkoutLoggingView(255);
  v90 = v44;
  v91 = v45;
  v92 = v46;
  v93 = v47;
  v94 = v48;
  v95 = v49;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type ManualWorkoutLoggingView and conformance ManualWorkoutLoggingView, type metadata accessor for ManualWorkoutLoggingView, &protocol conformance descriptor for ManualWorkoutLoggingView);
  v90 = v50;
  v91 = v51;
  v92 = v52;
  v93 = v53;
  v54 = swift_getOpaqueTypeMetadata2();
  v90 = v50;
  v91 = v51;
  v92 = v52;
  v93 = v53;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = lazy protocol witness table accessor for type String and conformance String();
  v57 = MEMORY[0x277D837D0];
  v90 = v54;
  v91 = MEMORY[0x277D837D0];
  v92 = v55;
  v93 = v56;
  v58 = swift_getOpaqueTypeMetadata2();
  v90 = v54;
  v91 = v57;
  v92 = v55;
  v93 = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v90 = v58;
  v91 = v59;
  v60 = swift_getOpaqueTypeMetadata2();
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA6ButtonVyAA08ModifiedE0VyAIyAA5ImageVAA13_OffsetEffectVGAA31AccessibilityAttachmentModifierVGGG_AA0D6SpacerVtGSg_AEyyt07WorkoutB020DeviceConnectionMenuVGtGMd, &_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA6ButtonVyAA08ModifiedE0VyAIyAA5ImageVAA13_OffsetEffectVGAA31AccessibilityAttachmentModifierVGGG_AA0D6SpacerVtGSg_AEyyt07WorkoutB020DeviceConnectionMenuVGtGMR);
  v90 = v58;
  v91 = v59;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<(TupleToolbarContent<(ToolbarItem<(), Button<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, AccessibilityAttachmentModifier>>>, ToolbarSpacer)>?, ToolbarItem<(), DeviceConnectionMenu>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA6ButtonVyAA08ModifiedE0VyAIyAA5ImageVAA13_OffsetEffectVGAA31AccessibilityAttachmentModifierVGGG_AA0D6SpacerVtGSg_AEyyt07WorkoutB020DeviceConnectionMenuVGtGMd, &_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA6ButtonVyAA08ModifiedE0VyAIyAA5ImageVAA13_OffsetEffectVGAA31AccessibilityAttachmentModifierVGGG_AA0D6SpacerVtGSg_AEyyt07WorkoutB020DeviceConnectionMenuVGtGMR, MEMORY[0x277CDDF68]);
  v90 = v60;
  v91 = v61;
  v92 = v62;
  v93 = v63;
  v64 = swift_getOpaqueTypeMetadata2();
  v90 = v60;
  v91 = v61;
  v92 = v62;
  v93 = v63;
  v65 = swift_getOpaqueTypeConformance2();
  v90 = v64;
  v91 = v65;
  swift_getOpaqueTypeMetadata2();
  v90 = v64;
  v91 = v65;
  swift_getOpaqueTypeConformance2();
  v66 = type metadata accessor for NavigationStack();
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v69 = &v77 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v72 = &v77 - v71;
  v73 = v80;
  WorkoutBrowsingViewiOS.$navigationModel.getter();
  swift_getKeyPath();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  EnvironmentObject.Wrapper.subscript.getter();

  v74 = *(v79 + 24);
  v83 = v78;
  v84 = v74;
  v85 = v73;
  NavigationStack.init<>(path:root:)();
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v75 = *(v67 + 8);
  v75(v69, v66);
  static ViewBuilder.buildBlock<A>(_:)();
  return (v75)(v72, v66);
}

double key path getter for ConfigurationNavigationModel.browsingNavigationPath : ConfigurationNavigationModel@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t key path setter for ConfigurationNavigationModel.browsingNavigationPath : ConfigurationNavigationModel(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for NavigationPath();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  (v11)(v6, v10, v3);

  static Published.subscript.setter();
  return (*(v4 + 8))(v10, v3);
}

uint64_t _s9WorkoutUI0A15BrowsingViewiOSV4bodyQrvg05SwiftB04ViewPAEE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAgEE7toolbar7contentQrqd__yXE_tAE14ToolbarContentRd__lFQOyAgEE0O16TitleDisplayModeyQrAE0qstU0VFQOyAgEE013navigationBarS0yQrqd__SyRd__lFQOyAgEE5sheet11isPresented9onDismissAPQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAgEE0V11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAgEEAvwxPQrA__A0_qd__yctAeFRd__lFQOyAgEEA1_A2_A3_Qrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAE06ScrollH6ReaderVyAgEE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEE9onReceive_7performQrqd___y6OutputQyd__ct7Combine9PublisherRd__s5NeverO7FailureRtd__lFQOyAgEE17listRowBackgroundyQrqd__SgAeFRd__lFQOyAgEE16listRowSeparator_5edgesQrAE10VisibilityO_AE12VerticalEdgeO3SetVtFQOyAgEE11listPaddingyQrAE4EdgeOA27_V_12CoreGraphics7CGFloatVtFQOyAgEE14listRowSpacingyQrA35_SgFQOyAE4ListVyA16_AE05TupleH0VyAgEE2idyQrqd__SHRd__lFQOyAE05EmptyH0V_SSQo__AgAE21withZeroListRowInsetsQryFQOyAA0A13DisclaimerRowV_Qo_SgAgAEA46_QryFQOyAC025safetyCheckInRemindersTipH033_C6A1CD99A5FFEBCF0602419937A3F460LLQrvpQOyx_Qo__Qo_AE7ForEachVySay0A4Core36ManagedConfigurationSourcePickerItemCGSiAgEE17environmentObjectyQrqd__A13_16ObservableObjectRd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA020ManagedConfigurationdE0V_So21FIUIFormattingManagerCA66_A13_A62_AAyHCg0_Qo__AA28ConfigurationNavigationModelCQo__So13HKHealthStoreCA72_A13_A62_AAyHCg0_Qo__A57_0A28ConfigurationOccurrenceStoreCQo_GAE07DynamichR0PAEE8onDeleteA10_Qry10Foundation8IndexSetVcSg_tFQOyA56_ySayA57_26StandardActivityPickerItemCGSiAE08ModifiedR0VyAgEE20accessibilityElement8childrenQrAE26AccessibilityChildBehaviorV_tFQOyAgEEA19_yQrA20_AeFRd__lFQOyAgEE0P5Shape_6eoFillQrqd___SbtAE5ShapeRd__lFQOyAgEE13listRowInsetsyQrAE10EdgeInsetsVSgFQOyAgEEA42_yQrqd__SHRd__lFQOyAE6VStackVyA41_yAE6HStackVyA41_yA89_yAgEE34flipsForRightToLeftLayoutDirectionyQrSbFQOyAgEE5frame8minWidth10idealWidth8maxWidth9minHeight11idealHeight9maxHeight9alignmentQrA37__A37_A37_A37_A37_A37_AE9AlignmentVtFQOyAgEE15foregroundColoryQrAE5ColorVSgFQOyAE5GroupVyAE012_ConditionalR0VyAgEE10imageScaleyQrAE5ImageV5ScaleOFQOyAgEE4fontyQrAE4FontVSgFQOyA126__Qo__Qo_AgEE7paddingyQrA32__A37_tFQOyA126_AAE11scaledToFit4sizeQrSo6CGSizeV_tFQOy_Qo__Qo_GG_Qo__Qo__Qo_AE31AccessibilityAttachmentModifierVG_AE6SpacerVAgEEA94___A95_QrAE0R10ShapeKindsV_qd__SbtAEA96_Rd__lFQOyAgEEA94__A95_Qrqd___SbtAEA96_Rd__lFQOyAgEE11buttonStyleyQrqd__AE20PrimitiveButtonStyleRd__lFQOyAA011StartButtonH0V_AE16PlainButtonStyleVQo__AE9RectangleVQo__AE6CircleVQo_SgtGG_A89_yAgEE0M7SpacingyQrA35_FQOyAE4TextV_Qo_A148_GAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA104_yA41_yAA28MediaConfigurationRoomButtonVSg_AgEE11environmentyQrA20_Rld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_A57_0A25VoiceAvailabilityProviderCQo_SgAgEEA94___A95_QrA153__qd__SbtAEA96_Rd__lFQOyA89_yAgEEA154_yQrqd__AEA155_Rd__lFQOyAE6ButtonVyAgEEA116_yQrA119_FQOyAgEEA129_yQrA132_FQOyAgEE9clipShape_5styleQrqd___AE9FillStyleVtAEA96_Rd__lFQOyAgEEA116_yQrA119_FQOyAgEE10background_20ignoresSafeAreaEdgesQrqd___A32_tAE10ShapeStyleRd__lFQOyAgEEA135_yQrA32__A37_tFQOyAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA126__Qo__Qo__A118_Qo__Qo__AE16RoundedRectangleVQo__Qo__Qo_G_A159_Qo_A148_G_A201_Qo_tGG_Qo_tGG_SiQo__Qo__A162_Qo__AE06_ShapeH0VyA201_A118_GQo__Qo_A148_GG_Qo_A89_yAgEEA19_yQrA20_AeFRd__lFQOyA188_yA104_yA41_yA151__AgEEA193__A113_Qrqd___A115_tAeFRd__lFQOyAgEEA106_5width6heightA113_QrA37__A37_A115_tFQOyA133__Qo__A218_yA165_A118_GQo_A151_tGGG_A118_Qo_A148_GxSgtGG_Qo__Qo__Qo__A118_Qo__So20NSNotificationCenterCA81_EA14_VQo__A87_Qo__So23FIUIWorkoutActivityTypeCSgQo__SbSgQo__A249_Qo_G_A248_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA178_yQrA20_Rld__CA179_A180_Rd__lFQOyAA16ActivityTypeRoomV_A184_Qo__A66_A66_A13_A62_AAyHCg0_Qo_Qo__AA03AddA4ListVQo__A59_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA029ManagedConfigurationsUpcomingdE0V_A66_A66_A13_A62_AAyHCg0_Qo__A69_Qo__A72_A72_A13_A62_AAyHCg0_Qo__A75_Qo_Qo__AA06Manuala7LoggingH0VQo__SSQo__Qo__AE0qR7BuilderV10buildBlockyQrx_q_tAeQRzAeQR_r0_lFZQOy_A276_A277_yQrx_q_tAeQRzAeQR_r0_lFZQOy_AE0Q4ItemVyytA188_yA89_yAgEE6offsetyQrA139_FQOyA126__Qo_A148_GGGAE0Q6SpacerVQo_SgA279_yytAA20DeviceConnectionMenuVGQo_Qo__Qo_yXEfU_@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v215 = a3;
  v211 = a1;
  v203 = a4;
  v202 = type metadata accessor for TaskPriority();
  v201 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v200 = v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for ToolbarTitleDisplayMode();
  v198 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v197 = v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = a2;
  v209 = type metadata accessor for WorkoutBrowsingViewiOS(0, a2, a3, v8);
  v213 = *(v209 - 8);
  v217 = *(v213 + 64);
  MEMORY[0x28223BE20](v209);
  v208 = v155 - v9;
  v10 = type metadata accessor for NSNotificationCenter.Publisher();
  v223 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6IDViewVyAA9EmptyViewVSSGMd, &_s7SwiftUI6IDViewVyAA9EmptyViewVSSGMR);
  v224 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGSgMR);
  v225 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP6TipKitE03tipE5StyleyQrqd__AF0feI0Rd__lFQOyAF0fE0VyAF03AnyF0VG_07WorkoutB00fg22SafetyCheckInRemindersfI0VQo_AN17ZeroListRowInsetsVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP6TipKitE03tipE5StyleyQrqd__AF0feI0Rd__lFQOyAF0fE0VyAF03AnyF0VG_07WorkoutB00fg22SafetyCheckInRemindersfI0VQo_AN17ZeroListRowInsetsVGMR);
  v226 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGSiAA15ModifiedContentVyAIyAIyAIy0eB00gH7ViewiOSVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0H15NavigationModelCSgGGANySo13HKHealthStoreCSgGGANyAD0eh10OccurrenceY0CSgGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGSiAA15ModifiedContentVyAIyAIyAIy0eB00gH7ViewiOSVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0H15NavigationModelCSgGGANySo13HKHealthStoreCSgGGANyAD0eh10OccurrenceY0CSgGGGMR);
  v227 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGACyACyACyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipE9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVACyACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0gB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_D17ShapeKindModifierVyAA6CircleVGGSgtGG_ACyACyAA4TextVA3_y0H8Graphics7CGFloatVGGA36_GACyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AF0G25VoiceAvailabilityProviderCQo_SgACyACyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGA113_yAA16OnDeleteTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGACyACyACyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipE9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVACyACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0gB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_D17ShapeKindModifierVyAA6CircleVGGSgtGG_ACyACyAA4TextVA3_y0H8Graphics7CGFloatVGGA36_GACyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AF0G25VoiceAvailabilityProviderCQo_SgACyACyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGA113_yAA16OnDeleteTraitKeyVGGMR);
  v228 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGAA023AccessibilityAttachmentN0VGMR);
  v229 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  v11 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v223 = MEMORY[0x277D84A98];
  v224 = v11;
  v225 = MEMORY[0x277D84AA8];
  v226 = WitnessTable;
  type metadata accessor for List();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMR);
  v13 = type metadata accessor for ModifiedContent();
  v14 = swift_getWitnessTable();
  v15 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMR, MEMORY[0x277CE0868]);
  v221 = v14;
  v222 = v15;
  v16 = swift_getWitnessTable();
  v223 = v13;
  v224 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v223 = v13;
  v224 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v223 = OpaqueTypeMetadata2;
  v224 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMR);
  v19 = type metadata accessor for ModifiedContent();
  v20 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  v223 = OpaqueTypeMetadata2;
  v224 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMR, MEMORY[0x277CE04A0]);
  v219 = v21;
  v220 = v22;
  v23 = swift_getWitnessTable();
  v223 = v10;
  v224 = v19;
  v225 = v20;
  v226 = v23;
  v24 = type metadata accessor for SubscriptionView();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore26StandardActivityPickerItemCGMd, &_sSay11WorkoutCore26StandardActivityPickerItemCGMR);
  v26 = swift_getWitnessTable();
  v27 = lazy protocol witness table accessor for type [StandardActivityPickerItem] and conformance <A> [A]();
  v223 = v24;
  v224 = v25;
  v225 = v26;
  v226 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR);
  v223 = v24;
  v224 = v25;
  v225 = v26;
  v226 = v27;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = lazy protocol witness table accessor for type FIUIWorkoutActivityType? and conformance <A> A?();
  v223 = v28;
  v224 = v29;
  v225 = v30;
  v226 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSbSgMd, &_sSbSgMR);
  v223 = v28;
  v224 = v29;
  v225 = v30;
  v226 = v31;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  v223 = v32;
  v224 = v33;
  v225 = v34;
  v226 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v223 = v32;
  v224 = v33;
  v225 = v34;
  v226 = v35;
  v37 = swift_getOpaqueTypeConformance2();
  v223 = v36;
  v224 = v29;
  v225 = v37;
  v226 = v31;
  v170 = swift_getOpaqueTypeMetadata2();
  v223 = v36;
  v224 = v29;
  v225 = v37;
  v226 = v31;
  v172 = swift_getOpaqueTypeConformance2();
  v38 = type metadata accessor for ScrollViewReader();
  v39 = _sSo17OS_dispatch_queueCMaTm_0(255, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy07WorkoutB016ActivityTypeRoomV_0I4Core0I25VoiceAvailabilityProviderCQo_AA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy07WorkoutB016ActivityTypeRoomV_0I4Core0I25VoiceAvailabilityProviderCQo_AA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGMR);
  v41 = swift_getWitnessTable();
  v42 = MEMORY[0x277D85378];
  v43 = _sSo13HKHealthStoreCAB7Combine16ObservableObject9WorkoutUIWlTm_0(&lazy protocol witness table cache variable for type FIUIWorkoutActivityType and conformance NSObject, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810, MEMORY[0x277D85378]);
  v44 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>();
  v223 = v38;
  v224 = v39;
  v45 = v38;
  v155[4] = v38;
  v46 = v39;
  v155[1] = v39;
  v225 = v40;
  v226 = v41;
  v47 = v40;
  v168 = v40;
  v167 = v41;
  v227 = v43;
  v228 = v44;
  v166 = v43;
  v48 = v44;
  v155[6] = v44;
  v49 = swift_getOpaqueTypeMetadata2();
  v194 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v207 = v155 - v50;
  v51 = type metadata accessor for AddWorkoutList(255);
  v223 = v45;
  v224 = v46;
  v225 = v47;
  v226 = v41;
  v227 = v43;
  v228 = v48;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type AddWorkoutList and conformance AddWorkoutList, type metadata accessor for AddWorkoutList, &protocol conformance descriptor for AddWorkoutList);
  v223 = v49;
  v224 = v51;
  v165 = v49;
  v155[3] = v51;
  v225 = v52;
  v226 = v53;
  v54 = v52;
  v155[7] = v52;
  v155[5] = v53;
  v55 = swift_getOpaqueTypeMetadata2();
  v190 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v206 = v155 - v56;
  v57 = type metadata accessor for ManagedConfigurationSourcePickerItem();
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB036ManagedConfigurationsUpcomingViewiOSVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD28ConfigurationNavigationModelCSgGGAHySo13HKHealthStoreCSgGGAHy0E4Core0eq10OccurrenceU0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB036ManagedConfigurationsUpcomingViewiOSVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD28ConfigurationNavigationModelCSgGGAHySo13HKHealthStoreCSgGGAHy0E4Core0eq10OccurrenceU0CSgGGMR);
  v223 = v49;
  v224 = v51;
  v225 = v54;
  v226 = v53;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance NSObject, MEMORY[0x277D7E6E8], v42);
  v61 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsUpcomingViewiOS, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>> and conformance <> ModifiedContent<A, B>();
  v223 = v55;
  v224 = v57;
  v62 = v55;
  v161 = v55;
  v63 = v57;
  v155[2] = v57;
  v225 = v58;
  v226 = v59;
  v164 = v58;
  v163 = v59;
  v227 = v60;
  v228 = v61;
  v64 = v60;
  v162 = v60;
  v65 = v61;
  v157 = v61;
  v66 = swift_getOpaqueTypeMetadata2();
  v192 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v205 = v155 - v67;
  v68 = type metadata accessor for ManualWorkoutLoggingView(255);
  v223 = v62;
  v224 = v63;
  v225 = v58;
  v226 = v59;
  v227 = v64;
  v228 = v65;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type ManualWorkoutLoggingView and conformance ManualWorkoutLoggingView, type metadata accessor for ManualWorkoutLoggingView, &protocol conformance descriptor for ManualWorkoutLoggingView);
  v223 = v66;
  v224 = v68;
  v169 = v66;
  v158 = v68;
  v225 = v69;
  v226 = v70;
  v160 = v69;
  v71 = v70;
  v159 = v70;
  v72 = swift_getOpaqueTypeMetadata2();
  v195 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v156 = v155 - v73;
  v223 = v66;
  v224 = v68;
  v225 = v69;
  v226 = v71;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = lazy protocol witness table accessor for type String and conformance String();
  v76 = MEMORY[0x277D837D0];
  v223 = v72;
  v224 = MEMORY[0x277D837D0];
  v225 = v74;
  v226 = v75;
  v77 = swift_getOpaqueTypeMetadata2();
  v189 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v182 = v155 - v78;
  v196 = v72;
  v223 = v72;
  v224 = v76;
  v186 = v74;
  v225 = v74;
  v226 = v75;
  v183 = v75;
  v79 = swift_getOpaqueTypeConformance2();
  v223 = v77;
  v224 = v79;
  v80 = swift_getOpaqueTypeMetadata2();
  v180 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v178 = v155 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA6ButtonVyAA08ModifiedE0VyAIyAA5ImageVAA13_OffsetEffectVGAA31AccessibilityAttachmentModifierVGGG_AA0D6SpacerVtGSg_AEyyt07WorkoutB020DeviceConnectionMenuVGtGMd, &_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA6ButtonVyAA08ModifiedE0VyAIyAA5ImageVAA13_OffsetEffectVGAA31AccessibilityAttachmentModifierVGGG_AA0D6SpacerVtGSg_AEyyt07WorkoutB020DeviceConnectionMenuVGtGMR);
  v191 = v77;
  v223 = v77;
  v224 = v79;
  v175 = v79;
  v83 = swift_getOpaqueTypeConformance2();
  v84 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<(TupleToolbarContent<(ToolbarItem<(), Button<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, AccessibilityAttachmentModifier>>>, ToolbarSpacer)>?, ToolbarItem<(), DeviceConnectionMenu>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA6ButtonVyAA08ModifiedE0VyAIyAA5ImageVAA13_OffsetEffectVGAA31AccessibilityAttachmentModifierVGGG_AA0D6SpacerVtGSg_AEyyt07WorkoutB020DeviceConnectionMenuVGtGMd, &_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA6ButtonVyAA08ModifiedE0VyAIyAA5ImageVAA13_OffsetEffectVGAA31AccessibilityAttachmentModifierVGGG_AA0D6SpacerVtGSg_AEyyt07WorkoutB020DeviceConnectionMenuVGtGMR, MEMORY[0x277CDDF68]);
  v223 = v80;
  v224 = v82;
  v225 = v83;
  v226 = v84;
  v85 = swift_getOpaqueTypeMetadata2();
  v188 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v181 = v155 - v86;
  v184 = v80;
  v223 = v80;
  v224 = v82;
  v174 = v82;
  v173 = v83;
  v225 = v83;
  v226 = v84;
  v171 = v84;
  v87 = swift_getOpaqueTypeConformance2();
  v193 = v85;
  v223 = v85;
  v224 = v87;
  v179 = v87;
  v187 = swift_getOpaqueTypeMetadata2();
  v185 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v176 = v155 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = MEMORY[0x28223BE20](v89);
  v177 = v155 - v91;
  v92 = v213;
  v212 = *(v213 + 16);
  v216 = v213 + 16;
  v93 = v208;
  v94 = v211;
  v95 = v209;
  v212(v208, v211, v209, v90);
  v204 = *(v92 + 80);
  v155[0] = ~v204;
  v96 = (v204 + 32) & ~v204;
  v97 = swift_allocObject();
  v99 = v214;
  v98 = v215;
  *(v97 + 16) = v214;
  *(v97 + 24) = v98;
  v101 = v92 + 32;
  v100 = *(v92 + 32);
  v100(v97 + v96, v93, v95);
  v213 = v101;
  swift_checkMetadataState();
  v102 = ScrollViewReader.init(content:)();
  v172 = v103;
  v223 = v102;
  v224 = v103;
  v170 = swift_checkMetadataState();
  v104 = v212;
  (v212)(v93, v94, v95);
  v105 = swift_allocObject();
  *(v105 + 16) = v99;
  *(v105 + 24) = v98;
  v100(v105 + v96, v93, v95);
  v210 = v100;
  swift_checkMetadataState();
  View.navigationDestination<A, B>(for:destination:)();

  v106 = v95;
  WorkoutBrowsingViewiOS.$isAddWorkoutViewPresented.getter(v95);
  v172 = v107;
  LODWORD(v170) = v108;
  v104(v93, v94, v95);
  v109 = v204;
  v110 = swift_allocObject();
  *(v110 + 16) = v99;
  v111 = v215;
  *(v110 + 24) = v215;
  v100(v110 + v96, v93, v95);
  swift_checkMetadataState();
  v112 = v165;
  v113 = v207;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v194 + 8))(v113, v112);
  swift_checkMetadataState();
  v114 = v208;
  v115 = v211;
  (v212)(v208, v211, v106);
  v116 = swift_allocObject();
  *(v116 + 16) = v214;
  *(v116 + 24) = v111;
  v117 = v114;
  v210(v116 + v96, v114, v106);
  v118 = v161;
  v119 = v206;
  View.navigationDestination<A, B>(for:destination:)();

  (*(v190 + 8))(v119, v118);
  WorkoutBrowsingViewiOS.$isPresentingManualLoggingView.getter(v106);
  (v212)(v114, v115, v106);
  v120 = swift_allocObject();
  v121 = v215;
  *(v120 + 16) = v214;
  *(v120 + 24) = v121;
  v122 = v106;
  v123 = v156;
  v210(v120 + v96, v114, v122);
  swift_checkMetadataState();
  v124 = v169;
  v125 = v205;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v192 + 8))(v125, v124);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v126 = WorkoutUIBundle.super.isa;
  v230._object = 0xE000000000000000;
  v127._countAndFlagsBits = 0xD000000000000014;
  v127._object = 0x800000020CB99410;
  v128.value._object = 0x800000020CB936F0;
  v128.value._countAndFlagsBits = 0xD000000000000012;
  v129._countAndFlagsBits = 0;
  v129._object = 0xE000000000000000;
  v230._countAndFlagsBits = 0;
  v130 = NSLocalizedString(_:tableName:bundle:value:comment:)(v127, v128, v126, v129, v230);

  v218 = v130;
  v131 = v182;
  v132 = v196;
  View.navigationTitle<A>(_:)();

  (*(v195 + 8))(v123, v132);
  v133 = v197;
  static ToolbarTitleDisplayMode.inlineLarge.getter();
  v134 = v178;
  v135 = v191;
  View.toolbarTitleDisplayMode(_:)();
  (*(v198 + 8))(v133, v199);
  v136 = (*(v189 + 8))(v131, v135);
  MEMORY[0x28223BE20](v136);
  v137 = v214;
  v138 = v215;
  v139 = v211;
  v140 = v181;
  v141 = v184;
  View.toolbar<A>(content:)();
  (*(v180 + 8))(v134, v141);
  v142 = v209;
  (v212)(v117, v139, v209);
  type metadata accessor for MainActor();
  v143 = static MainActor.shared.getter();
  v144 = (v109 + 48) & v155[0];
  v145 = swift_allocObject();
  v146 = MEMORY[0x277D85700];
  v145[2] = v143;
  v145[3] = v146;
  v145[4] = v137;
  v145[5] = v138;
  v210(v145 + v144, v117, v142);
  v147 = v200;
  v148 = v193;
  v149 = v179;
  _s7SwiftUI4ViewPAAE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFfA0_();
  v150 = v176;
  _s7SwiftUI4ViewPAAE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntF( 0,  v147,  0xD000000000000026,  0x800000020CB99430,  339,  &_s9WorkoutUI0A15BrowsingViewiOSV4bodyQrvg05SwiftB04ViewPAEE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAgEE7toolbar7contentQrqd__yXE_tAE14ToolbarContentRd__lFQOyAgEE0O16TitleDisplayModeyQrAE0qstU0VFQOyAgEE013navigationBarS0yQrqd__SyRd__lFQOyAgEE5sheet11isPresented9onDismissAPQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAgEE0V11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAgEEAvwxPQrA__A0_qd__yctAeFRd__lFQOyAgEEA1_A2_A3_Qrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAE06ScrollH6ReaderVyAgEE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEE9onReceive_7performQrqd___y6OutputQyd__ct7Combine9PublisherRd__s5NeverO7FailureRtd__lFQOyAgEE17listRowBackgroundyQrqd__SgAeFRd__lFQOyAgEE16listRowSeparator_5edgesQrAE10VisibilityO_AE12VerticalEdgeO3SetVtFQOyAgEE11listPaddingyQrAE4EdgeOA27_V_12CoreGraphics7CGFloatVtFQOyAgEE14listRowSpacingyQrA35_SgFQOyAE4ListVyA16_AE05TupleH0VyAgEE2idyQrqd__SHRd__lFQOyAE05EmptyH0V_SSQo__AgAE21withZeroListRowInsetsQryFQOyAA0A13DisclaimerRowV_Qo_SgAgAEA46_QryFQOyAC025safetyCheckInRemindersTipH033_C6A1CD99A5FFEBCF0602419937A3F460LLQrvpQOyx_Qo__Qo_AE7ForEachVySay0A4Core36ManagedConfigurationSourcePickerItemCGSiAgEE17environmentObjectyQrqd__A13_16ObservableObjectRd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA020ManagedConfigurationdE0V_So21FIUIFormattingManagerCA66_A13_A62_AAyHCg0_Qo__AA28ConfigurationNavigationModelCQo__So13HKHealthStoreCA72_A13_A62_AAyHCg0_Qo__A57_0A28ConfigurationOccurrenceStoreCQo_GAE07DynamichR0PAEE8onDeleteA10_Qry10Foundation8IndexSetVcSg_tFQOyA56_ySayA57_26StandardActivityPickerItemCGSiAE08ModifiedR0VyAgEE20accessibilityElement8childrenQrAE26AccessibilityChildBehaviorV_tFQOyAgEEA19_yQrA20_AeFRd__lFQOyAgEE0P5Shape_6eoFillQrqd___SbtAE5ShapeRd__lFQOyAgEE13listRowInsetsyQrAE10EdgeInsetsVSgFQOyAgEEA42_yQrqd__SHRd__lFQOyAE6VStackVyA41_yAE6HStackVyA41_yA89_yAgEE34flipsForRightToLeftLayoutDirectionyQrSbFQOyAgEE5frame8minWidth10idealWidth8maxWidth9minHeight11idealHeight9maxHeight9alignmentQrA37__A37_A37_A37_A37_A37_AE9AlignmentVtFQOyAgEE15foregroundColoryQrAE5ColorVSgFQOyAE5GroupVyAE012_ConditionalR0VyAgEE10imageScaleyQrAE5ImageV5ScaleOFQOyAgEE4fontyQrAE4FontVSgFQOyA126__Qo__Qo_AgEE7paddingyQrA32__A37_tFQOyA126_AAE11scaledToFit4sizeQrSo6CGSizeV_tFQOy_Qo__Qo_GG_Qo__Qo__Qo_AE31AccessibilityAttachmentModifierVG_AE6SpacerVAgEEA94___A95_QrAE0R10ShapeKindsV_qd__SbtAEA96_Rd__lFQOyAgEEA94__A95_Qrqd___SbtAEA96_Rd__lFQOyAgEE11buttonStyleyQrqd__AE20PrimitiveButtonStyleRd__lFQOyAA011StartButtonH0V_AE16PlainButtonStyleVQo__AE9RectangleVQo__AE6CircleVQo_SgtGG_A89_yAgEE0M7SpacingyQrA35_FQOyAE4TextV_Qo_A148_GAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA104_yA41_yAA28MediaConfigurationRoomButtonVSg_AgEE11environmentyQrA20_Rld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_A57_0A25VoiceAvailabilityProviderCQo_SgAgEEA94___A95_QrA153__qd__SbtAEA96_Rd__lFQOyA89_yAgEEA154_yQrqd__AEA155_Rd__lFQOyAE6ButtonVyAgEEA116_yQrA119_FQOyAgEEA129_yQrA132_FQOyAgEE9clipShape_5styleQrqd___AE9FillStyleVtAEA96_Rd__lFQOyAgEEA116_yQrA119_FQOyAgEE10background_20ignoresSafeAreaEdgesQrqd___A32_tAE10ShapeStyleRd__lFQOyAgEEA135_yQrA32__A37_tFQOyAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA126__Qo__Qo__A118_Qo__Qo__AE16RoundedRectangleVQo__Qo__Qo_G_A159_Qo_A148_G_A201_Qo_tGG_Qo_tGG_SiQo__Qo__A162_Qo__AE06_ShapeH0VyA201_A118_GQo__Qo_A148_GG_Qo_A89_yAgEEA19_yQrA20_AeFRd__lFQOyA188_yA104_yA41_yA151__AgEEA193__A113_Qrqd___A115_tAeFRd__lFQOyAgEEA106_5width6heightA113_QrA37__A37_A115_tFQOyA133__Qo__A218_yA165_A118_GQo_A151_tGGG_A118_Qo_A148_GxSgtGG_Qo__Qo__Qo__A118_Qo__So20NSNotificationCenterCA81_EA14_VQo__A87_Qo__So23FIUIWorkoutActivityTypeCSgQo__SbSgQo__A249_Qo_G_A248_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA178_yQrA20_Rld__CA179_A180_Rd__lFQOyAA16ActivityTypeRoomV_A184_Qo__A66_A66_A13_A62_AAyHCg0_Qo_Qo__AA03AddA4ListVQo__A59_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA029ManagedConfigurationsUpcomingdE0V_A66_A66_A13_A62_AAyHCg0_Qo__A69_Qo__A72_A72_A13_A62_AAyHCg0_Qo__A75_Qo_Qo__AA06Manuala7LoggingH0VQo__SSQo__Qo__AE0qR7BuilderV10buildBlockyQrx_q_tAeQRzAeQR_r0_lFZQOy_A276_A277_yQrx_q_tAeQRzAeQR_r0_lFZQOy_AE0Q4ItemVyytA188_yA89_yAgEE6offsetyQrA139_FQOyA126__Qo_A148_GGGAE0Q6SpacerVQo_SgA279_yytAA20DeviceConnectionMenuVGQo_Qo__Qo_yXEfU_yyYacfU5_TATu,  v145,  v176,  v148,  v149);
  (*(v201 + 8))(v147, v202);
  (*(v188 + 8))(v140, v148);
  v218._countAndFlagsBits = v148;
  v218._object = v149;
  swift_getOpaqueTypeConformance2();
  v151 = v177;
  v152 = v187;
  static ViewBuilder.buildExpression<A>(_:)();
  v153 = *(v185 + 8);
  v153(v150, v152);
  static ViewBuilder.buildBlock<A>(_:)();
  return (v153)(v151, v152);
}

uint64_t _s9WorkoutUI0A15BrowsingViewiOSV4bodyQrvg05SwiftB04ViewPAEE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAgEE7toolbar7contentQrqd__yXE_tAE14ToolbarContentRd__lFQOyAgEE0O16TitleDisplayModeyQrAE0qstU0VFQOyAgEE013navigationBarS0yQrqd__SyRd__lFQOyAgEE5sheet11isPresented9onDismissAPQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAgEE0V11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAgEEAvwxPQrA__A0_qd__yctAeFRd__lFQOyAgEEA1_A2_A3_Qrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAE06ScrollH6ReaderVyAgEE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEE9onReceive_7performQrqd___y6OutputQyd__ct7Combine9PublisherRd__s5NeverO7FailureRtd__lFQOyAgEE17listRowBackgroundyQrqd__SgAeFRd__lFQOyAgEE16listRowSeparator_5edgesQrAE10VisibilityO_AE12VerticalEdgeO3SetVtFQOyAgEE11listPaddingyQrAE4EdgeOA27_V_12CoreGraphics7CGFloatVtFQOyAgEE14listRowSpacingyQrA35_SgFQOyAE4ListVyA16_AE05TupleH0VyAgEE2idyQrqd__SHRd__lFQOyAE05EmptyH0V_SSQo__AgAE21withZeroListRowInsetsQryFQOyAA0A13DisclaimerRowV_Qo_SgAgAEA46_QryFQOyAC025safetyCheckInRemindersTipH033_C6A1CD99A5FFEBCF0602419937A3F460LLQrvpQOyx_Qo__Qo_AE7ForEachVySay0A4Core36ManagedConfigurationSourcePickerItemCGSiAgEE17environmentObjectyQrqd__A13_16ObservableObjectRd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA020ManagedConfigurationdE0V_So21FIUIFormattingManagerCA66_A13_A62_AAyHCg0_Qo__AA28ConfigurationNavigationModelCQo__So13HKHealthStoreCA72_A13_A62_AAyHCg0_Qo__A57_0A28ConfigurationOccurrenceStoreCQo_GAE07DynamichR0PAEE8onDeleteA10_Qry10Foundation8IndexSetVcSg_tFQOyA56_ySayA57_26StandardActivityPickerItemCGSiAE08ModifiedR0VyAgEE20accessibilityElement8childrenQrAE26AccessibilityChildBehaviorV_tFQOyAgEEA19_yQrA20_AeFRd__lFQOyAgEE0P5Shape_6eoFillQrqd___SbtAE5ShapeRd__lFQOyAgEE13listRowInsetsyQrAE10EdgeInsetsVSgFQOyAgEEA42_yQrqd__SHRd__lFQOyAE6VStackVyA41_yAE6HStackVyA41_yA89_yAgEE34flipsForRightToLeftLayoutDirectionyQrSbFQOyAgEE5frame8minWidth10idealWidth8maxWidth9minHeight11idealHeight9maxHeight9alignmentQrA37__A37_A37_A37_A37_A37_AE9AlignmentVtFQOyAgEE15foregroundColoryQrAE5ColorVSgFQOyAE5GroupVyAE012_ConditionalR0VyAgEE10imageScaleyQrAE5ImageV5ScaleOFQOyAgEE4fontyQrAE4FontVSgFQOyA126__Qo__Qo_AgEE7paddingyQrA32__A37_tFQOyA126_AAE11scaledToFit4sizeQrSo6CGSizeV_tFQOy_Qo__Qo_GG_Qo__Qo__Qo_AE31AccessibilityAttachmentModifierVG_AE6SpacerVAgEEA94___A95_QrAE0R10ShapeKindsV_qd__SbtAEA96_Rd__lFQOyAgEEA94__A95_Qrqd___SbtAEA96_Rd__lFQOyAgEE11buttonStyleyQrqd__AE20PrimitiveButtonStyleRd__lFQOyAA011StartButtonH0V_AE16PlainButtonStyleVQo__AE9RectangleVQo__AE6CircleVQo_SgtGG_A89_yAgEE0M7SpacingyQrA35_FQOyAE4TextV_Qo_A148_GAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA104_yA41_yAA28MediaConfigurationRoomButtonVSg_AgEE11environmentyQrA20_Rld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_A57_0A25VoiceAvailabilityProviderCQo_SgAgEEA94___A95_QrA153__qd__SbtAEA96_Rd__lFQOyA89_yAgEEA154_yQrqd__AEA155_Rd__lFQOyAE6ButtonVyAgEEA116_yQrA119_FQOyAgEEA129_yQrA132_FQOyAgEE9clipShape_5styleQrqd___AE9FillStyleVtAEA96_Rd__lFQOyAgEEA116_yQrA119_FQOyAgEE10background_20ignoresSafeAreaEdgesQrqd___A32_tAE10ShapeStyleRd__lFQOyAgEEA135_yQrA32__A37_tFQOyAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA126__Qo__Qo__A118_Qo__Qo__AE16RoundedRectangleVQo__Qo__Qo_G_A159_Qo_A148_G_A201_Qo_tGG_Qo_tGG_SiQo__Qo__A162_Qo__AE06_ShapeH0VyA201_A118_GQo__Qo_A148_GG_Qo_A89_yAgEEA19_yQrA20_AeFRd__lFQOyA188_yA104_yA41_yA151__AgEEA193__A113_Qrqd___A115_tAeFRd__lFQOyAgEEA106_5width6heightA113_QrA37__A37_A115_tFQOyA133__Qo__A218_yA165_A118_GQo_A151_tGGG_A118_Qo_A148_GxSgtGG_Qo__Qo__Qo__A118_Qo__So20NSNotificationCenterCA81_EA14_VQo__A87_Qo__So23FIUIWorkoutActivityTypeCSgQo__SbSgQo__A249_Qo_G_A248_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA178_yQrA20_Rld__CA179_A180_Rd__lFQOyAA16ActivityTypeRoomV_A184_Qo__A66_A66_A13_A62_AAyHCg0_Qo_Qo__AA03AddA4ListVQo__A59_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA029ManagedConfigurationsUpcomingdE0V_A66_A66_A13_A62_AAyHCg0_Qo__A69_Qo__A72_A72_A13_A62_AAyHCg0_Qo__A75_Qo_Qo__AA06Manuala7LoggingH0VQo__SSQo__Qo__AE0qR7BuilderV10buildBlockyQrx_q_tAeQRzAeQR_r0_lFZQOy_A276_A277_yQrx_q_tAeQRzAeQR_r0_lFZQOy_AE0Q4ItemVyytA188_yA89_yAgEE6offsetyQrA139_FQOyA126__Qo_A148_GGGAE0Q6SpacerVQo_SgA279_yytAA20DeviceConnectionMenuVGQo_Qo__Qo_yXEfU_A253_AE06ScrollH5ProxyVcfU_@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v189 = a4;
  v191 = a2;
  v180 = a1;
  v169 = a5;
  v178 = type metadata accessor for ScrollViewProxy();
  v181 = *(v178 - 8);
  v179 = *(v181 + 64);
  MEMORY[0x28223BE20](v178);
  v177 = v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = a3;
  v187 = type metadata accessor for WorkoutBrowsingViewiOS(0, a3, a4, v8);
  v192 = *(v187 - 8);
  v183 = *(v192 + 64);
  MEMORY[0x28223BE20](v187);
  v190 = v131 - v9;
  v172 = type metadata accessor for NSNotificationCenter.Publisher();
  v168 = *(v172 - 1);
  MEMORY[0x28223BE20](v172);
  v167 = v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6IDViewVyAA9EmptyViewVSSGMd, &_s7SwiftUI6IDViewVyAA9EmptyViewVSSGMR);
  v201 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGSgMR);
  v202 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP6TipKitE03tipE5StyleyQrqd__AF0feI0Rd__lFQOyAF0fE0VyAF03AnyF0VG_07WorkoutB00fg22SafetyCheckInRemindersfI0VQo_AN17ZeroListRowInsetsVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP6TipKitE03tipE5StyleyQrqd__AF0feI0Rd__lFQOyAF0fE0VyAF03AnyF0VG_07WorkoutB00fg22SafetyCheckInRemindersfI0VQo_AN17ZeroListRowInsetsVGMR);
  v203 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGSiAA15ModifiedContentVyAIyAIyAIy0eB00gH7ViewiOSVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0H15NavigationModelCSgGGANySo13HKHealthStoreCSgGGANyAD0eh10OccurrenceY0CSgGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGSiAA15ModifiedContentVyAIyAIyAIy0eB00gH7ViewiOSVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0H15NavigationModelCSgGGANySo13HKHealthStoreCSgGGANyAD0eh10OccurrenceY0CSgGGGMR);
  v204 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGACyACyACyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipE9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVACyACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0gB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_D17ShapeKindModifierVyAA6CircleVGGSgtGG_ACyACyAA4TextVA3_y0H8Graphics7CGFloatVGGA36_GACyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AF0G25VoiceAvailabilityProviderCQo_SgACyACyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGA113_yAA16OnDeleteTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGACyACyACyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipE9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVACyACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0gB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_D17ShapeKindModifierVyAA6CircleVGGSgtGG_ACyACyAA4TextVA3_y0H8Graphics7CGFloatVGGA36_GACyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AF0G25VoiceAvailabilityProviderCQo_SgACyACyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGA113_yAA16OnDeleteTraitKeyVGGMR);
  v205 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGAA023AccessibilityAttachmentN0VGMR);
  v206 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  v11 = type metadata accessor for TupleView();
  v186 = v11;
  WitnessTable = swift_getWitnessTable();
  v200 = MEMORY[0x277D84A98];
  v201 = v11;
  v202 = MEMORY[0x277D84AA8];
  v203 = WitnessTable;
  v12 = type metadata accessor for List();
  v184 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v151 = v131 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMR);
  v138 = v12;
  v14 = type metadata accessor for ModifiedContent();
  v182 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v144 = v131 - v15;
  v16 = swift_getWitnessTable();
  v137 = v16;
  v17 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMR, MEMORY[0x277CE0868]);
  v198 = v16;
  v199 = v17;
  v18 = swift_getWitnessTable();
  v200 = v14;
  v201 = v18;
  v19 = v18;
  v135 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v139 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v134 = v131 - v21;
  v200 = v14;
  v201 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v200 = OpaqueTypeMetadata2;
  v201 = OpaqueTypeConformance2;
  v131[1] = OpaqueTypeConformance2;
  v136 = swift_getOpaqueTypeMetadata2();
  v142 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v132 = v131 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMR);
  v24 = type metadata accessor for ModifiedContent();
  v140 = v24;
  v152 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v171 = v131 - v25;
  v26 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  v143 = v26;
  v200 = OpaqueTypeMetadata2;
  v201 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v131[2] = v27;
  v28 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMR, MEMORY[0x277CE04A0]);
  v196 = v27;
  v197 = v28;
  v141 = swift_getWitnessTable();
  v200 = v172;
  v201 = v24;
  v202 = v26;
  v203 = v141;
  v29 = type metadata accessor for SubscriptionView();
  v153 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v173 = v131 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore26StandardActivityPickerItemCGMd, &_sSay11WorkoutCore26StandardActivityPickerItemCGMR);
  v32 = swift_getWitnessTable();
  v33 = lazy protocol witness table accessor for type [StandardActivityPickerItem] and conformance <A> [A]();
  v200 = v29;
  v201 = v31;
  v34 = v29;
  v145 = v29;
  v148 = v31;
  v202 = v32;
  v203 = v33;
  v147 = v32;
  v35 = v33;
  v146 = v33;
  v36 = swift_getOpaqueTypeMetadata2();
  v154 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v174 = v131 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR);
  v200 = v34;
  v201 = v31;
  v202 = v32;
  v203 = v35;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = lazy protocol witness table accessor for type FIUIWorkoutActivityType? and conformance <A> A?();
  v200 = v36;
  v201 = v38;
  v41 = v36;
  v149 = v36;
  v202 = v39;
  v203 = v40;
  v42 = v39;
  v150 = v39;
  v43 = v40;
  v44 = swift_getOpaqueTypeMetadata2();
  v158 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v175 = v131 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSbSgMd, &_sSbSgMR);
  v200 = v41;
  v201 = v38;
  v170 = v38;
  v202 = v42;
  v203 = v43;
  v133 = v43;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  v200 = v44;
  v201 = v46;
  v202 = v47;
  v203 = v48;
  v49 = swift_getOpaqueTypeMetadata2();
  v164 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v176 = v131 - v50;
  v159 = v44;
  v200 = v44;
  v201 = v46;
  v157 = v46;
  v156 = v47;
  v202 = v47;
  v203 = v48;
  v155 = v48;
  v51 = swift_getOpaqueTypeConformance2();
  v166 = v49;
  v200 = v49;
  v201 = v38;
  v162 = v51;
  v202 = v51;
  v203 = v43;
  v165 = swift_getOpaqueTypeMetadata2();
  v163 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v160 = v131 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v161 = v131 - v54;
  v55 = v188;
  v193 = v188;
  v194 = v189;
  v56 = v191;
  v195 = v191;
  v57 = v151;
  List<>.init(content:)();
  v58 = v144;
  v59 = v138;
  View.listRowSpacing(_:)();
  (*(v184 + 1))(v57, v59);
  static Edge.Set.top.getter();
  v60 = v134;
  View.listPadding(_:_:)();
  (*(v182 + 8))(v58, v14);
  static VerticalEdge.Set.all.getter();
  v61 = v132;
  View.listRowSeparator(_:edges:)();
  (*(v139 + 8))(v60, OpaqueTypeMetadata2);
  v62 = [objc_opt_self() secondarySystemBackgroundColor];
  v200 = Color.init(uiColor:)();
  v63 = v136;
  View.listRowBackground<A>(_:)();

  (*(v142 + 8))(v61, v63);
  v64 = [objc_opt_self() defaultCenter];
  v65 = *MEMORY[0x277D7E788];
  v66 = v167;
  NSNotificationCenter.publisher(for:object:)();

  v67 = v192;
  v68 = *(v192 + 16);
  v186 = v192 + 16;
  v184 = v68;
  v69 = v190;
  v70 = v187;
  v68(v190, v56, v187);
  v71 = *(v67 + 80);
  v72 = (v71 + 32) & ~v71;
  v73 = (v72 + v183);
  WitnessTable = v72;
  v183 = v71 | 7;
  v74 = swift_allocObject();
  v75 = v189;
  *(v74 + 16) = v55;
  *(v74 + 24) = v75;
  v182 = *(v67 + 32);
  v192 = v67 + 32;
  (v182)(v74 + v72, v69, v70);
  v76 = v66;
  v77 = v140;
  v78 = v172;
  v79 = v171;
  View.onReceive<A>(_:perform:)();

  (*(v168 + 8))(v76, v78);
  (*(v152 + 8))(v79, v77);

  v80 = dispatch thunk of ActivityPickerDataSource.standardItems.getter();
  v168 = v80;

  v200 = v80;
  v81 = v190;
  v184(v190, v56, v70);
  v82 = v181;
  v83 = (v181 + 16);
  v172 = *(v181 + 16);
  v84 = v177;
  v85 = v178;
  (v172)(v177, v180, v178);
  v86 = *(v82 + 80);
  v171 = v73;
  v87 = &v73[v86] & ~v86;
  v88 = swift_allocObject();
  *(v88 + 16) = v188;
  *(v88 + 24) = v75;
  (v182)(v88 + WitnessTable, v81, v70);
  v89 = *(v82 + 32);
  v89(v88 + v87, v84, v85);
  v90 = v145;
  v91 = v173;
  View.onChange<A>(of:initial:_:)();

  (v153)[1](v91, v90);
  v92 = v187;
  v93 = v191;
  v153 = WorkoutBrowsingViewiOS.scrollToExistingActivityType.getter(v187);
  v200 = v153;
  v94 = v190;
  v184(v190, v93, v92);
  v95 = v178;
  v173 = v83;
  (v172)(v84, v180, v178);
  v168 = v86;
  v96 = swift_allocObject();
  v97 = v189;
  *(v96 + 16) = v188;
  *(v96 + 24) = v97;
  (v182)(v96 + WitnessTable, v94, v92);
  v98 = v87;
  v99 = v82 + 32;
  v100 = v133;
  v181 = v99;
  v167 = v89;
  v89(v96 + v87, v84, v95);
  v101 = v149;
  v102 = v174;
  View.onChange<A>(of:initial:_:)();

  (*(v154 + 8))(v102, v101);
  v103 = WorkoutBrowsingViewiOS.scrollingCoordinator.getter();
  if (v103)
  {
    v104 = v103;
    swift_getKeyPath();
    v200 = v104;
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator, type metadata accessor for WorkoutScrollingCoordinator, &protocol conformance descriptor for WorkoutScrollingCoordinator);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v105 = *(v104 + 16);
  }

  else
  {
    v105 = 2;
  }

  LOBYTE(v200) = v105;
  v106 = v190;
  v107 = v187;
  v184(v190, v191, v187);
  v108 = v177;
  v109 = v178;
  (v172)(v177, v180, v178);
  v110 = swift_allocObject();
  v111 = v188;
  v112 = v189;
  *(v110 + 16) = v188;
  *(v110 + 24) = v112;
  (v182)(v110 + WitnessTable, v106, v107);
  (v167)(v110 + v98, v108, v109);
  v113 = v159;
  v114 = v175;
  View.onChange<A>(of:initial:_:)();

  (*(v158 + 8))(v114, v113);
  v115 = WorkoutBrowsingViewiOS.scrollingCoordinator.getter();
  if (v115)
  {
    v116 = v115;
    swift_getKeyPath();
    v200 = v116;
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type WorkoutScrollingCoordinator and conformance WorkoutScrollingCoordinator, type metadata accessor for WorkoutScrollingCoordinator, &protocol conformance descriptor for WorkoutScrollingCoordinator);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v117 = *(v116 + 24);
    v118 = v117;
  }

  else
  {
    v117 = 0;
  }

  v200 = v117;
  v119 = v190;
  v120 = v187;
  v184(v190, v191, v187);
  v121 = swift_allocObject();
  *(v121 + 16) = v111;
  *(v121 + 24) = v112;
  (v182)(v121 + WitnessTable, v119, v120);
  v122 = v160;
  v123 = v166;
  v124 = v170;
  v125 = v162;
  v126 = v176;
  View.onChange<A>(of:initial:_:)();

  (*(v164 + 8))(v126, v123);
  v200 = v123;
  v201 = v124;
  v202 = v125;
  v203 = v100;
  swift_getOpaqueTypeConformance2();
  v127 = v161;
  v128 = v165;
  static ViewBuilder.buildExpression<A>(_:)();
  v129 = *(v163 + 8);
  v129(v122, v128);
  static ViewBuilder.buildBlock<A>(_:)();
  return (v129)(v127, v128);
}

double _s9WorkoutUI0A15BrowsingViewiOSV4bodyQrvg05SwiftB04ViewPAEE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAgEE7toolbar7contentQrqd__yXE_tAE14ToolbarContentRd__lFQOyAgEE0O16TitleDisplayModeyQrAE0qstU0VFQOyAgEE013navigationBarS0yQrqd__SyRd__lFQOyAgEE5sheet11isPresented9onDismissAPQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAgEE0V11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAgEEAvwxPQrA__A0_qd__yctAeFRd__lFQOyAgEEA1_A2_A3_Qrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAE06ScrollH6ReaderVyAgEE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEE9onReceive_7performQrqd___y6OutputQyd__ct7Combine9PublisherRd__s5NeverO7FailureRtd__lFQOyAgEE17listRowBackgroundyQrqd__SgAeFRd__lFQOyAgEE16listRowSeparator_5edgesQrAE10VisibilityO_AE12VerticalEdgeO3SetVtFQOyAgEE11listPaddingyQrAE4EdgeOA27_V_12CoreGraphics7CGFloatVtFQOyAgEE14listRowSpacingyQrA35_SgFQOyAE4ListVyA16_AE05TupleH0VyAgEE2idyQrqd__SHRd__lFQOyAE05EmptyH0V_SSQo__AgAE21withZeroListRowInsetsQryFQOyAA0A13DisclaimerRowV_Qo_SgAgAEA46_QryFQOyAC025safetyCheckInRemindersTipH033_C6A1CD99A5FFEBCF0602419937A3F460LLQrvpQOyx_Qo__Qo_AE7ForEachVySay0A4Core36ManagedConfigurationSourcePickerItemCGSiAgEE17environmentObjectyQrqd__A13_16ObservableObjectRd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA020ManagedConfigurationdE0V_So21FIUIFormattingManagerCA66_A13_A62_AAyHCg0_Qo__AA28ConfigurationNavigationModelCQo__So13HKHealthStoreCA72_A13_A62_AAyHCg0_Qo__A57_0A28ConfigurationOccurrenceStoreCQo_GAE07DynamichR0PAEE8onDeleteA10_Qry10Foundation8IndexSetVcSg_tFQOyA56_ySayA57_26StandardActivityPickerItemCGSiAE08ModifiedR0VyAgEE20accessibilityElement8childrenQrAE26AccessibilityChildBehaviorV_tFQOyAgEEA19_yQrA20_AeFRd__lFQOyAgEE0P5Shape_6eoFillQrqd___SbtAE5ShapeRd__lFQOyAgEE13listRowInsetsyQrAE10EdgeInsetsVSgFQOyAgEEA42_yQrqd__SHRd__lFQOyAE6VStackVyA41_yAE6HStackVyA41_yA89_yAgEE34flipsForRightToLeftLayoutDirectionyQrSbFQOyAgEE5frame8minWidth10idealWidth8maxWidth9minHeight11idealHeight9maxHeight9alignmentQrA37__A37_A37_A37_A37_A37_AE9AlignmentVtFQOyAgEE15foregroundColoryQrAE5ColorVSgFQOyAE5GroupVyAE012_ConditionalR0VyAgEE10imageScaleyQrAE5ImageV5ScaleOFQOyAgEE4fontyQrAE4FontVSgFQOyA126__Qo__Qo_AgEE7paddingyQrA32__A37_tFQOyA126_AAE11scaledToFit4sizeQrSo6CGSizeV_tFQOy_Qo__Qo_GG_Qo__Qo__Qo_AE31AccessibilityAttachmentModifierVG_AE6SpacerVAgEEA94___A95_QrAE0R10ShapeKindsV_qd__SbtAEA96_Rd__lFQOyAgEEA94__A95_Qrqd___SbtAEA96_Rd__lFQOyAgEE11buttonStyleyQrqd__AE20PrimitiveButtonStyleRd__lFQOyAA011StartButtonH0V_AE16PlainButtonStyleVQo__AE9RectangleVQo__AE6CircleVQo_SgtGG_A89_yAgEE0M7SpacingyQrA35_FQOyAE4TextV_Qo_A148_GAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA104_yA41_yAA28MediaConfigurationRoomButtonVSg_AgEE11environmentyQrA20_Rld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_A57_0A25VoiceAvailabilityProviderCQo_SgAgEEA94___A95_QrA153__qd__SbtAEA96_Rd__lFQOyA89_yAgEEA154_yQrqd__AEA155_Rd__lFQOyAE6ButtonVyAgEEA116_yQrA119_FQOyAgEEA129_yQrA132_FQOyAgEE9clipShape_5styleQrqd___AE9FillStyleVtAEA96_Rd__lFQOyAgEEA116_yQrA119_FQOyAgEE10background_20ignoresSafeAreaEdgesQrqd___A32_tAE10ShapeStyleRd__lFQOyAgEEA135_yQrA32__A37_tFQOyAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA126__Qo__Qo__A118_Qo__Qo__AE16RoundedRectangleVQo__Qo__Qo_G_A159_Qo_A148_G_A201_Qo_tGG_Qo_tGG_SiQo__Qo__A162_Qo__AE06_ShapeH0VyA201_A118_GQo__Qo_A148_GG_Qo_A89_yAgEEA19_yQrA20_AeFRd__lFQOyA188_yA104_yA41_yA151__AgEEA193__A113_Qrqd___A115_tAeFRd__lFQOyAgEEA106_5width6heightA113_QrA37__A37_A115_tFQOyA133__Qo__A218_yA165_A118_GQo_A151_tGGG_A118_Qo_A148_GxSgtGG_Qo__Qo__Qo__A118_Qo__So20NSNotificationCenterCA81_EA14_VQo__A87_Qo__So23FIUIWorkoutActivityTypeCSgQo__SbSgQo__A249_Qo_G_A248_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA178_yQrA20_Rld__CA179_A180_Rd__lFQOyAA16ActivityTypeRoomV_A184_Qo__A66_A66_A13_A62_AAyHCg0_Qo_Qo__AA03AddA4ListVQo__A59_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA029ManagedConfigurationsUpcomingdE0V_A66_A66_A13_A62_AAyHCg0_Qo__A69_Qo__A72_A72_A13_A62_AAyHCg0_Qo__A75_Qo_Qo__AA06Manuala7LoggingH0VQo__SSQo__Qo__AE0qR7BuilderV10buildBlockyQrx_q_tAeQRzAeQR_r0_lFZQOy_A276_A277_yQrx_q_tAeQRzAeQR_r0_lFZQOy_AE0Q4ItemVyytA188_yA89_yAgEE6offsetyQrA139_FQOyA126__Qo_A148_GGGAE0Q6SpacerVQo_SgA279_yytAA20DeviceConnectionMenuVGQo_Qo__Qo_yXEfU_A253_AE06ScrollH5ProxyVcfU_A236_yXEfU_@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v118 = a4;
  v112 = *(a2 - 1);
  MEMORY[0x28223BE20](a1);
  v101 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v100 = &v100 - v9;
  v119 = type metadata accessor for Optional();
  v115 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v120 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v117 = &v100 - v12;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGMR);
  MEMORY[0x28223BE20](v109);
  v108 = &v100 - v13;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGAA023AccessibilityAttachmentN0VGMR);
  MEMORY[0x28223BE20](v113);
  v130 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v129 = &v100 - v16;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiAA15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAIyAIyAIyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyAIyAIyAIyAIyAA5GroupVyAA012_ConditionalL0VyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGAIyAIyAIyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipC9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVAIyAIyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0eB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_L13ShapeModifierVyAA9RectangleVGGAA01_L17ShapeKindModifierVyAA6CircleVGGSgtGG_AIyAIyAA4TextVA3_y0F8Graphics7CGFloatVGGA36_GAIyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AD0E25VoiceAvailabilityProviderCQo_SgAIyAIyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyAIyAIyAIyAIyAIyAIyAIyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiAA15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAIyAIyAIyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyAIyAIyAIyAIyAA5GroupVyAA012_ConditionalL0VyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGAIyAIyAIyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipC9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVAIyAIyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0eB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_L13ShapeModifierVyAA9RectangleVGGAA01_L17ShapeKindModifierVyAA6CircleVGGSgtGG_AIyAIyAA4TextVA3_y0F8Graphics7CGFloatVGGA36_GAIyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AD0E25VoiceAvailabilityProviderCQo_SgAIyAIyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyAIyAIyAIyAIyAIyAIyAIyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGMR);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v123 = &v100 - v17;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGACyACyACyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipE9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVACyACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0gB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_D17ShapeKindModifierVyAA6CircleVGGSgtGG_ACyACyAA4TextVA3_y0H8Graphics7CGFloatVGGA36_GACyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AF0G25VoiceAvailabilityProviderCQo_SgACyACyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGA113_yAA16OnDeleteTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGACyACyACyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipE9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVACyACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0gB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_D17ShapeKindModifierVyAA6CircleVGGSgtGG_ACyACyAA4TextVA3_y0H8Graphics7CGFloatVGGA36_GACyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AF0G25VoiceAvailabilityProviderCQo_SgACyACyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGA113_yAA16OnDeleteTraitKeyVGGMR);
  MEMORY[0x28223BE20](v125);
  v128 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v105 = &v100 - v20;
  MEMORY[0x28223BE20](v21);
  v136 = &v100 - v22;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGSiAA15ModifiedContentVyAIyAIyAIy0eB00gH7ViewiOSVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0H15NavigationModelCSgGGANySo13HKHealthStoreCSgGGANyAD0eh10OccurrenceY0CSgGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGSiAA15ModifiedContentVyAIyAIyAIy0eB00gH7ViewiOSVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0H15NavigationModelCSgGGANySo13HKHealthStoreCSgGGANyAD0eh10OccurrenceY0CSgGGGMR);
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v127 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v135 = &v100 - v25;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP6TipKitE03tipE5StyleyQrqd__AF0feI0Rd__lFQOyAF0fE0VyAF03AnyF0VG_07WorkoutB00fg22SafetyCheckInRemindersfI0VQo_AN17ZeroListRowInsetsVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP6TipKitE03tipE5StyleyQrqd__AF0feI0Rd__lFQOyAF0fE0VyAF03AnyF0VG_07WorkoutB00fg22SafetyCheckInRemindersfI0VQo_AN17ZeroListRowInsetsVGMR);
  MEMORY[0x28223BE20](v111);
  v126 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v134 = &v100 - v28;
  v139 = a2;
  v140 = a3;
  v30 = type metadata accessor for WorkoutBrowsingViewiOS(0, a2, a3, v29);
  v131 = *(v30 - 8);
  v132 = *(v131 + 64);
  MEMORY[0x28223BE20](v30);
  v133 = &v100 - v31;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGMR);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v104 = &v100 - v32;
  v33 = type metadata accessor for WorkoutReadinessChecker();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v100 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A19ReadinessCheckErrorOSgMd, &_s11WorkoutCore0A19ReadinessCheckErrorOSgMR);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v100 - v38;
  v40 = type metadata accessor for WorkoutReadinessCheckError();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v100 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGSgMR);
  MEMORY[0x28223BE20](v110);
  v124 = &v100 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v138 = &v100 - v46;
  WorkoutBrowsingViewiOS.devicesProvider.getter(v30);
  WorkoutReadinessChecker.init(workoutDevicesProvider:)();
  WorkoutReadinessChecker.checkReadiness()();
  (*(v34 + 8))(v36, v33);
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    outlined destroy of WorkoutReadinessCheckError?(v39, &_s11WorkoutCore0A19ReadinessCheckErrorOSgMd, &_s11WorkoutCore0A19ReadinessCheckErrorOSgMR);
LABEL_5:
    v48 = 1;
    v49 = v30;
    v50 = v131;
    v51 = v133;
    goto LABEL_7;
  }

  v47 = *(v41 + 32);
  v47(v43, v39, v40);
  AppStorage.wrappedValue.getter();
  if (v151[0])
  {
    (*(v41 + 8))(v43, v40);
    goto LABEL_5;
  }

  v52 = v104;
  v47(v104, v43, v40);
  v50 = v131;
  v51 = v133;
  (*(v131 + 16))(v133, a1, v30);
  v53 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v54 = swift_allocObject();
  v55 = v140;
  *(v54 + 16) = v139;
  *(v54 + 24) = v55;
  (*(v50 + 32))(v54 + v53, v51, v30);
  v56 = (v52 + *(type metadata accessor for WorkoutDisclaimerRow(0) + 20));
  *v56 = _s9WorkoutUI0A15BrowsingViewiOSV4bodyQrvg05SwiftB04ViewPAEE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAgEE7toolbar7contentQrqd__yXE_tAE14ToolbarContentRd__lFQOyAgEE0O16TitleDisplayModeyQrAE0qstU0VFQOyAgEE013navigationBarS0yQrqd__SyRd__lFQOyAgEE5sheet11isPresented9onDismissAPQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAgEE0V11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAgEEAvwxPQrA__A0_qd__yctAeFRd__lFQOyAgEEA1_A2_A3_Qrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAE06ScrollH6ReaderVyAgEE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEE9onReceive_7performQrqd___y6OutputQyd__ct7Combine9PublisherRd__s5NeverO7FailureRtd__lFQOyAgEE17listRowBackgroundyQrqd__SgAeFRd__lFQOyAgEE16listRowSeparator_5edgesQrAE10VisibilityO_AE12VerticalEdgeO3SetVtFQOyAgEE11listPaddingyQrAE4EdgeOA27_V_12CoreGraphics7CGFloatVtFQOyAgEE14listRowSpacingyQrA35_SgFQOyAE4ListVyA16_AE05TupleH0VyAgEE2idyQrqd__SHRd__lFQOyAE05EmptyH0V_SSQo__AgAE21withZeroListRowInsetsQryFQOyAA0A13DisclaimerRowV_Qo_SgAgAEA46_QryFQOyAC025safetyCheckInRemindersTipH033_C6A1CD99A5FFEBCF0602419937A3F460LLQrvpQOyx_Qo__Qo_AE7ForEachVySay0A4Core36ManagedConfigurationSourcePickerItemCGSiAgEE17environmentObjectyQrqd__A13_16ObservableObjectRd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA020ManagedConfigurationdE0V_So21FIUIFormattingManagerCA66_A13_A62_AAyHCg0_Qo__AA28ConfigurationNavigationModelCQo__So13HKHealthStoreCA72_A13_A62_AAyHCg0_Qo__A57_0A28ConfigurationOccurrenceStoreCQo_GAE07DynamichR0PAEE8onDeleteA10_Qry10Foundation8IndexSetVcSg_tFQOyA56_ySayA57_26StandardActivityPickerItemCGSiAE08ModifiedR0VyAgEE20accessibilityElement8childrenQrAE26AccessibilityChildBehaviorV_tFQOyAgEEA19_yQrA20_AeFRd__lFQOyAgEE0P5Shape_6eoFillQrqd___SbtAE5ShapeRd__lFQOyAgEE13listRowInsetsyQrAE10EdgeInsetsVSgFQOyAgEEA42_yQrqd__SHRd__lFQOyAE6VStackVyA41_yAE6HStackVyA41_yA89_yAgEE34flipsForRightToLeftLayoutDirectionyQrSbFQOyAgEE5frame8minWidth10idealWidth8maxWidth9minHeight11idealHeight9maxHeight9alignmentQrA37__A37_A37_A37_A37_A37_AE9AlignmentVtFQOyAgEE15foregroundColoryQrAE5ColorVSgFQOyAE5GroupVyAE012_ConditionalR0VyAgEE10imageScaleyQrAE5ImageV5ScaleOFQOyAgEE4fontyQrAE4FontVSgFQOyA126__Qo__Qo_AgEE7paddingyQrA32__A37_tFQOyA126_AAE11scaledToFit4sizeQrSo6CGSizeV_tFQOy_Qo__Qo_GG_Qo__Qo__Qo_AE31AccessibilityAttachmentModifierVG_AE6SpacerVAgEEA94___A95_QrAE0R10ShapeKindsV_qd__SbtAEA96_Rd__lFQOyAgEEA94__A95_Qrqd___SbtAEA96_Rd__lFQOyAgEE11buttonStyleyQrqd__AE20PrimitiveButtonStyleRd__lFQOyAA011StartButtonH0V_AE16PlainButtonStyleVQo__AE9RectangleVQo__AE6CircleVQo_SgtGG_A89_yAgEE0M7SpacingyQrA35_FQOyAE4TextV_Qo_A148_GAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA104_yA41_yAA28MediaConfigurationRoomButtonVSg_AgEE11environmentyQrA20_Rld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_A57_0A25VoiceAvailabilityProviderCQo_SgAgEEA94___A95_QrA153__qd__SbtAEA96_Rd__lFQOyA89_yAgEEA154_yQrqd__AEA155_Rd__lFQOyAE6ButtonVyAgEEA116_yQrA119_FQOyAgEEA129_yQrA132_FQOyAgEE9clipShape_5styleQrqd___AE9FillStyleVtAEA96_Rd__lFQOyAgEEA116_yQrA119_FQOyAgEE10background_20ignoresSafeAreaEdgesQrqd___A32_tAE10ShapeStyleRd__lFQOyAgEEA135_yQrA32__A37_tFQOyAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA126__Qo__Qo__A118_Qo__Qo__AE16RoundedRectangleVQo__Qo__Qo_G_A159_Qo_A148_G_A201_Qo_tGG_Qo_tGG_SiQo__Qo__A162_Qo__AE06_ShapeH0VyA201_A118_GQo__Qo_A148_GG_Qo_A89_yAgEEA19_yQrA20_AeFRd__lFQOyA188_yA104_yA41_yA151__AgEEA193__A113_Qrqd___A115_tAeFRd__lFQOyAgEEA106_5width6heightA113_QrA37__A37_A115_tFQOyA133__Qo__A218_yA165_A118_GQo_A151_tGGG_A118_Qo_A148_GxSgtGG_Qo__Qo__Qo__A118_Qo__So20NSNotificationCenterCA81_EA14_VQo__A87_Qo__So23FIUIWorkoutActivityTypeCSgQo__SbSgQo__A249_Qo_G_A248_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA178_yQrA20_Rld__CA179_A180_Rd__lFQOyAA16ActivityTypeRoomV_A184_Qo__A66_A66_A13_A62_AAyHCg0_Qo_Qo__AA03AddA4ListVQo__A59_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA029ManagedConfigurationsUpcomingdE0V_A66_A66_A13_A62_AAyHCg0_Qo__A69_Qo__A72_A72_A13_A62_AAyHCg0_Qo__A75_Qo_Qo__AA06Manuala7LoggingH0VQo__SSQo__Qo__AE0qR7BuilderV10buildBlockyQrx_q_tAeQRzAeQR_r0_lFZQOy_A276_A277_yQrx_q_tAeQRzAeQR_r0_lFZQOy_AE0Q4ItemVyytA188_yA89_yAgEE6offsetyQrA139_FQOyA126__Qo_A148_GGGAE0Q6SpacerVQo_SgA279_yytAA20DeviceConnectionMenuVGQo_Qo__Qo_yXEfU_A253_AE06ScrollH5ProxyVcfU_A236_yXEfU_yycfU_TA;
  v56[1] = v54;
  outlined init with take of ModifiedContent<WorkoutDisclaimerRow, ZeroListRowInsets>(v52, v138, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGMR);
  v48 = 0;
  v49 = v30;
LABEL_7:
  v137 = v49;
  (*(v121 + 56))(v138, v48, 1, v122);
  WorkoutBrowsingViewiOS.safetyCheckInRemindersTipView.getter(v49);

  v57 = dispatch thunk of ActivityPickerDataSource.managedConfigurationSourceItems.getter();

  v151[0] = v57;
  v131 = *(v50 + 16);
  (v131)(v51, a1, v49);
  v58 = *(v50 + 80);
  v102 = (v58 + 32) & ~v58;
  v59 = swift_allocObject();
  v60 = v140;
  *(v59 + 16) = v139;
  *(v59 + 24) = v60;
  v103 = *(v50 + 32);
  v103(v59 + ((v58 + 32) & ~v58), v51, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore36ManagedConfigurationSourcePickerItemCGMd, &_sSay11WorkoutCore36ManagedConfigurationSourcePickerItemCGMR);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB027ManagedConfigurationViewiOSVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGAHySo13HKHealthStoreCSgGGAHy0E4Core0eg10OccurrenceS0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB027ManagedConfigurationViewiOSVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGAHySo13HKHealthStoreCSgGGAHy0E4Core0eg10OccurrenceS0CSgGGMR);
  v104 = MEMORY[0x277D83980];
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type [ManagedConfigurationSourcePickerItem] and conformance [A], &_sSay11WorkoutCore36ManagedConfigurationSourcePickerItemCGMd, &_sSay11WorkoutCore36ManagedConfigurationSourcePickerItemCGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationViewiOS, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>> and conformance <> ModifiedContent<A, B>();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem, MEMORY[0x277D7E6E8], MEMORY[0x277D7E6F0]);
  ForEach<>.init(_:content:)();

  v61 = dispatch thunk of ActivityPickerDataSource.standardItems.getter();

  v151[0] = v61;
  v122 = v50 + 16;
  (v131)(v51, a1, v137);
  v62 = v102;
  v121 = v58;
  v63 = v103;
  v64 = swift_allocObject();
  v65 = v140;
  *(v64 + 16) = v139;
  *(v64 + 24) = v65;
  v63(v64 + v62, v51, v137);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore26StandardActivityPickerItemCGMd, &_sSay11WorkoutCore26StandardActivityPickerItemCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleE0VyAA6HStackVyAOyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAW5ScaleOGGACyACyACyAwA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGAYyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA17_FlipForRTLEffectVGAA0i10AttachmentV0VG_AA6SpacerVACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_d5ShapeV0VyAA9RectangleVGGAA01_d9ShapeKindV0VyAA6CircleVGGSgtGG_ACyACyAA4TextVAYy12CoreGraphics7CGFloatVGGA30_GACyAQyAOyA36_28MediaConfigurationRoomButtonVSg_AeAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA36_019VoiceCompanionEntryE0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyAeAEA34_yQrqd__AAA35_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAWA24_GA14_GAA016_BackgroundStyleV0VyA19_GGA21_GAA11_ClipEffectVyAA16RoundedRectangleVGGA1_GA21_GG_A40_Qo_A30_GA49_yA91_GGtGGA24_GtGGSiGAA06_TraituV0VyAA018ListRowInsetsTraitT0VGGA46_GA108_yAA022ListRowBackgroundTraitT0VGG_Qo_A30_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleE0VyAA6HStackVyAOyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAW5ScaleOGGACyACyACyAwA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGAYyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA17_FlipForRTLEffectVGAA0i10AttachmentV0VG_AA6SpacerVACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_d5ShapeV0VyAA9RectangleVGGAA01_d9ShapeKindV0VyAA6CircleVGGSgtGG_ACyACyAA4TextVAYy12CoreGraphics7CGFloatVGGA30_GACyAQyAOyA36_28MediaConfigurationRoomButtonVSg_AeAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA36_019VoiceCompanionEntryE0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyAeAEA34_yQrqd__AAA35_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAWA24_GA14_GAA016_BackgroundStyleV0VyA19_GGA21_GAA11_ClipEffectVyAA16RoundedRectangleVGGA1_GA21_GG_A40_Qo_A30_GA49_yA91_GGtGGA24_GtGGSiGAA06_TraituV0VyAA018ListRowInsetsTraitT0VGGA46_GA108_yAA022ListRowBackgroundTraitT0VGG_Qo_A30_GMR);
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type [StandardActivityPickerItem] and conformance [A], &_sSay11WorkoutCore26StandardActivityPickerItemCGMd, &_sSay11WorkoutCore26StandardActivityPickerItemCGMR, v104);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type StandardActivityPickerItem and conformance StandardActivityPickerItem, MEMORY[0x277D7E5D0], MEMORY[0x277D7E5D8]);
  v66 = v137;
  ForEach<>.init(_:content:)();
  if (WorkoutBrowsingViewiOS.swipeToDeleteEnabled.getter(v66))
  {
    v67 = v133;
    (v131)(v133, a1, v66);
    v68 = swift_allocObject();
    v69 = v139;
    v70 = v140;
    *(v68 + 16) = v139;
    *(v68 + 24) = v70;
    v63(v68 + v62, v67, v66);
    v71 = swift_allocObject();
    *(v71 + 16) = _s9WorkoutUI0A15BrowsingViewiOSV4bodyQrvg05SwiftB04ViewPAEE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAgEE7toolbar7contentQrqd__yXE_tAE14ToolbarContentRd__lFQOyAgEE0O16TitleDisplayModeyQrAE0qstU0VFQOyAgEE013navigationBarS0yQrqd__SyRd__lFQOyAgEE5sheet11isPresented9onDismissAPQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAgEE0V11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAgEEAvwxPQrA__A0_qd__yctAeFRd__lFQOyAgEEA1_A2_A3_Qrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAE06ScrollH6ReaderVyAgEE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEE9onReceive_7performQrqd___y6OutputQyd__ct7Combine9PublisherRd__s5NeverO7FailureRtd__lFQOyAgEE17listRowBackgroundyQrqd__SgAeFRd__lFQOyAgEE16listRowSeparator_5edgesQrAE10VisibilityO_AE12VerticalEdgeO3SetVtFQOyAgEE11listPaddingyQrAE4EdgeOA27_V_12CoreGraphics7CGFloatVtFQOyAgEE14listRowSpacingyQrA35_SgFQOyAE4ListVyA16_AE05TupleH0VyAgEE2idyQrqd__SHRd__lFQOyAE05EmptyH0V_SSQo__AgAE21withZeroListRowInsetsQryFQOyAA0A13DisclaimerRowV_Qo_SgAgAEA46_QryFQOyAC025safetyCheckInRemindersTipH033_C6A1CD99A5FFEBCF0602419937A3F460LLQrvpQOyx_Qo__Qo_AE7ForEachVySay0A4Core36ManagedConfigurationSourcePickerItemCGSiAgEE17environmentObjectyQrqd__A13_16ObservableObjectRd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA020ManagedConfigurationdE0V_So21FIUIFormattingManagerCA66_A13_A62_AAyHCg0_Qo__AA28ConfigurationNavigationModelCQo__So13HKHealthStoreCA72_A13_A62_AAyHCg0_Qo__A57_0A28ConfigurationOccurrenceStoreCQo_GAE07DynamichR0PAEE8onDeleteA10_Qry10Foundation8IndexSetVcSg_tFQOyA56_ySayA57_26StandardActivityPickerItemCGSiAE08ModifiedR0VyAgEE20accessibilityElement8childrenQrAE26AccessibilityChildBehaviorV_tFQOyAgEEA19_yQrA20_AeFRd__lFQOyAgEE0P5Shape_6eoFillQrqd___SbtAE5ShapeRd__lFQOyAgEE13listRowInsetsyQrAE10EdgeInsetsVSgFQOyAgEEA42_yQrqd__SHRd__lFQOyAE6VStackVyA41_yAE6HStackVyA41_yA89_yAgEE34flipsForRightToLeftLayoutDirectionyQrSbFQOyAgEE5frame8minWidth10idealWidth8maxWidth9minHeight11idealHeight9maxHeight9alignmentQrA37__A37_A37_A37_A37_A37_AE9AlignmentVtFQOyAgEE15foregroundColoryQrAE5ColorVSgFQOyAE5GroupVyAE012_ConditionalR0VyAgEE10imageScaleyQrAE5ImageV5ScaleOFQOyAgEE4fontyQrAE4FontVSgFQOyA126__Qo__Qo_AgEE7paddingyQrA32__A37_tFQOyA126_AAE11scaledToFit4sizeQrSo6CGSizeV_tFQOy_Qo__Qo_GG_Qo__Qo__Qo_AE31AccessibilityAttachmentModifierVG_AE6SpacerVAgEEA94___A95_QrAE0R10ShapeKindsV_qd__SbtAEA96_Rd__lFQOyAgEEA94__A95_Qrqd___SbtAEA96_Rd__lFQOyAgEE11buttonStyleyQrqd__AE20PrimitiveButtonStyleRd__lFQOyAA011StartButtonH0V_AE16PlainButtonStyleVQo__AE9RectangleVQo__AE6CircleVQo_SgtGG_A89_yAgEE0M7SpacingyQrA35_FQOyAE4TextV_Qo_A148_GAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA104_yA41_yAA28MediaConfigurationRoomButtonVSg_AgEE11environmentyQrA20_Rld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_A57_0A25VoiceAvailabilityProviderCQo_SgAgEEA94___A95_QrA153__qd__SbtAEA96_Rd__lFQOyA89_yAgEEA154_yQrqd__AEA155_Rd__lFQOyAE6ButtonVyAgEEA116_yQrA119_FQOyAgEEA129_yQrA132_FQOyAgEE9clipShape_5styleQrqd___AE9FillStyleVtAEA96_Rd__lFQOyAgEEA116_yQrA119_FQOyAgEE10background_20ignoresSafeAreaEdgesQrqd___A32_tAE10ShapeStyleRd__lFQOyAgEEA135_yQrA32__A37_tFQOyAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA126__Qo__Qo__A118_Qo__Qo__AE16RoundedRectangleVQo__Qo__Qo_G_A159_Qo_A148_G_A201_Qo_tGG_Qo_tGG_SiQo__Qo__A162_Qo__AE06_ShapeH0VyA201_A118_GQo__Qo_A148_GG_Qo_A89_yAgEEA19_yQrA20_AeFRd__lFQOyA188_yA104_yA41_yA151__AgEEA193__A113_Qrqd___A115_tAeFRd__lFQOyAgEEA106_5width6heightA113_QrA37__A37_A115_tFQOyA133__Qo__A218_yA165_A118_GQo_A151_tGGG_A118_Qo_A148_GxSgtGG_Qo__Qo__Qo__A118_Qo__So20NSNotificationCenterCA81_EA14_VQo__A87_Qo__So23FIUIWorkoutActivityTypeCSgQo__SbSgQo__A249_Qo_G_A248_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA178_yQrA20_Rld__CA179_A180_Rd__lFQOyAA16ActivityTypeRoomV_A184_Qo__A66_A66_A13_A62_AAyHCg0_Qo_Qo__AA03AddA4ListVQo__A59_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA029ManagedConfigurationsUpcomingdE0V_A66_A66_A13_A62_AAyHCg0_Qo__A69_Qo__A72_A72_A13_A62_AAyHCg0_Qo__A75_Qo_Qo__AA06Manuala7LoggingH0VQo__SSQo__Qo__AE0qR7BuilderV10buildBlockyQrx_q_tAeQRzAeQR_r0_lFZQOy_A276_A277_yQrx_q_tAeQRzAeQR_r0_lFZQOy_AE0Q4ItemVyytA188_yA89_yAgEE6offsetyQrA139_FQOyA126__Qo_A148_GGGAE0Q6SpacerVQo_SgA279_yytAA20DeviceConnectionMenuVGQo_Qo__Qo_yXEfU_A253_AE06ScrollH5ProxyVcfU_A236_yXEfU_yA83_cfU2_TA;
    *(v71 + 24) = v68;
    v72 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet) -> ();
  }

  else
  {
    v72 = 0;
    v71 = 0;
    v70 = v140;
    v69 = v139;
  }

  v73 = v105;
  (*(v106 + 32))(v105, v123, v107);
  v74 = (v73 + *(v125 + 36));
  *v74 = v72;
  v74[1] = v71;
  outlined init with take of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v73, v136, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGACyACyACyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipE9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVACyACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0gB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_D17ShapeKindModifierVyAA6CircleVGGSgtGG_ACyACyAA4TextVA3_y0H8Graphics7CGFloatVGGA36_GACyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AF0G25VoiceAvailabilityProviderCQo_SgACyACyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGA113_yAA16OnDeleteTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGACyACyACyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipE9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVACyACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0gB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_D17ShapeKindModifierVyAA6CircleVGGSgtGG_ACyACyAA4TextVA3_y0H8Graphics7CGFloatVGGA36_GACyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AF0G25VoiceAvailabilityProviderCQo_SgACyACyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGA113_yAA16OnDeleteTraitKeyVGGMR);
  v75 = v133;
  (v131)(v133, a1, v66);
  v76 = swift_allocObject();
  *(v76 + 16) = v69;
  *(v76 + 24) = v70;
  v63(v76 + v62, v75, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundM0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundM0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAGtGGMR);
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundM0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundM0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAGtGGMR, MEMORY[0x277CE1138]);
  v77 = v108;
  Button.init(action:label:)();
  v151[0] = static Color.clear.getter();
  *(v77 + *(v109 + 36)) = AnyView.init<A>(_:)();
  if (one-time initialization token for addWorkout != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type ModifiedContent<Button<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>>, Spacer)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityIdentifier(_:)();
  outlined destroy of WorkoutReadinessCheckError?(v77, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGMR);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(v151);

  if ((v151[0] & 1) == 0 && (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(v151), , , , LOBYTE(v151[0]) == 1) && (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(v151), , , , v151[0] == 1))
  {
    v78 = *(a1 + *(v137 + 80));
    v79 = *(a1 + 56);

    v80 = v101;
    v78( _s9WorkoutUI0A15BrowsingViewiOSV4bodyQrvg05SwiftB04ViewPAEE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAgEE7toolbar7contentQrqd__yXE_tAE14ToolbarContentRd__lFQOyAgEE0O16TitleDisplayModeyQrAE0qstU0VFQOyAgEE013navigationBarS0yQrqd__SyRd__lFQOyAgEE5sheet11isPresented9onDismissAPQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAgEE0V11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAgEEAvwxPQrA__A0_qd__yctAeFRd__lFQOyAgEEA1_A2_A3_Qrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAE06ScrollH6ReaderVyAgEE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEE9onReceive_7performQrqd___y6OutputQyd__ct7Combine9PublisherRd__s5NeverO7FailureRtd__lFQOyAgEE17listRowBackgroundyQrqd__SgAeFRd__lFQOyAgEE16listRowSeparator_5edgesQrAE10VisibilityO_AE12VerticalEdgeO3SetVtFQOyAgEE11listPaddingyQrAE4EdgeOA27_V_12CoreGraphics7CGFloatVtFQOyAgEE14listRowSpacingyQrA35_SgFQOyAE4ListVyA16_AE05TupleH0VyAgEE2idyQrqd__SHRd__lFQOyAE05EmptyH0V_SSQo__AgAE21withZeroListRowInsetsQryFQOyAA0A13DisclaimerRowV_Qo_SgAgAEA46_QryFQOyAC025safetyCheckInRemindersTipH033_C6A1CD99A5FFEBCF0602419937A3F460LLQrvpQOyx_Qo__Qo_AE7ForEachVySay0A4Core36ManagedConfigurationSourcePickerItemCGSiAgEE17environmentObjectyQrqd__A13_16ObservableObjectRd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA020ManagedConfigurationdE0V_So21FIUIFormattingManagerCA66_A13_A62_AAyHCg0_Qo__AA28ConfigurationNavigationModelCQo__So13HKHealthStoreCA72_A13_A62_AAyHCg0_Qo__A57_0A28ConfigurationOccurrenceStoreCQo_GAE07DynamichR0PAEE8onDeleteA10_Qry10Foundation8IndexSetVcSg_tFQOyA56_ySayA57_26StandardActivityPickerItemCGSiAE08ModifiedR0VyAgEE20accessibilityElement8childrenQrAE26AccessibilityChildBehaviorV_tFQOyAgEEA19_yQrA20_AeFRd__lFQOyAgEE0P5Shape_6eoFillQrqd___SbtAE5ShapeRd__lFQOyAgEE13listRowInsetsyQrAE10EdgeInsetsVSgFQOyAgEEA42_yQrqd__SHRd__lFQOyAE6VStackVyA41_yAE6HStackVyA41_yA89_yAgEE34flipsForRightToLeftLayoutDirectionyQrSbFQOyAgEE5frame8minWidth10idealWidth8maxWidth9minHeight11idealHeight9maxHeight9alignmentQrA37__A37_A37_A37_A37_A37_AE9AlignmentVtFQOyAgEE15foregroundColoryQrAE5ColorVSgFQOyAE5GroupVyAE012_ConditionalR0VyAgEE10imageScaleyQrAE5ImageV5ScaleOFQOyAgEE4fontyQrAE4FontVSgFQOyA126__Qo__Qo_AgEE7paddingyQrA32__A37_tFQOyA126_AAE11scaledToFit4sizeQrSo6CGSizeV_tFQOy_Qo__Qo_GG_Qo__Qo__Qo_AE31AccessibilityAttachmentModifierVG_AE6SpacerVAgEEA94___A95_QrAE0R10ShapeKindsV_qd__SbtAEA96_Rd__lFQOyAgEEA94__A95_Qrqd___SbtAEA96_Rd__lFQOyAgEE11buttonStyleyQrqd__AE20PrimitiveButtonStyleRd__lFQOyAA011StartButtonH0V_AE16PlainButtonStyleVQo__AE9RectangleVQo__AE6CircleVQo_SgtGG_A89_yAgEE0M7SpacingyQrA35_FQOyAE4TextV_Qo_A148_GAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA104_yA41_yAA28MediaConfigurationRoomButtonVSg_AgEE11environmentyQrA20_Rld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_A57_0A25VoiceAvailabilityProviderCQo_SgAgEEA94___A95_QrA153__qd__SbtAEA96_Rd__lFQOyA89_yAgEEA154_yQrqd__AEA155_Rd__lFQOyAE6ButtonVyAgEEA116_yQrA119_FQOyAgEEA129_yQrA132_FQOyAgEE9clipShape_5styleQrqd___AE9FillStyleVtAEA96_Rd__lFQOyAgEEA116_yQrA119_FQOyAgEE10background_20ignoresSafeAreaEdgesQrqd___A32_tAE10ShapeStyleRd__lFQOyAgEEA135_yQrA32__A37_tFQOyAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA126__Qo__Qo__A118_Qo__Qo__AE16RoundedRectangleVQo__Qo__Qo_G_A159_Qo_A148_G_A201_Qo_tGG_Qo_tGG_SiQo__Qo__A162_Qo__AE06_ShapeH0VyA201_A118_GQo__Qo_A148_GG_Qo_A89_yAgEEA19_yQrA20_AeFRd__lFQOyA188_yA104_yA41_yA151__AgEEA193__A113_Qrqd___A115_tAeFRd__lFQOyAgEEA106_5width6heightA113_QrA37__A37_A115_tFQOyA133__Qo__A218_yA165_A118_GQo_A151_tGGG_A118_Qo_A148_GxSgtGG_Qo__Qo__Qo__A118_Qo__So20NSNotificationCenterCA81_EA14_VQo__A87_Qo__So23FIUIWorkoutActivityTypeCSgQo__SbSgQo__A249_Qo_G_A248_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA178_yQrA20_Rld__CA179_A180_Rd__lFQOyAA16ActivityTypeRoomV_A184_Qo__A66_A66_A13_A62_AAyHCg0_Qo_Qo__AA03AddA4ListVQo__A59_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA029ManagedConfigurationsUpcomingdE0V_A66_A66_A13_A62_AAyHCg0_Qo__A69_Qo__A72_A72_A13_A62_AAyHCg0_Qo__A75_Qo_Qo__AA06Manuala7LoggingH0VQo__SSQo__Qo__AE0qR7BuilderV10buildBlockyQrx_q_tAeQRzAeQR_r0_lFZQOy_A276_A277_yQrx_q_tAeQRzAeQR_r0_lFZQOy_AE0Q4ItemVyytA188_yA89_yAgEE6offsetyQrA139_FQOyA126__Qo_A148_GGGAE0Q6SpacerVQo_SgA279_yytAA20DeviceConnectionMenuVGQo_Qo__Qo_yXEfU_A253_AE06ScrollH5ProxyVcfU_A236_yXEfU_yycAA17SeymourDataSourceCcfu_yycfu0_TA,  v79);

    v81 = v100;
    static ViewBuilder.buildExpression<A>(_:)();
    v82 = v112;
    v83 = *(v112 + 8);
    v83(v80, v69);
    static ViewBuilder.buildBlock<A>(_:)();
    v83(v81, v69);
    (*(v82 + 32))(v120, v80, v69);
    v84 = 0;
  }

  else
  {
    v84 = 1;
    v82 = v112;
  }

  v85 = v120;
  (*(v82 + 56))(v120, v84, 1, v69);
  v86 = v117;
  static ViewBuilder.buildIf<A>(_:)(v85, v117);
  v87 = v115;
  v139 = *(v115 + 8);
  v88 = v119;
  v139(v85, v119);
  v150[0] = 0xD000000000000011;
  v150[1] = 0x800000020CB99480;
  v151[0] = v150;
  v89 = v124;
  outlined init with copy of TupleToolbarContent<(ToolbarItem<(), Button<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, AccessibilityAttachmentModifier>>>, ToolbarSpacer)>?(v138, v124, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGSgMR);
  v151[1] = v89;
  v90 = v126;
  outlined init with copy of ModifiedContent<<<opaque return type of View.tipViewStyle<A>(_:)>>.0, ZeroListRowInsets>(v134, v126, &_s7SwiftUI15ModifiedContentVyAA4ViewP6TipKitE03tipE5StyleyQrqd__AF0feI0Rd__lFQOyAF0fE0VyAF03AnyF0VG_07WorkoutB00fg22SafetyCheckInRemindersfI0VQo_AN17ZeroListRowInsetsVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP6TipKitE03tipE5StyleyQrqd__AF0feI0Rd__lFQOyAF0fE0VyAF03AnyF0VG_07WorkoutB00fg22SafetyCheckInRemindersfI0VQo_AN17ZeroListRowInsetsVGMR);
  v151[2] = v90;
  v91 = v114;
  v92 = v127;
  v93 = v116;
  (*(v114 + 16))(v127, v135, v116);
  v151[3] = v92;
  v94 = v128;
  outlined init with copy of ModifiedContent<<<opaque return type of View.tipViewStyle<A>(_:)>>.0, ZeroListRowInsets>(v136, v128, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGACyACyACyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipE9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVACyACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0gB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_D17ShapeKindModifierVyAA6CircleVGGSgtGG_ACyACyAA4TextVA3_y0H8Graphics7CGFloatVGGA36_GACyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AF0G25VoiceAvailabilityProviderCQo_SgACyACyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGA113_yAA16OnDeleteTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGACyACyACyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipE9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVACyACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0gB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_D17ShapeKindModifierVyAA6CircleVGGSgtGG_ACyACyAA4TextVA3_y0H8Graphics7CGFloatVGGA36_GACyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AF0G25VoiceAvailabilityProviderCQo_SgACyACyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGA113_yAA16OnDeleteTraitKeyVGGMR);
  v151[4] = v94;
  v95 = v129;
  v96 = v130;
  outlined init with copy of TupleToolbarContent<(ToolbarItem<(), Button<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, AccessibilityAttachmentModifier>>>, ToolbarSpacer)>?(v129, v130, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGAA023AccessibilityAttachmentN0VGMR);
  v151[5] = v96;
  (*(v87 + 16))(v85, v86, v88);
  v151[6] = v85;
  v149[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6IDViewVyAA9EmptyViewVSSGMd, &_s7SwiftUI6IDViewVyAA9EmptyViewVSSGMR);
  v149[1] = v110;
  v149[2] = v111;
  v149[3] = v93;
  v149[4] = v125;
  v149[5] = v113;
  v149[6] = v88;
  v142 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type IDView<EmptyView, String> and conformance IDView<A, B>, &_s7SwiftUI6IDViewVyAA9EmptyViewVSSGMd, &_s7SwiftUI6IDViewVyAA9EmptyViewVSSGMR, MEMORY[0x277CE1148]);
  v143 = lazy protocol witness table accessor for type ModifiedContent<WorkoutDisclaimerRow, ZeroListRowInsets>? and conformance <A> A?();
  v144 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tipViewStyle<A>(_:)>>.0, ZeroListRowInsets> and conformance <> ModifiedContent<A, B>();
  v145 = lazy protocol witness table accessor for type ForEach<[ManagedConfigurationSourcePickerItem], Int, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationViewiOS, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>> and conformance <> ForEach<A, B, C>();
  v146 = lazy protocol witness table accessor for type ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>> and conformance <> ModifiedContent<A, B>();
  v147 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>>, Spacer)>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v141 = v140;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildBlock<each A>(_:)(v151, 7uLL, v149);
  v97 = v139;
  v139(v86, v88);
  outlined destroy of WorkoutReadinessCheckError?(v95, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGAA023AccessibilityAttachmentN0VGMR);
  outlined destroy of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v136, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGACyACyACyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipE9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVACyACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0gB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_D17ShapeKindModifierVyAA6CircleVGGSgtGG_ACyACyAA4TextVA3_y0H8Graphics7CGFloatVGGA36_GACyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AF0G25VoiceAvailabilityProviderCQo_SgACyACyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGA113_yAA16OnDeleteTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGACyACyACyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipE9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVACyACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0gB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_D17ShapeKindModifierVyAA6CircleVGGSgtGG_ACyACyAA4TextVA3_y0H8Graphics7CGFloatVGGA36_GACyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AF0G25VoiceAvailabilityProviderCQo_SgACyACyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGA113_yAA16OnDeleteTraitKeyVGGMR);
  v98 = *(v91 + 8);
  v98(v135, v93);
  outlined destroy of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v134, &_s7SwiftUI15ModifiedContentVyAA4ViewP6TipKitE03tipE5StyleyQrqd__AF0feI0Rd__lFQOyAF0fE0VyAF03AnyF0VG_07WorkoutB00fg22SafetyCheckInRemindersfI0VQo_AN17ZeroListRowInsetsVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP6TipKitE03tipE5StyleyQrqd__AF0feI0Rd__lFQOyAF0fE0VyAF03AnyF0VG_07WorkoutB00fg22SafetyCheckInRemindersfI0VQo_AN17ZeroListRowInsetsVGMR);
  outlined destroy of WorkoutReadinessCheckError?(v138, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGSgMR);
  v97(v85, v88);
  outlined destroy of WorkoutReadinessCheckError?(v130, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGAA023AccessibilityAttachmentN0VGMR);
  outlined destroy of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v128, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGACyACyACyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipE9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVACyACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0gB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_D17ShapeKindModifierVyAA6CircleVGGSgtGG_ACyACyAA4TextVA3_y0H8Graphics7CGFloatVGGA36_GACyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AF0G25VoiceAvailabilityProviderCQo_SgACyACyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGA113_yAA16OnDeleteTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGACyACyACyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipE9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVACyACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0gB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_D17ShapeKindModifierVyAA6CircleVGGSgtGG_ACyACyAA4TextVA3_y0H8Graphics7CGFloatVGGA36_GACyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AF0G25VoiceAvailabilityProviderCQo_SgACyACyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGA113_yAA16OnDeleteTraitKeyVGGMR);
  v98(v127, v93);
  outlined destroy of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v126, &_s7SwiftUI15ModifiedContentVyAA4ViewP6TipKitE03tipE5StyleyQrqd__AF0feI0Rd__lFQOyAF0fE0VyAF03AnyF0VG_07WorkoutB00fg22SafetyCheckInRemindersfI0VQo_AN17ZeroListRowInsetsVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP6TipKitE03tipE5StyleyQrqd__AF0feI0Rd__lFQOyAF0fE0VyAF03AnyF0VG_07WorkoutB00fg22SafetyCheckInRemindersfI0VQo_AN17ZeroListRowInsetsVGMR);
  outlined destroy of WorkoutReadinessCheckError?(v124, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGSgMR);

  return result;
}

uint64_t WorkoutBrowsingViewiOS.safetyCheckInRemindersTipView.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit0A4ViewVyAA03AnyA0VGMd, &_s6TipKit0A4ViewVyAA03AnyA0VGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  v15 = &type metadata for TipKitSafetyCheckInRemindersTip;
  v16 = lazy protocol witness table accessor for type TipKitSafetyCheckInRemindersTip and conformance TipKitSafetyCheckInRemindersTip();
  (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = *(a1 + 16);
  (*(v4 + 32))(v11 + v10, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  TipView.init<>(_:isPresented:arrowEdge:action:)();
  v14 = [objc_allocWithZone(MEMORY[0x277D4AB68]) init];
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type TipView<AnyTip> and conformance TipView<A>, &_s6TipKit0A4ViewVyAA03AnyA0VGMd, &_s6TipKit0A4ViewVyAA03AnyA0VGMR, MEMORY[0x277CE19B0]);
  lazy protocol witness table accessor for type TipKitSafetyCheckInRemindersTipStyle and conformance TipKitSafetyCheckInRemindersTipStyle();
  View.tipViewStyle<A>(_:)();

  return (*(v7 + 8))(v9, v6);
}

id _s9WorkoutUI0A15BrowsingViewiOSV4bodyQrvg05SwiftB04ViewPAEE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAgEE7toolbar7contentQrqd__yXE_tAE14ToolbarContentRd__lFQOyAgEE0O16TitleDisplayModeyQrAE0qstU0VFQOyAgEE013navigationBarS0yQrqd__SyRd__lFQOyAgEE5sheet11isPresented9onDismissAPQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAgEE0V11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAgEEAvwxPQrA__A0_qd__yctAeFRd__lFQOyAgEEA1_A2_A3_Qrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAE06ScrollH6ReaderVyAgEE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEE9onReceive_7performQrqd___y6OutputQyd__ct7Combine9PublisherRd__s5NeverO7FailureRtd__lFQOyAgEE17listRowBackgroundyQrqd__SgAeFRd__lFQOyAgEE16listRowSeparator_5edgesQrAE10VisibilityO_AE12VerticalEdgeO3SetVtFQOyAgEE11listPaddingyQrAE4EdgeOA27_V_12CoreGraphics7CGFloatVtFQOyAgEE14listRowSpacingyQrA35_SgFQOyAE4ListVyA16_AE05TupleH0VyAgEE2idyQrqd__SHRd__lFQOyAE05EmptyH0V_SSQo__AgAE21withZeroListRowInsetsQryFQOyAA0A13DisclaimerRowV_Qo_SgAgAEA46_QryFQOyAC025safetyCheckInRemindersTipH033_C6A1CD99A5FFEBCF0602419937A3F460LLQrvpQOyx_Qo__Qo_AE7ForEachVySay0A4Core36ManagedConfigurationSourcePickerItemCGSiAgEE17environmentObjectyQrqd__A13_16ObservableObjectRd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA020ManagedConfigurationdE0V_So21FIUIFormattingManagerCA66_A13_A62_AAyHCg0_Qo__AA28ConfigurationNavigationModelCQo__So13HKHealthStoreCA72_A13_A62_AAyHCg0_Qo__A57_0A28ConfigurationOccurrenceStoreCQo_GAE07DynamichR0PAEE8onDeleteA10_Qry10Foundation8IndexSetVcSg_tFQOyA56_ySayA57_26StandardActivityPickerItemCGSiAE08ModifiedR0VyAgEE20accessibilityElement8childrenQrAE26AccessibilityChildBehaviorV_tFQOyAgEEA19_yQrA20_AeFRd__lFQOyAgEE0P5Shape_6eoFillQrqd___SbtAE5ShapeRd__lFQOyAgEE13listRowInsetsyQrAE10EdgeInsetsVSgFQOyAgEEA42_yQrqd__SHRd__lFQOyAE6VStackVyA41_yAE6HStackVyA41_yA89_yAgEE34flipsForRightToLeftLayoutDirectionyQrSbFQOyAgEE5frame8minWidth10idealWidth8maxWidth9minHeight11idealHeight9maxHeight9alignmentQrA37__A37_A37_A37_A37_A37_AE9AlignmentVtFQOyAgEE15foregroundColoryQrAE5ColorVSgFQOyAE5GroupVyAE012_ConditionalR0VyAgEE10imageScaleyQrAE5ImageV5ScaleOFQOyAgEE4fontyQrAE4FontVSgFQOyA126__Qo__Qo_AgEE7paddingyQrA32__A37_tFQOyA126_AAE11scaledToFit4sizeQrSo6CGSizeV_tFQOy_Qo__Qo_GG_Qo__Qo__Qo_AE31AccessibilityAttachmentModifierVG_AE6SpacerVAgEEA94___A95_QrAE0R10ShapeKindsV_qd__SbtAEA96_Rd__lFQOyAgEEA94__A95_Qrqd___SbtAEA96_Rd__lFQOyAgEE11buttonStyleyQrqd__AE20PrimitiveButtonStyleRd__lFQOyAA011StartButtonH0V_AE16PlainButtonStyleVQo__AE9RectangleVQo__AE6CircleVQo_SgtGG_A89_yAgEE0M7SpacingyQrA35_FQOyAE4TextV_Qo_A148_GAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA104_yA41_yAA28MediaConfigurationRoomButtonVSg_AgEE11environmentyQrA20_Rld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_A57_0A25VoiceAvailabilityProviderCQo_SgAgEEA94___A95_QrA153__qd__SbtAEA96_Rd__lFQOyA89_yAgEEA154_yQrqd__AEA155_Rd__lFQOyAE6ButtonVyAgEEA116_yQrA119_FQOyAgEEA129_yQrA132_FQOyAgEE9clipShape_5styleQrqd___AE9FillStyleVtAEA96_Rd__lFQOyAgEEA116_yQrA119_FQOyAgEE10background_20ignoresSafeAreaEdgesQrqd___A32_tAE10ShapeStyleRd__lFQOyAgEEA135_yQrA32__A37_tFQOyAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA126__Qo__Qo__A118_Qo__Qo__AE16RoundedRectangleVQo__Qo__Qo_G_A159_Qo_A148_G_A201_Qo_tGG_Qo_tGG_SiQo__Qo__A162_Qo__AE06_ShapeH0VyA201_A118_GQo__Qo_A148_GG_Qo_A89_yAgEEA19_yQrA20_AeFRd__lFQOyA188_yA104_yA41_yA151__AgEEA193__A113_Qrqd___A115_tAeFRd__lFQOyAgEEA106_5width6heightA113_QrA37__A37_A115_tFQOyA133__Qo__A218_yA165_A118_GQo_A151_tGGG_A118_Qo_A148_GxSgtGG_Qo__Qo__Qo__A118_Qo__So20NSNotificationCenterCA81_EA14_VQo__A87_Qo__So23FIUIWorkoutActivityTypeCSgQo__SbSgQo__A249_Qo_G_A248_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA178_yQrA20_Rld__CA179_A180_Rd__lFQOyAA16ActivityTypeRoomV_A184_Qo__A66_A66_A13_A62_AAyHCg0_Qo_Qo__AA03AddA4ListVQo__A59_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA029ManagedConfigurationsUpcomingdE0V_A66_A66_A13_A62_AAyHCg0_Qo__A69_Qo__A72_A72_A13_A62_AAyHCg0_Qo__A75_Qo_Qo__AA06Manuala7LoggingH0VQo__SSQo__Qo__AE0qR7BuilderV10buildBlockyQrx_q_tAeQRzAeQR_r0_lFZQOy_A276_A277_yQrx_q_tAeQRzAeQR_r0_lFZQOy_AE0Q4ItemVyytA188_yA89_yAgEE6offsetyQrA139_FQOyA126__Qo_A148_GGGAE0Q6SpacerVQo_SgA279_yytAA20DeviceConnectionMenuVGQo_Qo__Qo_yXEfU_A253_AE06ScrollH5ProxyVcfU_A236_yXEfU_A76_A59_cfU0_@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  _sSo17OS_dispatch_queueCMaTm_0(0, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
  _sSo13HKHealthStoreCAB7Combine16ObservableObject9WorkoutUIWlTm_0(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8, &protocol conformance descriptor for FIUIFormattingManager);
  v39 = v6;
  v7 = EnvironmentObject.init()();
  v37 = v8;
  v38 = v7;
  type metadata accessor for ConfigurationNavigationModel(0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  v9 = EnvironmentObject.init()();
  v31 = v10;
  v32 = v9;
  _sSo17OS_dispatch_queueCMaTm_0(0, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8);
  _sSo13HKHealthStoreCAB7Combine16ObservableObject9WorkoutUIWlTm_0(&lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8, &protocol conformance descriptor for HKHealthStore);
  v11 = EnvironmentObject.init()();
  v29 = v12;
  v30 = v11;
  type metadata accessor for WorkoutConfigurationOccurrenceStore();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type WorkoutConfigurationOccurrenceStore and conformance WorkoutConfigurationOccurrenceStore, MEMORY[0x277D7DD18], MEMORY[0x277D7DD10]);
  v13 = EnvironmentObject.init()();
  v27 = v14;
  v28 = v13;
  State.init(wrappedValue:)();
  v15 = a2[3];
  v25 = v15;
  v26 = static ObservableObject.environmentStore.getter();
  type metadata accessor for WorkoutBrowsingViewiOS(0, a3, a4, v16);
  v17 = v15;
  v18 = specialized WorkoutBrowsingViewiOS.navigationModel.getter();

  v19 = static ObservableObject.environmentStore.getter();
  v20 = a2[10];
  v21 = static ObservableObject.environmentStore.getter();
  v36 = a2[11];
  v22 = v20;
  v23 = static ObservableObject.environmentStore.getter();
  *a5 = v39;
  *(a5 + 8) = v38;
  *(a5 + 16) = v37;
  *(a5 + 24) = v32;
  *(a5 + 32) = v31;
  *(a5 + 40) = v30;
  *(a5 + 48) = v29;
  *(a5 + 56) = v28;
  *(a5 + 64) = v27;
  *(a5 + 72) = v40;
  *(a5 + 80) = v41;
  *(a5 + 88) = implicit closure #2 in implicit closure #1 in variable initialization expression of ManagedConfigurationViewiOS._devicesProvider;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  *(a5 + 112) = v26;
  *(a5 + 120) = v25;
  *(a5 + 128) = v19;
  *(a5 + 136) = v18;
  *(a5 + 144) = v21;
  *(a5 + 152) = v20;
  *(a5 + 160) = v23;
  *(a5 + 168) = v36;

  return v36;
}

uint64_t _s9WorkoutUI0A15BrowsingViewiOSV4bodyQrvg05SwiftB04ViewPAEE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAgEE7toolbar7contentQrqd__yXE_tAE14ToolbarContentRd__lFQOyAgEE0O16TitleDisplayModeyQrAE0qstU0VFQOyAgEE013navigationBarS0yQrqd__SyRd__lFQOyAgEE5sheet11isPresented9onDismissAPQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAgEE0V11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAgEEAvwxPQrA__A0_qd__yctAeFRd__lFQOyAgEEA1_A2_A3_Qrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAE06ScrollH6ReaderVyAgEE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEE9onReceive_7performQrqd___y6OutputQyd__ct7Combine9PublisherRd__s5NeverO7FailureRtd__lFQOyAgEE17listRowBackgroundyQrqd__SgAeFRd__lFQOyAgEE16listRowSeparator_5edgesQrAE10VisibilityO_AE12VerticalEdgeO3SetVtFQOyAgEE11listPaddingyQrAE4EdgeOA27_V_12CoreGraphics7CGFloatVtFQOyAgEE14listRowSpacingyQrA35_SgFQOyAE4ListVyA16_AE05TupleH0VyAgEE2idyQrqd__SHRd__lFQOyAE05EmptyH0V_SSQo__AgAE21withZeroListRowInsetsQryFQOyAA0A13DisclaimerRowV_Qo_SgAgAEA46_QryFQOyAC025safetyCheckInRemindersTipH033_C6A1CD99A5FFEBCF0602419937A3F460LLQrvpQOyx_Qo__Qo_AE7ForEachVySay0A4Core36ManagedConfigurationSourcePickerItemCGSiAgEE17environmentObjectyQrqd__A13_16ObservableObjectRd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA020ManagedConfigurationdE0V_So21FIUIFormattingManagerCA66_A13_A62_AAyHCg0_Qo__AA28ConfigurationNavigationModelCQo__So13HKHealthStoreCA72_A13_A62_AAyHCg0_Qo__A57_0A28ConfigurationOccurrenceStoreCQo_GAE07DynamichR0PAEE8onDeleteA10_Qry10Foundation8IndexSetVcSg_tFQOyA56_ySayA57_26StandardActivityPickerItemCGSiAE08ModifiedR0VyAgEE20accessibilityElement8childrenQrAE26AccessibilityChildBehaviorV_tFQOyAgEEA19_yQrA20_AeFRd__lFQOyAgEE0P5Shape_6eoFillQrqd___SbtAE5ShapeRd__lFQOyAgEE13listRowInsetsyQrAE10EdgeInsetsVSgFQOyAgEEA42_yQrqd__SHRd__lFQOyAE6VStackVyA41_yAE6HStackVyA41_yA89_yAgEE34flipsForRightToLeftLayoutDirectionyQrSbFQOyAgEE5frame8minWidth10idealWidth8maxWidth9minHeight11idealHeight9maxHeight9alignmentQrA37__A37_A37_A37_A37_A37_AE9AlignmentVtFQOyAgEE15foregroundColoryQrAE5ColorVSgFQOyAE5GroupVyAE012_ConditionalR0VyAgEE10imageScaleyQrAE5ImageV5ScaleOFQOyAgEE4fontyQrAE4FontVSgFQOyA126__Qo__Qo_AgEE7paddingyQrA32__A37_tFQOyA126_AAE11scaledToFit4sizeQrSo6CGSizeV_tFQOy_Qo__Qo_GG_Qo__Qo__Qo_AE31AccessibilityAttachmentModifierVG_AE6SpacerVAgEEA94___A95_QrAE0R10ShapeKindsV_qd__SbtAEA96_Rd__lFQOyAgEEA94__A95_Qrqd___SbtAEA96_Rd__lFQOyAgEE11buttonStyleyQrqd__AE20PrimitiveButtonStyleRd__lFQOyAA011StartButtonH0V_AE16PlainButtonStyleVQo__AE9RectangleVQo__AE6CircleVQo_SgtGG_A89_yAgEE0M7SpacingyQrA35_FQOyAE4TextV_Qo_A148_GAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA104_yA41_yAA28MediaConfigurationRoomButtonVSg_AgEE11environmentyQrA20_Rld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_A57_0A25VoiceAvailabilityProviderCQo_SgAgEEA94___A95_QrA153__qd__SbtAEA96_Rd__lFQOyA89_yAgEEA154_yQrqd__AEA155_Rd__lFQOyAE6ButtonVyAgEEA116_yQrA119_FQOyAgEEA129_yQrA132_FQOyAgEE9clipShape_5styleQrqd___AE9FillStyleVtAEA96_Rd__lFQOyAgEEA116_yQrA119_FQOyAgEE10background_20ignoresSafeAreaEdgesQrqd___A32_tAE10ShapeStyleRd__lFQOyAgEEA135_yQrA32__A37_tFQOyAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA126__Qo__Qo__A118_Qo__Qo__AE16RoundedRectangleVQo__Qo__Qo_G_A159_Qo_A148_G_A201_Qo_tGG_Qo_tGG_SiQo__Qo__A162_Qo__AE06_ShapeH0VyA201_A118_GQo__Qo_A148_GG_Qo_A89_yAgEEA19_yQrA20_AeFRd__lFQOyA188_yA104_yA41_yA151__AgEEA193__A113_Qrqd___A115_tAeFRd__lFQOyAgEEA106_5width6heightA113_QrA37__A37_A115_tFQOyA133__Qo__A218_yA165_A118_GQo_A151_tGGG_A118_Qo_A148_GxSgtGG_Qo__Qo__Qo__A118_Qo__So20NSNotificationCenterCA81_EA14_VQo__A87_Qo__So23FIUIWorkoutActivityTypeCSgQo__SbSgQo__A249_Qo_G_A248_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA178_yQrA20_Rld__CA179_A180_Rd__lFQOyAA16ActivityTypeRoomV_A184_Qo__A66_A66_A13_A62_AAyHCg0_Qo_Qo__AA03AddA4ListVQo__A59_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA029ManagedConfigurationsUpcomingdE0V_A66_A66_A13_A62_AAyHCg0_Qo__A69_Qo__A72_A72_A13_A62_AAyHCg0_Qo__A75_Qo_Qo__AA06Manuala7LoggingH0VQo__SSQo__Qo__AE0qR7BuilderV10buildBlockyQrx_q_tAeQRzAeQR_r0_lFZQOy_A276_A277_yQrx_q_tAeQRzAeQR_r0_lFZQOy_AE0Q4ItemVyytA188_yA89_yAgEE6offsetyQrA139_FQOyA126__Qo_A148_GGGAE0Q6SpacerVQo_SgA279_yytAA20DeviceConnectionMenuVGQo_Qo__Qo_yXEfU_A253_AE06ScrollH5ProxyVcfU_A236_yXEfU_A222_A86_cfU1_@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a4;
  v66 = a2;
  v67 = a3;
  v83 = a5;
  v6 = type metadata accessor for AccessibilityTraits();
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x28223BE20](v6);
  v80 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessibilityChildBehavior();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x28223BE20](v8);
  v77 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v65 = &v65 - v12;
  v13 = type metadata accessor for RoundedRectangle();
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v68 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6IDViewVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAQ5ScaleOGGACyACyACyAqA18_AspectRatioLayoutVGAA06_FrameU0VGAA08_PaddingU0VGGGASyAA5ColorVSgGGAA05_FlexvU0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentP0VG_AA6SpacerVACyACyAA0H0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonH0V_AA16PlainButtonStyleVQo_AA01_d5ShapeP0VyAA9RectangleVGGAA01_d9ShapeKindP0VyAA6CircleVGGSgtGG_ACyACyAA4TextVASy12CoreGraphics7CGFloatVGGA24_GACyAKyAIyA32_28MediaConfigurationRoomButtonVSg_A29_AAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA32_019VoiceCompanionEntryH0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyA29_AAEA30_yQrqd__AAA31_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAQA18_GA8_GAA016_BackgroundStyleP0VyA13_GGA15_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWGA15_GG_A36_Qo_A24_GA45_yA87_GGtGGA18_GtGGSiGAA06_TraitoP0VyAA018ListRowInsetsTraitN0VGGA42_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAQ5ScaleOGGACyACyACyAqA18_AspectRatioLayoutVGAA06_FrameU0VGAA08_PaddingU0VGGGASyAA5ColorVSgGGAA05_FlexvU0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentP0VG_AA6SpacerVACyACyAA0H0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonH0V_AA16PlainButtonStyleVQo_AA01_d5ShapeP0VyAA9RectangleVGGAA01_d9ShapeKindP0VyAA6CircleVGGSgtGG_ACyACyAA4TextVASy12CoreGraphics7CGFloatVGGA24_GACyAKyAIyA32_28MediaConfigurationRoomButtonVSg_A29_AAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA32_019VoiceCompanionEntryH0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyA29_AAEA30_yQrqd__AAA31_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAQA18_GA8_GAA016_BackgroundStyleP0VyA13_GGA15_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWGA15_GG_A36_Qo_A24_GA45_yA87_GGtGGA18_GtGGSiGAA06_TraitoP0VyAA018ListRowInsetsTraitN0VGGA42_GMR);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - v24;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6IDViewVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAQ5ScaleOGGACyACyACyAqA18_AspectRatioLayoutVGAA06_FrameU0VGAA08_PaddingU0VGGGASyAA5ColorVSgGGAA05_FlexvU0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentP0VG_AA6SpacerVACyACyAA0H0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonH0V_AA16PlainButtonStyleVQo_AA01_d5ShapeP0VyAA9RectangleVGGAA01_d9ShapeKindP0VyAA6CircleVGGSgtGG_ACyACyAA4TextVASy12CoreGraphics7CGFloatVGGA24_GACyAKyAIyA32_28MediaConfigurationRoomButtonVSg_A29_AAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA32_019VoiceCompanionEntryH0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyA29_AAEA30_yQrqd__AAA31_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAQA18_GA8_GAA016_BackgroundStyleP0VyA13_GGA15_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWGA15_GG_A36_Qo_A24_GA45_yA87_GGtGGA18_GtGGSiGAA06_TraitoP0VyAA018ListRowInsetsTraitN0VGGA42_GA104_yAA022ListRowBackgroundTraitN0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6IDViewVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAQ5ScaleOGGACyACyACyAqA18_AspectRatioLayoutVGAA06_FrameU0VGAA08_PaddingU0VGGGASyAA5ColorVSgGGAA05_FlexvU0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentP0VG_AA6SpacerVACyACyAA0H0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonH0V_AA16PlainButtonStyleVQo_AA01_d5ShapeP0VyAA9RectangleVGGAA01_d9ShapeKindP0VyAA6CircleVGGSgtGG_ACyACyAA4TextVASy12CoreGraphics7CGFloatVGGA24_GACyAKyAIyA32_28MediaConfigurationRoomButtonVSg_A29_AAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA32_019VoiceCompanionEntryH0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyA29_AAEA30_yQrqd__AAA31_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAQA18_GA8_GAA016_BackgroundStyleP0VyA13_GGA15_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWGA15_GG_A36_Qo_A24_GA45_yA87_GGtGGA18_GtGGSiGAA06_TraitoP0VyAA018ListRowInsetsTraitN0VGGA42_GA104_yAA022ListRowBackgroundTraitN0VGGMR);
  MEMORY[0x28223BE20](v70);
  v27 = &v65 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAA6IDViewVyAA6VStackVyAA05TupleC0VyAA6HStackVyAOyAIyAIyAIyAIyAA5GroupVyAA012_ConditionalK0VyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAW5ScaleOGGAIyAIyAIyAwA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGAYyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA17_FlipForRTLEffectVGAA0g10AttachmentV0VG_AA6SpacerVAIyAIyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonC0V_AA16PlainButtonStyleVQo_AA01_k5ShapeV0VyAA9RectangleVGGAA01_k9ShapeKindV0VyAA6CircleVGGSgtGG_AIyAIyAA4TextVAYy12CoreGraphics7CGFloatVGGA30_GAIyAQyAOyA36_28MediaConfigurationRoomButtonVSg_AcAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA36_019VoiceCompanionEntryC0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgAIyAIyAcAEA34_yQrqd__AAA35_Rd__lFQOyAA6ButtonVyAIyAIyAIyAIyAIyAIyAIyAWA24_GA14_GAA016_BackgroundStyleV0VyA19_GGA21_GAA11_ClipEffectVyAA16RoundedRectangleVGGA1_GA21_GG_A40_Qo_A30_GA49_yA91_GGtGGA24_GtGGSiGAA06_TraituV0VyAA018ListRowInsetsTraitT0VGGA46_GA108_yAA022ListRowBackgroundTraitT0VGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAA6IDViewVyAA6VStackVyAA05TupleC0VyAA6HStackVyAOyAIyAIyAIyAIyAA5GroupVyAA012_ConditionalK0VyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAW5ScaleOGGAIyAIyAIyAwA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGAYyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA17_FlipForRTLEffectVGAA0g10AttachmentV0VG_AA6SpacerVAIyAIyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonC0V_AA16PlainButtonStyleVQo_AA01_k5ShapeV0VyAA9RectangleVGGAA01_k9ShapeKindV0VyAA6CircleVGGSgtGG_AIyAIyAA4TextVAYy12CoreGraphics7CGFloatVGGA30_GAIyAQyAOyA36_28MediaConfigurationRoomButtonVSg_AcAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA36_019VoiceCompanionEntryC0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgAIyAIyAcAEA34_yQrqd__AAA35_Rd__lFQOyAA6ButtonVyAIyAIyAIyAIyAIyAIyAIyAWA24_GA14_GAA016_BackgroundStyleV0VyA19_GGA21_GAA11_ClipEffectVyAA16RoundedRectangleVGGA1_GA21_GG_A40_Qo_A30_GA49_yA91_GGtGGA24_GtGGSiGAA06_TraituV0VyAA018ListRowInsetsTraitT0VGGA46_GA108_yAA022ListRowBackgroundTraitT0VGG_Qo_MR);
  v72 = *(v28 - 8);
  v73 = v28;
  MEMORY[0x28223BE20](v28);
  v69 = &v65 - v29;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleE0VyAA6HStackVyAOyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAW5ScaleOGGACyACyACyAwA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGAYyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA17_FlipForRTLEffectVGAA0i10AttachmentV0VG_AA6SpacerVACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_d5ShapeV0VyAA9RectangleVGGAA01_d9ShapeKindV0VyAA6CircleVGGSgtGG_ACyACyAA4TextVAYy12CoreGraphics7CGFloatVGGA30_GACyAQyAOyA36_28MediaConfigurationRoomButtonVSg_AeAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA36_019VoiceCompanionEntryE0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyAeAEA34_yQrqd__AAA35_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAWA24_GA14_GAA016_BackgroundStyleV0VyA19_GGA21_GAA11_ClipEffectVyAA16RoundedRectangleVGGA1_GA21_GG_A40_Qo_A30_GA49_yA91_GGtGGA24_GtGGSiGAA06_TraituV0VyAA018ListRowInsetsTraitT0VGGA46_GA108_yAA022ListRowBackgroundTraitT0VGG_Qo_A30_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleE0VyAA6HStackVyAOyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAW5ScaleOGGACyACyACyAwA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGAYyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA17_FlipForRTLEffectVGAA0i10AttachmentV0VG_AA6SpacerVACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_d5ShapeV0VyAA9RectangleVGGAA01_d9ShapeKindV0VyAA6CircleVGGSgtGG_ACyACyAA4TextVAYy12CoreGraphics7CGFloatVGGA30_GACyAQyAOyA36_28MediaConfigurationRoomButtonVSg_AeAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA36_019VoiceCompanionEntryE0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyAeAEA34_yQrqd__AAA35_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAWA24_GA14_GAA016_BackgroundStyleV0VyA19_GGA21_GAA11_ClipEffectVyAA16RoundedRectangleVGGA1_GA21_GG_A40_Qo_A30_GA49_yA91_GGtGGA24_GtGGSiGAA06_TraituV0VyAA018ListRowInsetsTraitT0VGGA46_GA108_yAA022ListRowBackgroundTraitT0VGG_Qo_A30_GMR);
  MEMORY[0x28223BE20](v75);
  v76 = &v65 - v30;
  v31 = *a1;
  v32 = StandardActivityPickerItem.openGoalConfiguration.getter();
  *v25 = static HorizontalAlignment.leading.getter();
  *(v25 + 1) = 0x4030000000000000;
  v25[16] = 0;
  v33 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAMyAMyAMyAA5GroupVyAA012_ConditionalK0VyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAS5ScaleOGGAMyAMyAMyAsA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGGAUyAA5ColorVSgGGAA05_FlexwG0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentR0VG_AA6SpacerVAMyAMyAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonD0V_AA16PlainButtonStyleVQo_AA01_k5ShapeR0VyAA9RectangleVGGAA01_k9ShapeKindR0VyAA6CircleVGGSgtGG_AMyAMyAA4TextVAUy12CoreGraphics7CGFloatVGGA26_GAMyAKyAIyA34_28MediaConfigurationRoomButtonVSg_A31_AAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA34_019VoiceCompanionEntryD0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgAMyAMyA31_AAEA32_yQrqd__AAA33_Rd__lFQOyAA6ButtonVyAMyAMyAMyAMyAMyAMyAMyASA20_GA10_GAA016_BackgroundStyleR0VyA15_GGA17_GAA11_ClipEffectVyAA16RoundedRectangleVGGAYGA17_GG_A38_Qo_A26_GA47_yA89_GGtGGA20_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAMyAMyAMyAA5GroupVyAA012_ConditionalK0VyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAS5ScaleOGGAMyAMyAMyAsA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGGAUyAA5ColorVSgGGAA05_FlexwG0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentR0VG_AA6SpacerVAMyAMyAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonD0V_AA16PlainButtonStyleVQo_AA01_k5ShapeR0VyAA9RectangleVGGAA01_k9ShapeKindR0VyAA6CircleVGGSgtGG_AMyAMyAA4TextVAUy12CoreGraphics7CGFloatVGGA26_GAMyAKyAIyA34_28MediaConfigurationRoomButtonVSg_A31_AAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA34_019VoiceCompanionEntryD0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgAMyAMyA31_AAEA32_yQrqd__AAA33_Rd__lFQOyAA6ButtonVyAMyAMyAMyAMyAMyAMyAMyASA20_GA10_GAA016_BackgroundStyleR0VyA15_GGA17_GAA11_ClipEffectVyAA16RoundedRectangleVGGAYGA17_GG_A38_Qo_A26_GA47_yA89_GGtGGA20_GtGGMR) + 44)];
  v74 = v32;
  _s9WorkoutUI0A15BrowsingViewiOSV4bodyQrvg05SwiftB04ViewPAEE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAgEE7toolbar7contentQrqd__yXE_tAE14ToolbarContentRd__lFQOyAgEE0O16TitleDisplayModeyQrAE0qstU0VFQOyAgEE013navigationBarS0yQrqd__SyRd__lFQOyAgEE5sheet11isPresented9onDismissAPQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAgEE0V11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAgEEAvwxPQrA__A0_qd__yctAeFRd__lFQOyAgEEA1_A2_A3_Qrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAE06ScrollH6ReaderVyAgEE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEE9onReceive_7performQrqd___y6OutputQyd__ct7Combine9PublisherRd__s5NeverO7FailureRtd__lFQOyAgEE17listRowBackgroundyQrqd__SgAeFRd__lFQOyAgEE16listRowSeparator_5edgesQrAE10VisibilityO_AE12VerticalEdgeO3SetVtFQOyAgEE11listPaddingyQrAE4EdgeOA27_V_12CoreGraphics7CGFloatVtFQOyAgEE14listRowSpacingyQrA35_SgFQOyAE4ListVyA16_AE05TupleH0VyAgEE2idyQrqd__SHRd__lFQOyAE05EmptyH0V_SSQo__AgAE21withZeroListRowInsetsQryFQOyAA0A13DisclaimerRowV_Qo_SgAgAEA46_QryFQOyAC025safetyCheckInRemindersTipH033_C6A1CD99A5FFEBCF0602419937A3F460LLQrvpQOyx_Qo__Qo_AE7ForEachVySay0A4Core36ManagedConfigurationSourcePickerItemCGSiAgEE17environmentObjectyQrqd__A13_16ObservableObjectRd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA020ManagedConfigurationdE0V_So21FIUIFormattingManagerCA66_A13_A62_AAyHCg0_Qo__AA28ConfigurationNavigationModelCQo__So13HKHealthStoreCA72_A13_A62_AAyHCg0_Qo__A57_0A28ConfigurationOccurrenceStoreCQo_GAE07DynamichR0PAEE8onDeleteA10_Qry10Foundation8IndexSetVcSg_tFQOyA56_ySayA57_26StandardActivityPickerItemCGSiAE08ModifiedR0VyAgEE20accessibilityElement8childrenQrAE26AccessibilityChildBehaviorV_tFQOyAgEEA19_yQrA20_AeFRd__lFQOyAgEE0P5Shape_6eoFillQrqd___SbtAE5ShapeRd__lFQOyAgEE13listRowInsetsyQrAE10EdgeInsetsVSgFQOyAgEEA42_yQrqd__SHRd__lFQOyAE6VStackVyA41_yAE6HStackVyA41_yA89_yAgEE34flipsForRightToLeftLayoutDirectionyQrSbFQOyAgEE5frame8minWidth10idealWidth8maxWidth9minHeight11idealHeight9maxHeight9alignmentQrA37__A37_A37_A37_A37_A37_AE9AlignmentVtFQOyAgEE15foregroundColoryQrAE5ColorVSgFQOyAE5GroupVyAE012_ConditionalR0VyAgEE10imageScaleyQrAE5ImageV5ScaleOFQOyAgEE4fontyQrAE4FontVSgFQOyA126__Qo__Qo_AgEE7paddingyQrA32__A37_tFQOyA126_AAE11scaledToFit4sizeQrSo6CGSizeV_tFQOy_Qo__Qo_GG_Qo__Qo__Qo_AE31AccessibilityAttachmentModifierVG_AE6SpacerVAgEEA94___A95_QrAE0R10ShapeKindsV_qd__SbtAEA96_Rd__lFQOyAgEEA94__A95_Qrqd___SbtAEA96_Rd__lFQOyAgEE11buttonStyleyQrqd__AE20PrimitiveButtonStyleRd__lFQOyAA011StartButtonH0V_AE16PlainButtonStyleVQo__AE9RectangleVQo__AE6CircleVQo_SgtGG_A89_yAgEE0M7SpacingyQrA35_FQOyAE4TextV_Qo_A148_GAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA104_yA41_yAA28MediaConfigurationRoomButtonVSg_AgEE11environmentyQrA20_Rld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_A57_0A25VoiceAvailabilityProviderCQo_SgAgEEA94___A95_QrA153__qd__SbtAEA96_Rd__lFQOyA89_yAgEEA154_yQrqd__AEA155_Rd__lFQOyAE6ButtonVyAgEEA116_yQrA119_FQOyAgEEA129_yQrA132_FQOyAgEE9clipShape_5styleQrqd___AE9FillStyleVtAEA96_Rd__lFQOyAgEEA116_yQrA119_FQOyAgEE10background_20ignoresSafeAreaEdgesQrqd___A32_tAE10ShapeStyleRd__lFQOyAgEEA135_yQrA32__A37_tFQOyAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA126__Qo__Qo__A118_Qo__Qo__AE16RoundedRectangleVQo__Qo__Qo_G_A159_Qo_A148_G_A201_Qo_tGG_Qo_tGG_SiQo__Qo__A162_Qo__AE06_ShapeH0VyA201_A118_GQo__Qo_A148_GG_Qo_A89_yAgEEA19_yQrA20_AeFRd__lFQOyA188_yA104_yA41_yA151__AgEEA193__A113_Qrqd___A115_tAeFRd__lFQOyAgEEA106_5width6heightA113_QrA37__A37_A115_tFQOyA133__Qo__A218_yA165_A118_GQo_A151_tGGG_A118_Qo_A148_GxSgtGG_Qo__Qo__Qo__A118_Qo__So20NSNotificationCenterCA81_EA14_VQo__A87_Qo__So23FIUIWorkoutActivityTypeCSgQo__SbSgQo__A249_Qo_G_A248_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA178_yQrA20_Rld__CA179_A180_Rd__lFQOyAA16ActivityTypeRoomV_A184_Qo__A66_A66_A13_A62_AAyHCg0_Qo_Qo__AA03AddA4ListVQo__A59_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA029ManagedConfigurationsUpcomingdE0V_A66_A66_A13_A62_AAyHCg0_Qo__A69_Qo__A72_A72_A13_A62_AAyHCg0_Qo__A75_Qo_Qo__AA06Manuala7LoggingH0VQo__SSQo__Qo__AE0qR7BuilderV10buildBlockyQrx_q_tAeQRzAeQR_r0_lFZQOy_A276_A277_yQrx_q_tAeQRzAeQR_r0_lFZQOy_AE0Q4ItemVyytA188_yA89_yAgEE6offsetyQrA139_FQOyA126__Qo_A148_GGGAE0Q6SpacerVQo_SgA279_yytAA20DeviceConnectionMenuVGQo_Qo__Qo_yXEfU_A253_AE06ScrollH5ProxyVcfU_A236_yXEfU_A222_A86_cfU1_A212_yXEfU_( v31,  v32,  v66,  v67,  v71,  v33);
  v71 = v31;
  v34 = [v31 id];
  *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6IDViewVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA15ModifiedContentVyAKyAKyAKyAA5GroupVyAA012_ConditionalI0VyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAQ5ScaleOGGAKyAKyAKyAqA18_AspectRatioLayoutVGAA06_FrameU0VGAA08_PaddingU0VGGGASyAA5ColorVSgGGAA05_FlexvU0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentP0VG_AA6SpacerVAKyAKyAA0F0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonF0V_AA16PlainButtonStyleVQo_AA01_i5ShapeP0VyAA9RectangleVGGAA01_i9ShapeKindP0VyAA6CircleVGGSgtGG_AKyAKyAA4TextVASy12CoreGraphics7CGFloatVGGA24_GAKyAIyAGyA32_28MediaConfigurationRoomButtonVSg_A29_AAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA32_019VoiceCompanionEntryF0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgAKyAKyA29_AAEA30_yQrqd__AAA31_Rd__lFQOyAA6ButtonVyAKyAKyAKyAKyAKyAKyAKyAQA18_GA8_GAA016_BackgroundStyleP0VyA13_GGA15_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWGA15_GG_A36_Qo_A24_GA45_yA87_GGtGGA18_GtGGSiGMd, &_s7SwiftUI6IDViewVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA15ModifiedContentVyAKyAKyAKyAA5GroupVyAA012_ConditionalI0VyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAQ5ScaleOGGAKyAKyAKyAqA18_AspectRatioLayoutVGAA06_FrameU0VGAA08_PaddingU0VGGGASyAA5ColorVSgGGAA05_FlexvU0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentP0VG_AA6SpacerVAKyAKyAA0F0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonF0V_AA16PlainButtonStyleVQo_AA01_i5ShapeP0VyAA9RectangleVGGAA01_i9ShapeKindP0VyAA6CircleVGGSgtGG_AKyAKyAA4TextVASy12CoreGraphics7CGFloatVGGA24_GAKyAIyAGyA32_28MediaConfigurationRoomButtonVSg_A29_AAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA32_019VoiceCompanionEntryF0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgAKyAKyA29_AAEA30_yQrqd__AAA31_Rd__lFQOyAA6ButtonVyAKyAKyAKyAKyAKyAKyAKyAQA18_GA8_GAA016_BackgroundStyleP0VyA13_GGA15_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWGA15_GG_A36_Qo_A24_GA45_yA87_GGtGGA18_GtGGSiGMR) + 52)] = v34;
  v35 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6IDViewVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAQ5ScaleOGGACyACyACyAqA18_AspectRatioLayoutVGAA06_FrameU0VGAA08_PaddingU0VGGGASyAA5ColorVSgGGAA05_FlexvU0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentP0VG_AA6SpacerVACyACyAA0H0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonH0V_AA16PlainButtonStyleVQo_AA01_d5ShapeP0VyAA9RectangleVGGAA01_d9ShapeKindP0VyAA6CircleVGGSgtGG_ACyACyAA4TextVASy12CoreGraphics7CGFloatVGGA24_GACyAKyAIyA32_28MediaConfigurationRoomButtonVSg_A29_AAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA32_019VoiceCompanionEntryH0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyA29_AAEA30_yQrqd__AAA31_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAQA18_GA8_GAA016_BackgroundStyleP0VyA13_GGA15_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWGA15_GG_A36_Qo_A24_GA45_yA87_GGtGGA18_GtGGSiGAA06_TraitoP0VyAA018ListRowInsetsTraitN0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6IDViewVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAQ5ScaleOGGACyACyACyAqA18_AspectRatioLayoutVGAA06_FrameU0VGAA08_PaddingU0VGGGASyAA5ColorVSgGGAA05_FlexvU0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentP0VG_AA6SpacerVACyACyAA0H0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonH0V_AA16PlainButtonStyleVQo_AA01_d5ShapeP0VyAA9RectangleVGGAA01_d9ShapeKindP0VyAA6CircleVGGSgtGG_ACyACyAA4TextVASy12CoreGraphics7CGFloatVGGA24_GACyAKyAIyA32_28MediaConfigurationRoomButtonVSg_A29_AAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA32_019VoiceCompanionEntryH0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyA29_AAEA30_yQrqd__AAA31_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAQA18_GA8_GAA016_BackgroundStyleP0VyA13_GGA15_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWGA15_GG_A36_Qo_A24_GA45_yA87_GGtGGA18_GtGGSiGAA06_TraitoP0VyAA018ListRowInsetsTraitN0VGGMR) + 36)];
  __asm { FMOV            V0.2D, #20.0 }

  *v35 = _Q0;
  *(v35 + 1) = _Q0;
  v35[32] = 0;
  v25[*(v23 + 44)] = 0;
  v41 = *(v14 + 28);
  v42 = *MEMORY[0x277CE0118];
  v43 = type metadata accessor for RoundedCornerStyle();
  (*(*(v43 - 8) + 104))(&v16[v41], v42, v43);
  __asm { FMOV            V0.2D, #28.0 }

  *v16 = _Q0;
  _sSo17OS_dispatch_queueCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v45 = static NLSessionActivityGoal.makeOpenGoal()();
  if (NLSessionActivityGoal.isTimeAndDistanceGoal()())
  {
    v46 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    v47 = [v46 colorWithAlphaComponent_];
  }

  else
  {
    _HKWorkoutGoalType.platterColor.getter([v45 goalTypeIdentifier]);
  }

  Color.init(uiColor:)();
  v48 = Color.opacity(_:)();

  outlined init with take of RoundedRectangle(v16, v21);
  *&v21[*(v10 + 52)] = v48;
  *&v21[*(v10 + 56)] = 256;
  (*(v11 + 56))(v21, 0, 1, v10);
  v49 = v68;
  outlined init with copy of TupleToolbarContent<(ToolbarItem<(), Button<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, AccessibilityAttachmentModifier>>>, ToolbarSpacer)>?(v21, v68, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMR);
  if ((*(v11 + 48))(v49, 1, v10) == 1)
  {
    outlined destroy of WorkoutReadinessCheckError?(v21, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMR);
    v50 = 0;
  }

  else
  {
    outlined init with take of ModifiedContent<WorkoutDisclaimerRow, ZeroListRowInsets>(v49, v65, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR, MEMORY[0x277CDF3A0]);
    v50 = AnyView.init<A>(_:)();
    outlined destroy of WorkoutReadinessCheckError?(v21, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGSgMR);
  }

  outlined init with take of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v25, v27, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAQ5ScaleOGGACyACyACyAqA18_AspectRatioLayoutVGAA06_FrameU0VGAA08_PaddingU0VGGGASyAA5ColorVSgGGAA05_FlexvU0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentP0VG_AA6SpacerVACyACyAA0H0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonH0V_AA16PlainButtonStyleVQo_AA01_d5ShapeP0VyAA9RectangleVGGAA01_d9ShapeKindP0VyAA6CircleVGGSgtGG_ACyACyAA4TextVASy12CoreGraphics7CGFloatVGGA24_GACyAKyAIyA32_28MediaConfigurationRoomButtonVSg_A29_AAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA32_019VoiceCompanionEntryH0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyA29_AAEA30_yQrqd__AAA31_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAQA18_GA8_GAA016_BackgroundStyleP0VyA13_GGA15_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWGA15_GG_A36_Qo_A24_GA45_yA87_GGtGGA18_GtGGSiGAA06_TraitoP0VyAA018ListRowInsetsTraitN0VGGA42_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAQ5ScaleOGGACyACyACyAqA18_AspectRatioLayoutVGAA06_FrameU0VGAA08_PaddingU0VGGGASyAA5ColorVSgGGAA05_FlexvU0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentP0VG_AA6SpacerVACyACyAA0H0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonH0V_AA16PlainButtonStyleVQo_AA01_d5ShapeP0VyAA9RectangleVGGAA01_d9ShapeKindP0VyAA6CircleVGGSgtGG_ACyACyAA4TextVASy12CoreGraphics7CGFloatVGGA24_GACyAKyAIyA32_28MediaConfigurationRoomButtonVSg_A29_AAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA32_019VoiceCompanionEntryH0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyA29_AAEA30_yQrqd__AAA31_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAQA18_GA8_GAA016_BackgroundStyleP0VyA13_GGA15_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWGA15_GG_A36_Qo_A24_GA45_yA87_GGtGGA18_GtGGSiGAA06_TraitoP0VyAA018ListRowInsetsTraitN0VGGA42_GMR);
  v51 = v70;
  *&v27[*(v70 + 36)] = v50;
  v52 = v77;
  static AccessibilityChildBehavior.contain.getter();
  v53 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IDView<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeModifier<Rectangle>>, _ContentShapeKindModifier<Circle>>?)>>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<TupleView<(MediaConfigurationRoomButton?, (<<opaque return type of View.environment<A>(_:)>>.0)?, ModifiedContent<ModifiedContent<<<opaque ret();
  v54 = v69;
  View.accessibilityElement(children:)();
  (*(v78 + 8))(v52, v79);
  outlined destroy of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v27, &_s7SwiftUI15ModifiedContentVyACyACyAA6IDViewVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAQ5ScaleOGGACyACyACyAqA18_AspectRatioLayoutVGAA06_FrameU0VGAA08_PaddingU0VGGGASyAA5ColorVSgGGAA05_FlexvU0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentP0VG_AA6SpacerVACyACyAA0H0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonH0V_AA16PlainButtonStyleVQo_AA01_d5ShapeP0VyAA9RectangleVGGAA01_d9ShapeKindP0VyAA6CircleVGGSgtGG_ACyACyAA4TextVASy12CoreGraphics7CGFloatVGGA24_GACyAKyAIyA32_28MediaConfigurationRoomButtonVSg_A29_AAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA32_019VoiceCompanionEntryH0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyA29_AAEA30_yQrqd__AAA31_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAQA18_GA8_GAA016_BackgroundStyleP0VyA13_GGA15_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWGA15_GG_A36_Qo_A24_GA45_yA87_GGtGGA18_GtGGSiGAA06_TraitoP0VyAA018ListRowInsetsTraitN0VGGA42_GA104_yAA022ListRowBackgroundTraitN0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6IDViewVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAQ5ScaleOGGACyACyACyAqA18_AspectRatioLayoutVGAA06_FrameU0VGAA08_PaddingU0VGGGASyAA5ColorVSgGGAA05_FlexvU0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentP0VG_AA6SpacerVACyACyAA0H0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonH0V_AA16PlainButtonStyleVQo_AA01_d5ShapeP0VyAA9RectangleVGGAA01_d9ShapeKindP0VyAA6CircleVGGSgtGG_ACyACyAA4TextVASy12CoreGraphics7CGFloatVGGA24_GACyAKyAIyA32_28MediaConfigurationRoomButtonVSg_A29_AAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA32_019VoiceCompanionEntryH0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyA29_AAEA30_yQrqd__AAA31_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAQA18_GA8_GAA016_BackgroundStyleP0VyA13_GGA15_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWGA15_GG_A36_Qo_A24_GA45_yA87_GGtGGA18_GtGGSiGAA06_TraitoP0VyAA018ListRowInsetsTraitN0VGGA42_GA104_yAA022ListRowBackgroundTraitN0VGGMR);
  v55 = v80;
  static AccessibilityTraits.isSelected.getter();
  v84 = v51;
  v85 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v76;
  v58 = v73;
  MEMORY[0x20F30AA50](v55, v73, OpaqueTypeConformance2);
  (*(v81 + 8))(v55, v82);
  (*(v72 + 8))(v54, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_20CB5DA80;
  *(v59 + 32) = 0xD000000000000016;
  *(v59 + 40) = 0x800000020CB994A0;
  v60 = StandardActivityPickerItem.activityType.getter();
  v61 = FIUIWorkoutActivityType.accessibilityIdentifierString.getter();
  v63 = v62;

  *(v59 + 48) = v61;
  *(v59 + 56) = v63;
  v84 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
  BidirectionalCollection<>.joined(separator:)();

  ModifiedContent<>.accessibilityIdentifier(_:)();

  return outlined destroy of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v57, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleE0VyAA6HStackVyAOyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAW5ScaleOGGACyACyACyAwA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGAYyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA17_FlipForRTLEffectVGAA0i10AttachmentV0VG_AA6SpacerVACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_d5ShapeV0VyAA9RectangleVGGAA01_d9ShapeKindV0VyAA6CircleVGGSgtGG_ACyACyAA4TextVAYy12CoreGraphics7CGFloatVGGA30_GACyAQyAOyA36_28MediaConfigurationRoomButtonVSg_AeAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA36_019VoiceCompanionEntryE0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyAeAEA34_yQrqd__AAA35_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAWA24_GA14_GAA016_BackgroundStyleV0VyA19_GGA21_GAA11_ClipEffectVyAA16RoundedRectangleVGGA1_GA21_GG_A40_Qo_A30_GA49_yA91_GGtGGA24_GtGGSiGAA06_TraituV0VyAA018ListRowInsetsTraitT0VGGA46_GA108_yAA022ListRowBackgroundTraitT0VGG_Qo_A30_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleE0VyAA6HStackVyAOyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAW5ScaleOGGACyACyACyAwA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGAYyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA17_FlipForRTLEffectVGAA0i10AttachmentV0VG_AA6SpacerVACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_d5ShapeV0VyAA9RectangleVGGAA01_d9ShapeKindV0VyAA6CircleVGGSgtGG_ACyACyAA4TextVAYy12CoreGraphics7CGFloatVGGA30_GACyAQyAOyA36_28MediaConfigurationRoomButtonVSg_AeAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA36_019VoiceCompanionEntryE0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgACyACyAeAEA34_yQrqd__AAA35_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyAWA24_GA14_GAA016_BackgroundStyleV0VyA19_GGA21_GAA11_ClipEffectVyAA16RoundedRectangleVGGA1_GA21_GG_A40_Qo_A30_GA49_yA91_GGtGGA24_GtGGSiGAA06_TraituV0VyAA018ListRowInsetsTraitT0VGGA46_GA108_yAA022ListRowBackgroundTraitT0VGG_Qo_A30_GMR);
}

uint64_t _s9WorkoutUI0A15BrowsingViewiOSV4bodyQrvg05SwiftB04ViewPAEE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAgEE7toolbar7contentQrqd__yXE_tAE14ToolbarContentRd__lFQOyAgEE0O16TitleDisplayModeyQrAE0qstU0VFQOyAgEE013navigationBarS0yQrqd__SyRd__lFQOyAgEE5sheet11isPresented9onDismissAPQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAgEE0V11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAgEEAvwxPQrA__A0_qd__yctAeFRd__lFQOyAgEEA1_A2_A3_Qrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAE06ScrollH6ReaderVyAgEE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEE9onReceive_7performQrqd___y6OutputQyd__ct7Combine9PublisherRd__s5NeverO7FailureRtd__lFQOyAgEE17listRowBackgroundyQrqd__SgAeFRd__lFQOyAgEE16listRowSeparator_5edgesQrAE10VisibilityO_AE12VerticalEdgeO3SetVtFQOyAgEE11listPaddingyQrAE4EdgeOA27_V_12CoreGraphics7CGFloatVtFQOyAgEE14listRowSpacingyQrA35_SgFQOyAE4ListVyA16_AE05TupleH0VyAgEE2idyQrqd__SHRd__lFQOyAE05EmptyH0V_SSQo__AgAE21withZeroListRowInsetsQryFQOyAA0A13DisclaimerRowV_Qo_SgAgAEA46_QryFQOyAC025safetyCheckInRemindersTipH033_C6A1CD99A5FFEBCF0602419937A3F460LLQrvpQOyx_Qo__Qo_AE7ForEachVySay0A4Core36ManagedConfigurationSourcePickerItemCGSiAgEE17environmentObjectyQrqd__A13_16ObservableObjectRd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA020ManagedConfigurationdE0V_So21FIUIFormattingManagerCA66_A13_A62_AAyHCg0_Qo__AA28ConfigurationNavigationModelCQo__So13HKHealthStoreCA72_A13_A62_AAyHCg0_Qo__A57_0A28ConfigurationOccurrenceStoreCQo_GAE07DynamichR0PAEE8onDeleteA10_Qry10Foundation8IndexSetVcSg_tFQOyA56_ySayA57_26StandardActivityPickerItemCGSiAE08ModifiedR0VyAgEE20accessibilityElement8childrenQrAE26AccessibilityChildBehaviorV_tFQOyAgEEA19_yQrA20_AeFRd__lFQOyAgEE0P5Shape_6eoFillQrqd___SbtAE5ShapeRd__lFQOyAgEE13listRowInsetsyQrAE10EdgeInsetsVSgFQOyAgEEA42_yQrqd__SHRd__lFQOyAE6VStackVyA41_yAE6HStackVyA41_yA89_yAgEE34flipsForRightToLeftLayoutDirectionyQrSbFQOyAgEE5frame8minWidth10idealWidth8maxWidth9minHeight11idealHeight9maxHeight9alignmentQrA37__A37_A37_A37_A37_A37_AE9AlignmentVtFQOyAgEE15foregroundColoryQrAE5ColorVSgFQOyAE5GroupVyAE012_ConditionalR0VyAgEE10imageScaleyQrAE5ImageV5ScaleOFQOyAgEE4fontyQrAE4FontVSgFQOyA126__Qo__Qo_AgEE7paddingyQrA32__A37_tFQOyA126_AAE11scaledToFit4sizeQrSo6CGSizeV_tFQOy_Qo__Qo_GG_Qo__Qo__Qo_AE31AccessibilityAttachmentModifierVG_AE6SpacerVAgEEA94___A95_QrAE0R10ShapeKindsV_qd__SbtAEA96_Rd__lFQOyAgEEA94__A95_Qrqd___SbtAEA96_Rd__lFQOyAgEE11buttonStyleyQrqd__AE20PrimitiveButtonStyleRd__lFQOyAA011StartButtonH0V_AE16PlainButtonStyleVQo__AE9RectangleVQo__AE6CircleVQo_SgtGG_A89_yAgEE0M7SpacingyQrA35_FQOyAE4TextV_Qo_A148_GAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA104_yA41_yAA28MediaConfigurationRoomButtonVSg_AgEE11environmentyQrA20_Rld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_A57_0A25VoiceAvailabilityProviderCQo_SgAgEEA94___A95_QrA153__qd__SbtAEA96_Rd__lFQOyA89_yAgEEA154_yQrqd__AEA155_Rd__lFQOyAE6ButtonVyAgEEA116_yQrA119_FQOyAgEEA129_yQrA132_FQOyAgEE9clipShape_5styleQrqd___AE9FillStyleVtAEA96_Rd__lFQOyAgEEA116_yQrA119_FQOyAgEE10background_20ignoresSafeAreaEdgesQrqd___A32_tAE10ShapeStyleRd__lFQOyAgEEA135_yQrA32__A37_tFQOyAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA126__Qo__Qo__A118_Qo__Qo__AE16RoundedRectangleVQo__Qo__Qo_G_A159_Qo_A148_G_A201_Qo_tGG_Qo_tGG_SiQo__Qo__A162_Qo__AE06_ShapeH0VyA201_A118_GQo__Qo_A148_GG_Qo_A89_yAgEEA19_yQrA20_AeFRd__lFQOyA188_yA104_yA41_yA151__AgEEA193__A113_Qrqd___A115_tAeFRd__lFQOyAgEEA106_5width6heightA113_QrA37__A37_A115_tFQOyA133__Qo__A218_yA165_A118_GQo_A151_tGGG_A118_Qo_A148_GxSgtGG_Qo__Qo__Qo__A118_Qo__So20NSNotificationCenterCA81_EA14_VQo__A87_Qo__So23FIUIWorkoutActivityTypeCSgQo__SbSgQo__A249_Qo_G_A248_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA178_yQrA20_Rld__CA179_A180_Rd__lFQOyAA16ActivityTypeRoomV_A184_Qo__A66_A66_A13_A62_AAyHCg0_Qo_Qo__AA03AddA4ListVQo__A59_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA029ManagedConfigurationsUpcomingdE0V_A66_A66_A13_A62_AAyHCg0_Qo__A69_Qo__A72_A72_A13_A62_AAyHCg0_Qo__A75_Qo_Qo__AA06Manuala7LoggingH0VQo__SSQo__Qo__AE0qR7BuilderV10buildBlockyQrx_q_tAeQRzAeQR_r0_lFZQOy_A276_A277_yQrx_q_tAeQRzAeQR_r0_lFZQOy_AE0Q4ItemVyytA188_yA89_yAgEE6offsetyQrA139_FQOyA126__Qo_A148_GGGAE0Q6SpacerVQo_SgA279_yytAA20DeviceConnectionMenuVGQo_Qo__Qo_yXEfU_A253_AE06ScrollH5ProxyVcfU_A236_yXEfU_A222_A86_cfU1_A212_yXEfU_@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v73 = a5;
  v7 = a4;
  v72 = a4;
  v71 = a3;
  v80 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0E0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAF019VoiceCompanionEntryE0V_0F4Core0fN20AvailabilityProviderCQo_SgAA15ModifiedContentVyAXyAkAE11buttonStyleyQrqd__AA09PrimitivejW0Rd__lFQOyAA0J0VyAXyAXyAXyAXyAXyAXyAXyAA5ImageVAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA011_BackgroundW8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA12_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA16_yAA4FontVSgGGA18_GG_AA05PlainjW0VQo_AA31AccessibilityAttachmentModifierVGAA01_U17ShapeKindModifierVyA23_GGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0E0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAF019VoiceCompanionEntryE0V_0F4Core0fN20AvailabilityProviderCQo_SgAA15ModifiedContentVyAXyAkAE11buttonStyleyQrqd__AA09PrimitivejW0Rd__lFQOyAA0J0VyAXyAXyAXyAXyAXyAXyAXyAA5ImageVAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA011_BackgroundW8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA12_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA16_yAA4FontVSgGGA18_GG_AA05PlainjW0VQo_AA31AccessibilityAttachmentModifierVGAA01_U17ShapeKindModifierVyA23_GGtGGMR);
  MEMORY[0x28223BE20](v11 - 8);
  v74 = (&v70 - v12);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0G0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAH019VoiceCompanionEntryG0V_0H4Core0hP20AvailabilityProviderCQo_SgACyACyAmAE11buttonStyleyQrqd__AA09PrimitivelW0Rd__lFQOyAA0L0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA011_BackgroundW8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA12_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA16_yAA4FontVSgGGA18_GG_AA05PlainlW0VQo_AA31AccessibilityAttachmentModifierVGAA01_D17ShapeKindModifierVyA23_GGtGGA4_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0G0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAH019VoiceCompanionEntryG0V_0H4Core0hP20AvailabilityProviderCQo_SgACyACyAmAE11buttonStyleyQrqd__AA09PrimitivelW0Rd__lFQOyAA0L0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA011_BackgroundW8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA12_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA16_yAA4FontVSgGGA18_GG_AA05PlainlW0VQo_AA31AccessibilityAttachmentModifierVGAA01_D17ShapeKindModifierVyA23_GGtGGA4_GMR) - 8;
  MEMORY[0x28223BE20](v78);
  v79 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v70 - v15;
  MEMORY[0x28223BE20](v16);
  v83 = &v70 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA023AccessibilityAttachmentI0VGMR);
  MEMORY[0x28223BE20](v18 - 8);
  v77 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v81 = &v70 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAM5ScaleOGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAOyAA5ColorVSgGGAA05_FlextS0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AA6SpacerVAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_g5ShapeN0VyAA9RectangleVGGAA01_g9ShapeKindN0VyAA6CircleVGGSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAM5ScaleOGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAOyAA5ColorVSgGGAA05_FlextS0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AA6SpacerVAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_g5ShapeN0VyAA9RectangleVGGAA01_g9ShapeKindN0VyAA6CircleVGGSgtGGMR);
  MEMORY[0x28223BE20](v22 - 8);
  v75 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v70 - v25;
  *v26 = static VerticalAlignment.center.getter();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v82 = v26;
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAQ5ScaleOGGAKyAKyAKyAqA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGGASyAA5ColorVSgGGAA05_FlexvG0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentQ0VG_AA6SpacerVAKyAKyAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonD0V_AA16PlainButtonStyleVQo_AA01_j5ShapeQ0VyAA9RectangleVGGAA01_j9ShapeKindQ0VyAA6CircleVGGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAQ5ScaleOGGAKyAKyAKyAqA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGGASyAA5ColorVSgGGAA05_FlexvG0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentQ0VG_AA6SpacerVAKyAKyAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonD0V_AA16PlainButtonStyleVQo_AA01_j5ShapeQ0VyAA9RectangleVGGAA01_j9ShapeKindQ0VyAA6CircleVGGSgtGGMR) + 44)];
  v70 = a1;
  _s9WorkoutUI0A15BrowsingViewiOSV4bodyQrvg05SwiftB04ViewPAEE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAgEE7toolbar7contentQrqd__yXE_tAE14ToolbarContentRd__lFQOyAgEE0O16TitleDisplayModeyQrAE0qstU0VFQOyAgEE013navigationBarS0yQrqd__SyRd__lFQOyAgEE5sheet11isPresented9onDismissAPQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAgEE0V11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAgEEAvwxPQrA__A0_qd__yctAeFRd__lFQOyAgEEA1_A2_A3_Qrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAE06ScrollH6ReaderVyAgEE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEE9onReceive_7performQrqd___y6OutputQyd__ct7Combine9PublisherRd__s5NeverO7FailureRtd__lFQOyAgEE17listRowBackgroundyQrqd__SgAeFRd__lFQOyAgEE16listRowSeparator_5edgesQrAE10VisibilityO_AE12VerticalEdgeO3SetVtFQOyAgEE11listPaddingyQrAE4EdgeOA27_V_12CoreGraphics7CGFloatVtFQOyAgEE14listRowSpacingyQrA35_SgFQOyAE4ListVyA16_AE05TupleH0VyAgEE2idyQrqd__SHRd__lFQOyAE05EmptyH0V_SSQo__AgAE21withZeroListRowInsetsQryFQOyAA0A13DisclaimerRowV_Qo_SgAgAEA46_QryFQOyAC025safetyCheckInRemindersTipH033_C6A1CD99A5FFEBCF0602419937A3F460LLQrvpQOyx_Qo__Qo_AE7ForEachVySay0A4Core36ManagedConfigurationSourcePickerItemCGSiAgEE17environmentObjectyQrqd__A13_16ObservableObjectRd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA020ManagedConfigurationdE0V_So21FIUIFormattingManagerCA66_A13_A62_AAyHCg0_Qo__AA28ConfigurationNavigationModelCQo__So13HKHealthStoreCA72_A13_A62_AAyHCg0_Qo__A57_0A28ConfigurationOccurrenceStoreCQo_GAE07DynamichR0PAEE8onDeleteA10_Qry10Foundation8IndexSetVcSg_tFQOyA56_ySayA57_26StandardActivityPickerItemCGSiAE08ModifiedR0VyAgEE20accessibilityElement8childrenQrAE26AccessibilityChildBehaviorV_tFQOyAgEEA19_yQrA20_AeFRd__lFQOyAgEE0P5Shape_6eoFillQrqd___SbtAE5ShapeRd__lFQOyAgEE13listRowInsetsyQrAE10EdgeInsetsVSgFQOyAgEEA42_yQrqd__SHRd__lFQOyAE6VStackVyA41_yAE6HStackVyA41_yA89_yAgEE34flipsForRightToLeftLayoutDirectionyQrSbFQOyAgEE5frame8minWidth10idealWidth8maxWidth9minHeight11idealHeight9maxHeight9alignmentQrA37__A37_A37_A37_A37_A37_AE9AlignmentVtFQOyAgEE15foregroundColoryQrAE5ColorVSgFQOyAE5GroupVyAE012_ConditionalR0VyAgEE10imageScaleyQrAE5ImageV5ScaleOFQOyAgEE4fontyQrAE4FontVSgFQOyA126__Qo__Qo_AgEE7paddingyQrA32__A37_tFQOyA126_AAE11scaledToFit4sizeQrSo6CGSizeV_tFQOy_Qo__Qo_GG_Qo__Qo__Qo_AE31AccessibilityAttachmentModifierVG_AE6SpacerVAgEEA94___A95_QrAE0R10ShapeKindsV_qd__SbtAEA96_Rd__lFQOyAgEEA94__A95_Qrqd___SbtAEA96_Rd__lFQOyAgEE11buttonStyleyQrqd__AE20PrimitiveButtonStyleRd__lFQOyAA011StartButtonH0V_AE16PlainButtonStyleVQo__AE9RectangleVQo__AE6CircleVQo_SgtGG_A89_yAgEE0M7SpacingyQrA35_FQOyAE4TextV_Qo_A148_GAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA104_yA41_yAA28MediaConfigurationRoomButtonVSg_AgEE11environmentyQrA20_Rld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_A57_0A25VoiceAvailabilityProviderCQo_SgAgEEA94___A95_QrA153__qd__SbtAEA96_Rd__lFQOyA89_yAgEEA154_yQrqd__AEA155_Rd__lFQOyAE6ButtonVyAgEEA116_yQrA119_FQOyAgEEA129_yQrA132_FQOyAgEE9clipShape_5styleQrqd___AE9FillStyleVtAEA96_Rd__lFQOyAgEEA116_yQrA119_FQOyAgEE10background_20ignoresSafeAreaEdgesQrqd___A32_tAE10ShapeStyleRd__lFQOyAgEEA135_yQrA32__A37_tFQOyAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA126__Qo__Qo__A118_Qo__Qo__AE16RoundedRectangleVQo__Qo__Qo_G_A159_Qo_A148_G_A201_Qo_tGG_Qo_tGG_SiQo__Qo__A162_Qo__AE06_ShapeH0VyA201_A118_GQo__Qo_A148_GG_Qo_A89_yAgEEA19_yQrA20_AeFRd__lFQOyA188_yA104_yA41_yA151__AgEEA193__A113_Qrqd___A115_tAeFRd__lFQOyAgEEA106_5width6heightA113_QrA37__A37_A115_tFQOyA133__Qo__A218_yA165_A118_GQo_A151_tGGG_A118_Qo_A148_GxSgtGG_Qo__Qo__Qo__A118_Qo__So20NSNotificationCenterCA81_EA14_VQo__A87_Qo__So23FIUIWorkoutActivityTypeCSgQo__SbSgQo__A249_Qo_G_A248_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA178_yQrA20_Rld__CA179_A180_Rd__lFQOyAA16ActivityTypeRoomV_A184_Qo__A66_A66_A13_A62_AAyHCg0_Qo_Qo__AA03AddA4ListVQo__A59_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA029ManagedConfigurationsUpcomingdE0V_A66_A66_A13_A62_AAyHCg0_Qo__A69_Qo__A72_A72_A13_A62_AAyHCg0_Qo__A75_Qo_Qo__AA06Manuala7LoggingH0VQo__SSQo__Qo__AE0qR7BuilderV10buildBlockyQrx_q_tAeQRzAeQR_r0_lFZQOy_A276_A277_yQrx_q_tAeQRzAeQR_r0_lFZQOy_AE0Q4ItemVyytA188_yA89_yAgEE6offsetyQrA139_FQOyA126__Qo_A148_GGGAE0Q6SpacerVQo_SgA279_yytAA20DeviceConnectionMenuVGQo_Qo__Qo_yXEfU_A253_AE06ScrollH5ProxyVcfU_A236_yXEfU_A222_A86_cfU1_A212_yXEfU_A168_yXEfU_( a1,  a2,  a3,  v7,  a5,  v27);
  v28 = StandardActivityPickerItem.activityType.getter();
  v29 = [v28 localizedName];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  *&v84 = v30;
  *(&v84 + 1) = v32;
  lazy protocol witness table accessor for type String and conformance String();
  v33 = Text.init<A>(_:)();
  v35 = v34;
  LOBYTE(v32) = v36;
  static Font.title2.getter();
  v37 = Text.font(_:)();
  v39 = v38;
  LOBYTE(v7) = v40;

  outlined consume of Text.Storage(v33, v35, v32 & 1);

  static Font.Weight.bold.getter();
  v41 = Text.fontWeight(_:)();
  v43 = v42;
  v45 = v44;
  outlined consume of Text.Storage(v37, v39, v7 & 1);

  static Color.primary.getter();
  v46 = Text.foregroundColor(_:)();
  v48 = v47;
  LOBYTE(v7) = v49;
  v51 = v50;

  outlined consume of Text.Storage(v41, v43, v45 & 1);

  KeyPath = swift_getKeyPath();
  *&v84 = v46;
  *(&v84 + 1) = v48;
  LOBYTE(v7) = v7 & 1;
  LOBYTE(v85) = v7;
  *(&v85 + 1) = v51;
  *&v86 = KeyPath;
  *(&v86 + 1) = 0xC000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
  v53 = v81;
  View.accessibilitySortPriority(_:)();
  outlined consume of Text.Storage(v46, v48, v7);

  v54 = static VerticalAlignment.center.getter();
  v55 = v74;
  *v74 = v54;
  v55[1] = 0x4020000000000000;
  *(v55 + 16) = 0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0Vy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0D0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAJ019VoiceCompanionEntryD0V_0I4Core0iQ20AvailabilityProviderCQo_SgAA15ModifiedContentVyA0_yAoAE11buttonStyleyQrqd__AA09PrimitivemZ0Rd__lFQOyAA0M0VyA0_yA0_yA0_yA0_yA0_yA0_yA0_yAA5ImageVAA010_FlexFrameG0VGAA08_PaddingG0VGAA011_BackgroundZ8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA16_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA20_yAA4FontVSgGGA22_GG_AA05PlainmZ0VQo_AA31AccessibilityAttachmentModifierVGAA01_X17ShapeKindModifierVyA27_GGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0Vy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0D0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAJ019VoiceCompanionEntryD0V_0I4Core0iQ20AvailabilityProviderCQo_SgAA15ModifiedContentVyA0_yAoAE11buttonStyleyQrqd__AA09PrimitivemZ0Rd__lFQOyAA0M0VyA0_yA0_yA0_yA0_yA0_yA0_yA0_yAA5ImageVAA010_FlexFrameG0VGAA08_PaddingG0VGAA011_BackgroundZ8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA16_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA20_yAA4FontVSgGGA22_GG_AA05PlainmZ0VQo_AA31AccessibilityAttachmentModifierVGAA01_X17ShapeKindModifierVyA27_GGtGGMR);
  _s9WorkoutUI0A15BrowsingViewiOSV4bodyQrvg05SwiftB04ViewPAEE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAgEE7toolbar7contentQrqd__yXE_tAE14ToolbarContentRd__lFQOyAgEE0O16TitleDisplayModeyQrAE0qstU0VFQOyAgEE013navigationBarS0yQrqd__SyRd__lFQOyAgEE5sheet11isPresented9onDismissAPQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAgEE0V11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAgEEAvwxPQrA__A0_qd__yctAeFRd__lFQOyAgEEA1_A2_A3_Qrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAE06ScrollH6ReaderVyAgEE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEE9onReceive_7performQrqd___y6OutputQyd__ct7Combine9PublisherRd__s5NeverO7FailureRtd__lFQOyAgEE17listRowBackgroundyQrqd__SgAeFRd__lFQOyAgEE16listRowSeparator_5edgesQrAE10VisibilityO_AE12VerticalEdgeO3SetVtFQOyAgEE11listPaddingyQrAE4EdgeOA27_V_12CoreGraphics7CGFloatVtFQOyAgEE14listRowSpacingyQrA35_SgFQOyAE4ListVyA16_AE05TupleH0VyAgEE2idyQrqd__SHRd__lFQOyAE05EmptyH0V_SSQo__AgAE21withZeroListRowInsetsQryFQOyAA0A13DisclaimerRowV_Qo_SgAgAEA46_QryFQOyAC025safetyCheckInRemindersTipH033_C6A1CD99A5FFEBCF0602419937A3F460LLQrvpQOyx_Qo__Qo_AE7ForEachVySay0A4Core36ManagedConfigurationSourcePickerItemCGSiAgEE17environmentObjectyQrqd__A13_16ObservableObjectRd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA020ManagedConfigurationdE0V_So21FIUIFormattingManagerCA66_A13_A62_AAyHCg0_Qo__AA28ConfigurationNavigationModelCQo__So13HKHealthStoreCA72_A13_A62_AAyHCg0_Qo__A57_0A28ConfigurationOccurrenceStoreCQo_GAE07DynamichR0PAEE8onDeleteA10_Qry10Foundation8IndexSetVcSg_tFQOyA56_ySayA57_26StandardActivityPickerItemCGSiAE08ModifiedR0VyAgEE20accessibilityElement8childrenQrAE26AccessibilityChildBehaviorV_tFQOyAgEEA19_yQrA20_AeFRd__lFQOyAgEE0P5Shape_6eoFillQrqd___SbtAE5ShapeRd__lFQOyAgEE13listRowInsetsyQrAE10EdgeInsetsVSgFQOyAgEEA42_yQrqd__SHRd__lFQOyAE6VStackVyA41_yAE6HStackVyA41_yA89_yAgEE34flipsForRightToLeftLayoutDirectionyQrSbFQOyAgEE5frame8minWidth10idealWidth8maxWidth9minHeight11idealHeight9maxHeight9alignmentQrA37__A37_A37_A37_A37_A37_AE9AlignmentVtFQOyAgEE15foregroundColoryQrAE5ColorVSgFQOyAE5GroupVyAE012_ConditionalR0VyAgEE10imageScaleyQrAE5ImageV5ScaleOFQOyAgEE4fontyQrAE4FontVSgFQOyA126__Qo__Qo_AgEE7paddingyQrA32__A37_tFQOyA126_AAE11scaledToFit4sizeQrSo6CGSizeV_tFQOy_Qo__Qo_GG_Qo__Qo__Qo_AE31AccessibilityAttachmentModifierVG_AE6SpacerVAgEEA94___A95_QrAE0R10ShapeKindsV_qd__SbtAEA96_Rd__lFQOyAgEEA94__A95_Qrqd___SbtAEA96_Rd__lFQOyAgEE11buttonStyleyQrqd__AE20PrimitiveButtonStyleRd__lFQOyAA011StartButtonH0V_AE16PlainButtonStyleVQo__AE9RectangleVQo__AE6CircleVQo_SgtGG_A89_yAgEE0M7SpacingyQrA35_FQOyAE4TextV_Qo_A148_GAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA104_yA41_yAA28MediaConfigurationRoomButtonVSg_AgEE11environmentyQrA20_Rld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_A57_0A25VoiceAvailabilityProviderCQo_SgAgEEA94___A95_QrA153__qd__SbtAEA96_Rd__lFQOyA89_yAgEEA154_yQrqd__AEA155_Rd__lFQOyAE6ButtonVyAgEEA116_yQrA119_FQOyAgEEA129_yQrA132_FQOyAgEE9clipShape_5styleQrqd___AE9FillStyleVtAEA96_Rd__lFQOyAgEEA116_yQrA119_FQOyAgEE10background_20ignoresSafeAreaEdgesQrqd___A32_tAE10ShapeStyleRd__lFQOyAgEEA135_yQrA32__A37_tFQOyAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA126__Qo__Qo__A118_Qo__Qo__AE16RoundedRectangleVQo__Qo__Qo_G_A159_Qo_A148_G_A201_Qo_tGG_Qo_tGG_SiQo__Qo__A162_Qo__AE06_ShapeH0VyA201_A118_GQo__Qo_A148_GG_Qo_A89_yAgEEA19_yQrA20_AeFRd__lFQOyA188_yA104_yA41_yA151__AgEEA193__A113_Qrqd___A115_tAeFRd__lFQOyAgEEA106_5width6heightA113_QrA37__A37_A115_tFQOyA133__Qo__A218_yA165_A118_GQo_A151_tGGG_A118_Qo_A148_GxSgtGG_Qo__Qo__Qo__A118_Qo__So20NSNotificationCenterCA81_EA14_VQo__A87_Qo__So23FIUIWorkoutActivityTypeCSgQo__SbSgQo__A249_Qo_G_A248_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA178_yQrA20_Rld__CA179_A180_Rd__lFQOyAA16ActivityTypeRoomV_A184_Qo__A66_A66_A13_A62_AAyHCg0_Qo_Qo__AA03AddA4ListVQo__A59_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA029ManagedConfigurationsUpcomingdE0V_A66_A66_A13_A62_AAyHCg0_Qo__A69_Qo__A72_A72_A13_A62_AAyHCg0_Qo__A75_Qo_Qo__AA06Manuala7LoggingH0VQo__SSQo__Qo__AE0qR7BuilderV10buildBlockyQrx_q_tAeQRzAeQR_r0_lFZQOy_A276_A277_yQrx_q_tAeQRzAeQR_r0_lFZQOy_AE0Q4ItemVyytA188_yA89_yAgEE6offsetyQrA139_FQOyA126__Qo_A148_GGGAE0Q6SpacerVQo_SgA279_yytAA20DeviceConnectionMenuVGQo_Qo__Qo_yXEfU_A253_AE06ScrollH5ProxyVcfU_A236_yXEfU_A222_A86_cfU1_A212_yXEfU_A209_yXEfU0_( v70,  v71,  v72,  v73,  (v55 + *(v56 + 44)));
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v57 = v55;
  v58 = v76;
  outlined init with take of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v57, v76, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0E0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAF019VoiceCompanionEntryE0V_0F4Core0fN20AvailabilityProviderCQo_SgAA15ModifiedContentVyAXyAkAE11buttonStyleyQrqd__AA09PrimitivejW0Rd__lFQOyAA0J0VyAXyAXyAXyAXyAXyAXyAXyAA5ImageVAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA011_BackgroundW8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA12_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA16_yAA4FontVSgGGA18_GG_AA05PlainjW0VQo_AA31AccessibilityAttachmentModifierVGAA01_U17ShapeKindModifierVyA23_GGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0E0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAF019VoiceCompanionEntryE0V_0F4Core0fN20AvailabilityProviderCQo_SgAA15ModifiedContentVyAXyAkAE11buttonStyleyQrqd__AA09PrimitivejW0Rd__lFQOyAA0J0VyAXyAXyAXyAXyAXyAXyAXyAA5ImageVAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA011_BackgroundW8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA12_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA16_yAA4FontVSgGGA18_GG_AA05PlainjW0VQo_AA31AccessibilityAttachmentModifierVGAA01_U17ShapeKindModifierVyA23_GGtGGMR);
  v59 = (v58 + *(v78 + 44));
  v60 = v89;
  v59[4] = v88;
  v59[5] = v60;
  v59[6] = v90;
  v61 = v85;
  *v59 = v84;
  v59[1] = v61;
  v62 = v87;
  v59[2] = v86;
  v59[3] = v62;
  v63 = v83;
  outlined init with take of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v58, v83, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0G0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAH019VoiceCompanionEntryG0V_0H4Core0hP20AvailabilityProviderCQo_SgACyACyAmAE11buttonStyleyQrqd__AA09PrimitivelW0Rd__lFQOyAA0L0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA011_BackgroundW8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA12_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA16_yAA4FontVSgGGA18_GG_AA05PlainlW0VQo_AA31AccessibilityAttachmentModifierVGAA01_D17ShapeKindModifierVyA23_GGtGGA4_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0G0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAH019VoiceCompanionEntryG0V_0H4Core0hP20AvailabilityProviderCQo_SgACyACyAmAE11buttonStyleyQrqd__AA09PrimitivelW0Rd__lFQOyAA0L0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA011_BackgroundW8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA12_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA16_yAA4FontVSgGGA18_GG_AA05PlainlW0VQo_AA31AccessibilityAttachmentModifierVGAA01_D17ShapeKindModifierVyA23_GGtGGA4_GMR);
  v64 = v75;
  outlined init with copy of ModifiedContent<<<opaque return type of View.tipViewStyle<A>(_:)>>.0, ZeroListRowInsets>(v82, v75, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAM5ScaleOGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAOyAA5ColorVSgGGAA05_FlextS0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AA6SpacerVAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_g5ShapeN0VyAA9RectangleVGGAA01_g9ShapeKindN0VyAA6CircleVGGSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAM5ScaleOGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAOyAA5ColorVSgGGAA05_FlextS0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AA6SpacerVAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_g5ShapeN0VyAA9RectangleVGGAA01_g9ShapeKindN0VyAA6CircleVGGSgtGGMR);
  v65 = v77;
  outlined init with copy of TupleToolbarContent<(ToolbarItem<(), Button<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, AccessibilityAttachmentModifier>>>, ToolbarSpacer)>?(v53, v77, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA023AccessibilityAttachmentI0VGMR);
  v66 = v79;
  outlined init with copy of ModifiedContent<<<opaque return type of View.tipViewStyle<A>(_:)>>.0, ZeroListRowInsets>(v63, v79, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0G0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAH019VoiceCompanionEntryG0V_0H4Core0hP20AvailabilityProviderCQo_SgACyACyAmAE11buttonStyleyQrqd__AA09PrimitivelW0Rd__lFQOyAA0L0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA011_BackgroundW8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA12_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA16_yAA4FontVSgGGA18_GG_AA05PlainlW0VQo_AA31AccessibilityAttachmentModifierVGAA01_D17ShapeKindModifierVyA23_GGtGGA4_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0G0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAH019VoiceCompanionEntryG0V_0H4Core0hP20AvailabilityProviderCQo_SgACyACyAmAE11buttonStyleyQrqd__AA09PrimitivelW0Rd__lFQOyAA0L0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA011_BackgroundW8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA12_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA16_yAA4FontVSgGGA18_GG_AA05PlainlW0VQo_AA31AccessibilityAttachmentModifierVGAA01_D17ShapeKindModifierVyA23_GGtGGA4_GMR);
  v67 = v80;
  outlined init with copy of ModifiedContent<<<opaque return type of View.tipViewStyle<A>(_:)>>.0, ZeroListRowInsets>(v64, v80, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAM5ScaleOGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAOyAA5ColorVSgGGAA05_FlextS0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AA6SpacerVAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_g5ShapeN0VyAA9RectangleVGGAA01_g9ShapeKindN0VyAA6CircleVGGSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAM5ScaleOGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAOyAA5ColorVSgGGAA05_FlextS0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AA6SpacerVAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_g5ShapeN0VyAA9RectangleVGGAA01_g9ShapeKindN0VyAA6CircleVGGSgtGGMR);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAM5ScaleOGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAOyAA5ColorVSgGGAA05_FlextS0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AA6SpacerVAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_g5ShapeN0VyAA9RectangleVGGAA01_g9ShapeKindN0VyAA6CircleVGGSgtGG_AGyAGyAA4TextVAOy12CoreGraphics7CGFloatVGGA20_GAGyACyAEyA28_28MediaConfigurationRoomButtonVSg_A25_AAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA28_019VoiceCompanionEntryE0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgAGyAGyA25_AAEA26_yQrqd__AAA27_Rd__lFQOyAA6ButtonVyAGyAGyAGyAGyAGyAGyAGyAMA14_GA4_GAA016_BackgroundStyleN0VyA9_GGA11_GAA11_ClipEffectVyAA16RoundedRectangleVGGASGA11_GG_A32_Qo_A20_GA41_yA83_GGtGGA14_GtMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAM5ScaleOGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAOyAA5ColorVSgGGAA05_FlextS0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AA6SpacerVAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_g5ShapeN0VyAA9RectangleVGGAA01_g9ShapeKindN0VyAA6CircleVGGSgtGG_AGyAGyAA4TextVAOy12CoreGraphics7CGFloatVGGA20_GAGyACyAEyA28_28MediaConfigurationRoomButtonVSg_A25_AAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA28_019VoiceCompanionEntryE0V_11WorkoutCore32WorkoutVoiceAvailabilityProviderCQo_SgAGyAGyA25_AAEA26_yQrqd__AAA27_Rd__lFQOyAA6ButtonVyAGyAGyAGyAGyAGyAGyAGyAMA14_GA4_GAA016_BackgroundStyleN0VyA9_GGA11_GAA11_ClipEffectVyAA16RoundedRectangleVGGASGA11_GG_A32_Qo_A20_GA41_yA83_GGtGGA14_GtMR);
  outlined init with copy of TupleToolbarContent<(ToolbarItem<(), Button<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, AccessibilityAttachmentModifier>>>, ToolbarSpacer)>?(v65, v67 + *(v68 + 48), &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA023AccessibilityAttachmentI0VGMR);
  outlined init with copy of ModifiedContent<<<opaque return type of View.tipViewStyle<A>(_:)>>.0, ZeroListRowInsets>(v66, v67 + *(v68 + 64), &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0G0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAH019VoiceCompanionEntryG0V_0H4Core0hP20AvailabilityProviderCQo_SgACyACyAmAE11buttonStyleyQrqd__AA09PrimitivelW0Rd__lFQOyAA0L0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA011_BackgroundW8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA12_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA16_yAA4FontVSgGGA18_GG_AA05PlainlW0VQo_AA31AccessibilityAttachmentModifierVGAA01_D17ShapeKindModifierVyA23_GGtGGA4_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0G0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAH019VoiceCompanionEntryG0V_0H4Core0hP20AvailabilityProviderCQo_SgACyACyAmAE11buttonStyleyQrqd__AA09PrimitivelW0Rd__lFQOyAA0L0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA011_BackgroundW8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA12_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA16_yAA4FontVSgGGA18_GG_AA05PlainlW0VQo_AA31AccessibilityAttachmentModifierVGAA01_D17ShapeKindModifierVyA23_GGtGGA4_GMR);
  outlined destroy of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v83, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0G0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAH019VoiceCompanionEntryG0V_0H4Core0hP20AvailabilityProviderCQo_SgACyACyAmAE11buttonStyleyQrqd__AA09PrimitivelW0Rd__lFQOyAA0L0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA011_BackgroundW8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA12_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA16_yAA4FontVSgGGA18_GG_AA05PlainlW0VQo_AA31AccessibilityAttachmentModifierVGAA01_D17ShapeKindModifierVyA23_GGtGGA4_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0G0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAH019VoiceCompanionEntryG0V_0H4Core0hP20AvailabilityProviderCQo_SgACyACyAmAE11buttonStyleyQrqd__AA09PrimitivelW0Rd__lFQOyAA0L0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA011_BackgroundW8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA12_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA16_yAA4FontVSgGGA18_GG_AA05PlainlW0VQo_AA31AccessibilityAttachmentModifierVGAA01_D17ShapeKindModifierVyA23_GGtGGA4_GMR);
  outlined destroy of WorkoutReadinessCheckError?(v81, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA023AccessibilityAttachmentI0VGMR);
  outlined destroy of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v82, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAM5ScaleOGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAOyAA5ColorVSgGGAA05_FlextS0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AA6SpacerVAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_g5ShapeN0VyAA9RectangleVGGAA01_g9ShapeKindN0VyAA6CircleVGGSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAM5ScaleOGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAOyAA5ColorVSgGGAA05_FlextS0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AA6SpacerVAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_g5ShapeN0VyAA9RectangleVGGAA01_g9ShapeKindN0VyAA6CircleVGGSgtGGMR);
  outlined destroy of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v66, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0G0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAH019VoiceCompanionEntryG0V_0H4Core0hP20AvailabilityProviderCQo_SgACyACyAmAE11buttonStyleyQrqd__AA09PrimitivelW0Rd__lFQOyAA0L0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA011_BackgroundW8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA12_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA16_yAA4FontVSgGGA18_GG_AA05PlainlW0VQo_AA31AccessibilityAttachmentModifierVGAA01_D17ShapeKindModifierVyA23_GGtGGA4_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVy07WorkoutB028MediaConfigurationRoomButtonVSg_AA0G0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAH019VoiceCompanionEntryG0V_0H4Core0hP20AvailabilityProviderCQo_SgACyACyAmAE11buttonStyleyQrqd__AA09PrimitivelW0Rd__lFQOyAA0L0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGAA011_BackgroundW8ModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA12_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGA16_yAA4FontVSgGGA18_GG_AA05PlainlW0VQo_AA31AccessibilityAttachmentModifierVGAA01_D17ShapeKindModifierVyA23_GGtGGA4_GMR);
  outlined destroy of WorkoutReadinessCheckError?(v65, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA023AccessibilityAttachmentI0VGMR);
  return outlined destroy of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v64, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAM5ScaleOGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAOyAA5ColorVSgGGAA05_FlextS0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AA6SpacerVAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_g5ShapeN0VyAA9RectangleVGGAA01_g9ShapeKindN0VyAA6CircleVGGSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAM5ScaleOGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAOyAA5ColorVSgGGAA05_FlextS0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AA6SpacerVAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB0011StartButtonE0V_AA16PlainButtonStyleVQo_AA01_g5ShapeN0VyAA9RectangleVGGAA01_g9ShapeKindN0VyAA6CircleVGGSgtGGMR);
}

uint64_t _s9WorkoutUI0A15BrowsingViewiOSV4bodyQrvg05SwiftB04ViewPAEE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAgEE7toolbar7contentQrqd__yXE_tAE14ToolbarContentRd__lFQOyAgEE0O16TitleDisplayModeyQrAE0qstU0VFQOyAgEE013navigationBarS0yQrqd__SyRd__lFQOyAgEE5sheet11isPresented9onDismissAPQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAgEE0V11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAgEEAvwxPQrA__A0_qd__yctAeFRd__lFQOyAgEEA1_A2_A3_Qrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAE06ScrollH6ReaderVyAgEE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEE9onReceive_7performQrqd___y6OutputQyd__ct7Combine9PublisherRd__s5NeverO7FailureRtd__lFQOyAgEE17listRowBackgroundyQrqd__SgAeFRd__lFQOyAgEE16listRowSeparator_5edgesQrAE10VisibilityO_AE12VerticalEdgeO3SetVtFQOyAgEE11listPaddingyQrAE4EdgeOA27_V_12CoreGraphics7CGFloatVtFQOyAgEE14listRowSpacingyQrA35_SgFQOyAE4ListVyA16_AE05TupleH0VyAgEE2idyQrqd__SHRd__lFQOyAE05EmptyH0V_SSQo__AgAE21withZeroListRowInsetsQryFQOyAA0A13DisclaimerRowV_Qo_SgAgAEA46_QryFQOyAC025safetyCheckInRemindersTipH033_C6A1CD99A5FFEBCF0602419937A3F460LLQrvpQOyx_Qo__Qo_AE7ForEachVySay0A4Core36ManagedConfigurationSourcePickerItemCGSiAgEE17environmentObjectyQrqd__A13_16ObservableObjectRd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA020ManagedConfigurationdE0V_So21FIUIFormattingManagerCA66_A13_A62_AAyHCg0_Qo__AA28ConfigurationNavigationModelCQo__So13HKHealthStoreCA72_A13_A62_AAyHCg0_Qo__A57_0A28ConfigurationOccurrenceStoreCQo_GAE07DynamichR0PAEE8onDeleteA10_Qry10Foundation8IndexSetVcSg_tFQOyA56_ySayA57_26StandardActivityPickerItemCGSiAE08ModifiedR0VyAgEE20accessibilityElement8childrenQrAE26AccessibilityChildBehaviorV_tFQOyAgEEA19_yQrA20_AeFRd__lFQOyAgEE0P5Shape_6eoFillQrqd___SbtAE5ShapeRd__lFQOyAgEE13listRowInsetsyQrAE10EdgeInsetsVSgFQOyAgEEA42_yQrqd__SHRd__lFQOyAE6VStackVyA41_yAE6HStackVyA41_yA89_yAgEE34flipsForRightToLeftLayoutDirectionyQrSbFQOyAgEE5frame8minWidth10idealWidth8maxWidth9minHeight11idealHeight9maxHeight9alignmentQrA37__A37_A37_A37_A37_A37_AE9AlignmentVtFQOyAgEE15foregroundColoryQrAE5ColorVSgFQOyAE5GroupVyAE012_ConditionalR0VyAgEE10imageScaleyQrAE5ImageV5ScaleOFQOyAgEE4fontyQrAE4FontVSgFQOyA126__Qo__Qo_AgEE7paddingyQrA32__A37_tFQOyA126_AAE11scaledToFit4sizeQrSo6CGSizeV_tFQOy_Qo__Qo_GG_Qo__Qo__Qo_AE31AccessibilityAttachmentModifierVG_AE6SpacerVAgEEA94___A95_QrAE0R10ShapeKindsV_qd__SbtAEA96_Rd__lFQOyAgEEA94__A95_Qrqd___SbtAEA96_Rd__lFQOyAgEE11buttonStyleyQrqd__AE20PrimitiveButtonStyleRd__lFQOyAA011StartButtonH0V_AE16PlainButtonStyleVQo__AE9RectangleVQo__AE6CircleVQo_SgtGG_A89_yAgEE0M7SpacingyQrA35_FQOyAE4TextV_Qo_A148_GAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA104_yA41_yAA28MediaConfigurationRoomButtonVSg_AgEE11environmentyQrA20_Rld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_A57_0A25VoiceAvailabilityProviderCQo_SgAgEEA94___A95_QrA153__qd__SbtAEA96_Rd__lFQOyA89_yAgEEA154_yQrqd__AEA155_Rd__lFQOyAE6ButtonVyAgEEA116_yQrA119_FQOyAgEEA129_yQrA132_FQOyAgEE9clipShape_5styleQrqd___AE9FillStyleVtAEA96_Rd__lFQOyAgEEA116_yQrA119_FQOyAgEE10background_20ignoresSafeAreaEdgesQrqd___A32_tAE10ShapeStyleRd__lFQOyAgEEA135_yQrA32__A37_tFQOyAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA126__Qo__Qo__A118_Qo__Qo__AE16RoundedRectangleVQo__Qo__Qo_G_A159_Qo_A148_G_A201_Qo_tGG_Qo_tGG_SiQo__Qo__A162_Qo__AE06_ShapeH0VyA201_A118_GQo__Qo_A148_GG_Qo_A89_yAgEEA19_yQrA20_AeFRd__lFQOyA188_yA104_yA41_yA151__AgEEA193__A113_Qrqd___A115_tAeFRd__lFQOyAgEEA106_5width6heightA113_QrA37__A37_A115_tFQOyA133__Qo__A218_yA165_A118_GQo_A151_tGGG_A118_Qo_A148_GxSgtGG_Qo__Qo__Qo__A118_Qo__So20NSNotificationCenterCA81_EA14_VQo__A87_Qo__So23FIUIWorkoutActivityTypeCSgQo__SbSgQo__A249_Qo_G_A248_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA178_yQrA20_Rld__CA179_A180_Rd__lFQOyAA16ActivityTypeRoomV_A184_Qo__A66_A66_A13_A62_AAyHCg0_Qo_Qo__AA03AddA4ListVQo__A59_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA029ManagedConfigurationsUpcomingdE0V_A66_A66_A13_A62_AAyHCg0_Qo__A69_Qo__A72_A72_A13_A62_AAyHCg0_Qo__A75_Qo_Qo__AA06Manuala7LoggingH0VQo__SSQo__Qo__AE0qR7BuilderV10buildBlockyQrx_q_tAeQRzAeQR_r0_lFZQOy_A276_A277_yQrx_q_tAeQRzAeQR_r0_lFZQOy_AE0Q4ItemVyytA188_yA89_yAgEE6offsetyQrA139_FQOyA126__Qo_A148_GGGAE0Q6SpacerVQo_SgA279_yytAA20DeviceConnectionMenuVGQo_Qo__Qo_yXEfU_A253_AE06ScrollH5ProxyVcfU_A236_yXEfU_A222_A86_cfU1_A212_yXEfU_A168_yXEfU_@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a4;
  v73 = a5;
  v71 = a3;
  v67 = a1;
  v77 = a6;
  v66 = type metadata accessor for PlainButtonStyle();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &started - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartButtonView(0);
  MEMORY[0x28223BE20](started);
  v62 = &started - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOy07WorkoutB005StartiE0V_AA05PlainiG0VQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_dm4KindN0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOy07WorkoutB005StartiE0V_AA05PlainiG0VQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_dm4KindN0VyAA6CircleVGGMR);
  v75 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v63 = &started - v9;
  v70 = type metadata accessor for WorkoutReadinessChecker();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v11 = &started - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOy07WorkoutB005StartiE0V_AA05PlainiG0VQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_dm4KindN0VyAA6CircleVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOy07WorkoutB005StartiE0V_AA05PlainiG0VQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_dm4KindN0VyAA6CircleVGGSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v76 = &started - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &started - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGMR);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &started - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGMR);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &started - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGAA17_FlipForRTLEffectVGMR);
  MEMORY[0x28223BE20](v25);
  v27 = &started - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentK0VGMR);
  MEMORY[0x28223BE20](v28 - 8);
  v74 = &started - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &started - v31;
  _s9WorkoutUI0A15BrowsingViewiOSV4bodyQrvg05SwiftB04ViewPAEE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAgEE7toolbar7contentQrqd__yXE_tAE14ToolbarContentRd__lFQOyAgEE0O16TitleDisplayModeyQrAE0qstU0VFQOyAgEE013navigationBarS0yQrqd__SyRd__lFQOyAgEE5sheet11isPresented9onDismissAPQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAgEE0V11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAgEEAvwxPQrA__A0_qd__yctAeFRd__lFQOyAgEEA1_A2_A3_Qrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAE06ScrollH6ReaderVyAgEE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEE9onReceive_7performQrqd___y6OutputQyd__ct7Combine9PublisherRd__s5NeverO7FailureRtd__lFQOyAgEE17listRowBackgroundyQrqd__SgAeFRd__lFQOyAgEE16listRowSeparator_5edgesQrAE10VisibilityO_AE12VerticalEdgeO3SetVtFQOyAgEE11listPaddingyQrAE4EdgeOA27_V_12CoreGraphics7CGFloatVtFQOyAgEE14listRowSpacingyQrA35_SgFQOyAE4ListVyA16_AE05TupleH0VyAgEE2idyQrqd__SHRd__lFQOyAE05EmptyH0V_SSQo__AgAE21withZeroListRowInsetsQryFQOyAA0A13DisclaimerRowV_Qo_SgAgAEA46_QryFQOyAC025safetyCheckInRemindersTipH033_C6A1CD99A5FFEBCF0602419937A3F460LLQrvpQOyx_Qo__Qo_AE7ForEachVySay0A4Core36ManagedConfigurationSourcePickerItemCGSiAgEE17environmentObjectyQrqd__A13_16ObservableObjectRd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA020ManagedConfigurationdE0V_So21FIUIFormattingManagerCA66_A13_A62_AAyHCg0_Qo__AA28ConfigurationNavigationModelCQo__So13HKHealthStoreCA72_A13_A62_AAyHCg0_Qo__A57_0A28ConfigurationOccurrenceStoreCQo_GAE07DynamichR0PAEE8onDeleteA10_Qry10Foundation8IndexSetVcSg_tFQOyA56_ySayA57_26StandardActivityPickerItemCGSiAE08ModifiedR0VyAgEE20accessibilityElement8childrenQrAE26AccessibilityChildBehaviorV_tFQOyAgEEA19_yQrA20_AeFRd__lFQOyAgEE0P5Shape_6eoFillQrqd___SbtAE5ShapeRd__lFQOyAgEE13listRowInsetsyQrAE10EdgeInsetsVSgFQOyAgEEA42_yQrqd__SHRd__lFQOyAE6VStackVyA41_yAE6HStackVyA41_yA89_yAgEE34flipsForRightToLeftLayoutDirectionyQrSbFQOyAgEE5frame8minWidth10idealWidth8maxWidth9minHeight11idealHeight9maxHeight9alignmentQrA37__A37_A37_A37_A37_A37_AE9AlignmentVtFQOyAgEE15foregroundColoryQrAE5ColorVSgFQOyAE5GroupVyAE012_ConditionalR0VyAgEE10imageScaleyQrAE5ImageV5ScaleOFQOyAgEE4fontyQrAE4FontVSgFQOyA126__Qo__Qo_AgEE7paddingyQrA32__A37_tFQOyA126_AAE11scaledToFit4sizeQrSo6CGSizeV_tFQOy_Qo__Qo_GG_Qo__Qo__Qo_AE31AccessibilityAttachmentModifierVG_AE6SpacerVAgEEA94___A95_QrAE0R10ShapeKindsV_qd__SbtAEA96_Rd__lFQOyAgEEA94__A95_Qrqd___SbtAEA96_Rd__lFQOyAgEE11buttonStyleyQrqd__AE20PrimitiveButtonStyleRd__lFQOyAA011StartButtonH0V_AE16PlainButtonStyleVQo__AE9RectangleVQo__AE6CircleVQo_SgtGG_A89_yAgEE0M7SpacingyQrA35_FQOyAE4TextV_Qo_A148_GAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA104_yA41_yAA28MediaConfigurationRoomButtonVSg_AgEE11environmentyQrA20_Rld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_A57_0A25VoiceAvailabilityProviderCQo_SgAgEEA94___A95_QrA153__qd__SbtAEA96_Rd__lFQOyA89_yAgEEA154_yQrqd__AEA155_Rd__lFQOyAE6ButtonVyAgEEA116_yQrA119_FQOyAgEEA129_yQrA132_FQOyAgEE9clipShape_5styleQrqd___AE9FillStyleVtAEA96_Rd__lFQOyAgEEA116_yQrA119_FQOyAgEE10background_20ignoresSafeAreaEdgesQrqd___A32_tAE10ShapeStyleRd__lFQOyAgEEA135_yQrA32__A37_tFQOyAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA126__Qo__Qo__A118_Qo__Qo__AE16RoundedRectangleVQo__Qo__Qo_G_A159_Qo_A148_G_A201_Qo_tGG_Qo_tGG_SiQo__Qo__A162_Qo__AE06_ShapeH0VyA201_A118_GQo__Qo_A148_GG_Qo_A89_yAgEEA19_yQrA20_AeFRd__lFQOyA188_yA104_yA41_yA151__AgEEA193__A113_Qrqd___A115_tAeFRd__lFQOyAgEEA106_5width6heightA113_QrA37__A37_A115_tFQOyA133__Qo__A218_yA165_A118_GQo_A151_tGGG_A118_Qo_A148_GxSgtGG_Qo__Qo__Qo__A118_Qo__So20NSNotificationCenterCA81_EA14_VQo__A87_Qo__So23FIUIWorkoutActivityTypeCSgQo__SbSgQo__A249_Qo_G_A248_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA178_yQrA20_Rld__CA179_A180_Rd__lFQOyAA16ActivityTypeRoomV_A184_Qo__A66_A66_A13_A62_AAyHCg0_Qo_Qo__AA03AddA4ListVQo__A59_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA029ManagedConfigurationsUpcomingdE0V_A66_A66_A13_A62_AAyHCg0_Qo__A69_Qo__A72_A72_A13_A62_AAyHCg0_Qo__A75_Qo_Qo__AA06Manuala7LoggingH0VQo__SSQo__Qo__AE0qR7BuilderV10buildBlockyQrx_q_tAeQRzAeQR_r0_lFZQOy_A276_A277_yQrx_q_tAeQRzAeQR_r0_lFZQOy_AE0Q4ItemVyytA188_yA89_yAgEE6offsetyQrA139_FQOyA126__Qo_A148_GGGAE0Q6SpacerVQo_SgA279_yytAA20DeviceConnectionMenuVGQo_Qo__Qo_yXEfU_A253_AE06ScrollH5ProxyVcfU_A236_yXEfU_A222_A86_cfU1_A212_yXEfU_A168_yXEfU_A142_yXEfU_(v20);
  v67 = a2;
  WorkoutConfiguration.displayColor.getter();
  v33 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v35 = &v20[*(v18 + 44)];
  *v35 = KeyPath;
  v35[1] = v33;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ModifiedContent<WorkoutDisclaimerRow, ZeroListRowInsets>(v20, v24, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGMR);
  v36 = *(v22 + 44);
  v37 = v68;
  v38 = &v24[v36];
  v39 = v83;
  *(v38 + 4) = v82;
  *(v38 + 5) = v39;
  *(v38 + 6) = v84;
  v40 = v79;
  *v38 = v78;
  *(v38 + 1) = v40;
  v41 = v81;
  *(v38 + 2) = v80;
  *(v38 + 3) = v41;
  v42 = v24;
  v43 = v16;
  outlined init with take of ModifiedContent<WorkoutDisclaimerRow, ZeroListRowInsets>(v42, v27, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGMR);
  v27[*(v25 + 36)] = 1;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>();
  View.accessibilityHidden(_:)();
  outlined destroy of WorkoutReadinessCheckError?(v27, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGAA17_FlipForRTLEffectVGMR);
  v45 = type metadata accessor for WorkoutBrowsingViewiOS(0, v72, v73, v44);
  WorkoutBrowsingViewiOS.devicesProvider.getter(v45);
  WorkoutReadinessChecker.init(workoutDevicesProvider:)();
  LOBYTE(v33) = WorkoutReadinessChecker.isFitnessTrackingDisabled()();
  (*(v69 + 8))(v11, v70);
  v46 = 1;
  if ((v33 & 1) == 0)
  {
    v47 = WorkoutBrowsingViewiOS.devicesProvider.getter(v45);
    v48 = v62;
    v49 = v67;
    WorkoutConfiguration.startButtonState(with:)();

    *v48 = v49;
    v48[1] = 1;
    v50 = v49;
    v51 = v64;
    PlainButtonStyle.init()();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type StartButtonView and conformance StartButtonView, type metadata accessor for StartButtonView, &protocol conformance descriptor for StartButtonView);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v52 = v63;
    v53 = v66;
    View.buttonStyle<A>(_:)();
    (*(v65 + 8))(v51, v53);
    outlined destroy of ActivityTypeRoom(v48, type metadata accessor for StartButtonView);
    *(v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOy07WorkoutB005StartiE0V_AA05PlainiG0VQo_AA01_D13ShapeModifierVyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOy07WorkoutB005StartiE0V_AA05PlainiG0VQo_AA01_D13ShapeModifierVyAA9RectangleVGGMR) + 36)) = 0;
    v54 = (v52 + *(v37 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR);
    static ContentShapeKinds.accessibility.getter();
    *v54 = 0;
    outlined init with take of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v52, v43, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOy07WorkoutB005StartiE0V_AA05PlainiG0VQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_dm4KindN0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOy07WorkoutB005StartiE0V_AA05PlainiG0VQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_dm4KindN0VyAA6CircleVGGMR);
    v46 = 0;
  }

  (*(v75 + 56))(v43, v46, 1, v37);
  v55 = v74;
  outlined init with copy of TupleToolbarContent<(ToolbarItem<(), Button<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, AccessibilityAttachmentModifier>>>, ToolbarSpacer)>?(v32, v74, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentK0VGMR);
  v56 = v76;
  outlined init with copy of ModifiedContent<<<opaque return type of View.tipViewStyle<A>(_:)>>.0, ZeroListRowInsets>(v43, v76, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOy07WorkoutB005StartiE0V_AA05PlainiG0VQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_dm4KindN0VyAA6CircleVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOy07WorkoutB005StartiE0V_AA05PlainiG0VQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_dm4KindN0VyAA6CircleVGGSgMR);
  v57 = v77;
  outlined init with copy of TupleToolbarContent<(ToolbarItem<(), Button<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, AccessibilityAttachmentModifier>>>, ToolbarSpacer)>?(v55, v77, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentK0VGMR);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentK0VG_AA6SpacerVACyACyAA4ViewPAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB015StartButtonViewV_AA16PlainButtonStyleVQo_AA01_d5ShapeK0VyAA9RectangleVGGAA01_d9ShapeKindK0VyAA6CircleVGGSgtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentK0VG_AA6SpacerVACyACyAA4ViewPAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy07WorkoutB015StartButtonViewV_AA16PlainButtonStyleVQo_AA01_d5ShapeK0VyAA9RectangleVGGAA01_d9ShapeKindK0VyAA6CircleVGGSgtMR);
  v59 = v57 + *(v58 + 48);
  *v59 = 0;
  *(v59 + 8) = 1;
  outlined init with copy of ModifiedContent<<<opaque return type of View.tipViewStyle<A>(_:)>>.0, ZeroListRowInsets>(v56, v57 + *(v58 + 64), &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOy07WorkoutB005StartiE0V_AA05PlainiG0VQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_dm4KindN0VyAA6CircleVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOy07WorkoutB005StartiE0V_AA05PlainiG0VQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_dm4KindN0VyAA6CircleVGGSgMR);
  outlined destroy of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v43, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOy07WorkoutB005StartiE0V_AA05PlainiG0VQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_dm4KindN0VyAA6CircleVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOy07WorkoutB005StartiE0V_AA05PlainiG0VQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_dm4KindN0VyAA6CircleVGGSgMR);
  outlined destroy of WorkoutReadinessCheckError?(v32, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentK0VGMR);
  outlined destroy of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v56, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOy07WorkoutB005StartiE0V_AA05PlainiG0VQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_dm4KindN0VyAA6CircleVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOy07WorkoutB005StartiE0V_AA05PlainiG0VQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_dm4KindN0VyAA6CircleVGGSgMR);
  return outlined destroy of WorkoutReadinessCheckError?(v55, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGGAKyAA5ColorVSgGGAA05_FlexqP0VGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentK0VGMR);
}

void _s9WorkoutUI0A15BrowsingViewiOSV4bodyQrvg05SwiftB04ViewPAEE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAgEE7toolbar7contentQrqd__yXE_tAE14ToolbarContentRd__lFQOyAgEE0O16TitleDisplayModeyQrAE0qstU0VFQOyAgEE013navigationBarS0yQrqd__SyRd__lFQOyAgEE5sheet11isPresented9onDismissAPQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAgEE0V11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAgEEAvwxPQrA__A0_qd__yctAeFRd__lFQOyAgEEA1_A2_A3_Qrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAE06ScrollH6ReaderVyAgEE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEE9onReceive_7performQrqd___y6OutputQyd__ct7Combine9PublisherRd__s5NeverO7FailureRtd__lFQOyAgEE17listRowBackgroundyQrqd__SgAeFRd__lFQOyAgEE16listRowSeparator_5edgesQrAE10VisibilityO_AE12VerticalEdgeO3SetVtFQOyAgEE11listPaddingyQrAE4EdgeOA27_V_12CoreGraphics7CGFloatVtFQOyAgEE14listRowSpacingyQrA35_SgFQOyAE4ListVyA16_AE05TupleH0VyAgEE2idyQrqd__SHRd__lFQOyAE05EmptyH0V_SSQo__AgAE21withZeroListRowInsetsQryFQOyAA0A13DisclaimerRowV_Qo_SgAgAEA46_QryFQOyAC025safetyCheckInRemindersTipH033_C6A1CD99A5FFEBCF0602419937A3F460LLQrvpQOyx_Qo__Qo_AE7ForEachVySay0A4Core36ManagedConfigurationSourcePickerItemCGSiAgEE17environmentObjectyQrqd__A13_16ObservableObjectRd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA020ManagedConfigurationdE0V_So21FIUIFormattingManagerCA66_A13_A62_AAyHCg0_Qo__AA28ConfigurationNavigationModelCQo__So13HKHealthStoreCA72_A13_A62_AAyHCg0_Qo__A57_0A28ConfigurationOccurrenceStoreCQo_GAE07DynamichR0PAEE8onDeleteA10_Qry10Foundation8IndexSetVcSg_tFQOyA56_ySayA57_26StandardActivityPickerItemCGSiAE08ModifiedR0VyAgEE20accessibilityElement8childrenQrAE26AccessibilityChildBehaviorV_tFQOyAgEEA19_yQrA20_AeFRd__lFQOyAgEE0P5Shape_6eoFillQrqd___SbtAE5ShapeRd__lFQOyAgEE13listRowInsetsyQrAE10EdgeInsetsVSgFQOyAgEEA42_yQrqd__SHRd__lFQOyAE6VStackVyA41_yAE6HStackVyA41_yA89_yAgEE34flipsForRightToLeftLayoutDirectionyQrSbFQOyAgEE5frame8minWidth10idealWidth8maxWidth9minHeight11idealHeight9maxHeight9alignmentQrA37__A37_A37_A37_A37_A37_AE9AlignmentVtFQOyAgEE15foregroundColoryQrAE5ColorVSgFQOyAE5GroupVyAE012_ConditionalR0VyAgEE10imageScaleyQrAE5ImageV5ScaleOFQOyAgEE4fontyQrAE4FontVSgFQOyA126__Qo__Qo_AgEE7paddingyQrA32__A37_tFQOyA126_AAE11scaledToFit4sizeQrSo6CGSizeV_tFQOy_Qo__Qo_GG_Qo__Qo__Qo_AE31AccessibilityAttachmentModifierVG_AE6SpacerVAgEEA94___A95_QrAE0R10ShapeKindsV_qd__SbtAEA96_Rd__lFQOyAgEEA94__A95_Qrqd___SbtAEA96_Rd__lFQOyAgEE11buttonStyleyQrqd__AE20PrimitiveButtonStyleRd__lFQOyAA011StartButtonH0V_AE16PlainButtonStyleVQo__AE9RectangleVQo__AE6CircleVQo_SgtGG_A89_yAgEE0M7SpacingyQrA35_FQOyAE4TextV_Qo_A148_GAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA104_yA41_yAA28MediaConfigurationRoomButtonVSg_AgEE11environmentyQrA20_Rld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_A57_0A25VoiceAvailabilityProviderCQo_SgAgEEA94___A95_QrA153__qd__SbtAEA96_Rd__lFQOyA89_yAgEEA154_yQrqd__AEA155_Rd__lFQOyAE6ButtonVyAgEEA116_yQrA119_FQOyAgEEA129_yQrA132_FQOyAgEE9clipShape_5styleQrqd___AE9FillStyleVtAEA96_Rd__lFQOyAgEEA116_yQrA119_FQOyAgEE10background_20ignoresSafeAreaEdgesQrqd___A32_tAE10ShapeStyleRd__lFQOyAgEEA135_yQrA32__A37_tFQOyAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA126__Qo__Qo__A118_Qo__Qo__AE16RoundedRectangleVQo__Qo__Qo_G_A159_Qo_A148_G_A201_Qo_tGG_Qo_tGG_SiQo__Qo__A162_Qo__AE06_ShapeH0VyA201_A118_GQo__Qo_A148_GG_Qo_A89_yAgEEA19_yQrA20_AeFRd__lFQOyA188_yA104_yA41_yA151__AgEEA193__A113_Qrqd___A115_tAeFRd__lFQOyAgEEA106_5width6heightA113_QrA37__A37_A115_tFQOyA133__Qo__A218_yA165_A118_GQo_A151_tGGG_A118_Qo_A148_GxSgtGG_Qo__Qo__Qo__A118_Qo__So20NSNotificationCenterCA81_EA14_VQo__A87_Qo__So23FIUIWorkoutActivityTypeCSgQo__SbSgQo__A249_Qo_G_A248_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA178_yQrA20_Rld__CA179_A180_Rd__lFQOyAA16ActivityTypeRoomV_A184_Qo__A66_A66_A13_A62_AAyHCg0_Qo_Qo__AA03AddA4ListVQo__A59_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA029ManagedConfigurationsUpcomingdE0V_A66_A66_A13_A62_AAyHCg0_Qo__A69_Qo__A72_A72_A13_A62_AAyHCg0_Qo__A75_Qo_Qo__AA06Manuala7LoggingH0VQo__SSQo__Qo__AE0qR7BuilderV10buildBlockyQrx_q_tAeQRzAeQR_r0_lFZQOy_A276_A277_yQrx_q_tAeQRzAeQR_r0_lFZQOy_AE0Q4ItemVyytA188_yA89_yAgEE6offsetyQrA139_FQOyA126__Qo_A148_GGGAE0Q6SpacerVQo_SgA279_yytAA20DeviceConnectionMenuVGQo_Qo__Qo_yXEfU_A253_AE06ScrollH5ProxyVcfU_A236_yXEfU_A222_A86_cfU1_A212_yXEfU_A168_yXEfU_A142_yXEfU_(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = type metadata accessor for Image.ResizingMode();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v31[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGAGyAGyAGyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGAGyAGyAGyAiA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VG_GMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v31[-v6 - 6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v31[-v9 - 6];
  v11 = StandardActivityPickerItem.activityType.getter();
  v12 = [v11 symbolName];

  if (v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = Image.init(_internalSystemName:)();
    v14 = static Font.largeTitle.getter();
    KeyPath = swift_getKeyPath();
    v16 = (v10 + *(v8 + 36));
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
    v18 = *MEMORY[0x277CE1048];
    v19 = type metadata accessor for Image.Scale();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = swift_getKeyPath();
    *v10 = v13;
    v10[1] = KeyPath;
    v10[2] = v14;
    outlined init with copy of TupleToolbarContent<(ToolbarItem<(), Button<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, AccessibilityAttachmentModifier>>>, ToolbarSpacer)>?(v10, v7, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMR);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of WorkoutReadinessCheckError?(v10, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMR);
  }

  else
  {
    v20 = StandardActivityPickerItem.activityType.getter();
    v21 = FIUIStaticScalableWorkoutIconImageWithPadding();

    if (v21)
    {
      v22 = [v21 imageWithRenderingMode_];

      Image.init(uiImage:)();
      FIUISizeForIconSize();
      (*(v2 + 104))(v4, *MEMORY[0x277CE0FE0], v1);
      v23 = Image.resizable(capInsets:resizingMode:)();
      (*(v2 + 8))(v4, v1);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();

      v32 = 1;
      *&v31[6] = v34;
      *&v31[22] = v35;
      *&v31[38] = v36;
      v24 = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v25 = *&v31[16];
      *(v7 + 18) = *v31;
      v33 = 0;
      *v7 = v23;
      *(v7 + 1) = 0;
      *(v7 + 8) = 1;
      *(v7 + 34) = v25;
      *(v7 + 50) = *&v31[32];
      *(v7 + 8) = *&v31[46];
      v7[72] = v24;
      *(v7 + 10) = v26;
      *(v7 + 11) = v27;
      *(v7 + 12) = v28;
      *(v7 + 13) = v29;
      v7[112] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMR);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      __break(1u);
    }
  }
}

void _s9WorkoutUI0A15BrowsingViewiOSV4bodyQrvg05SwiftB04ViewPAEE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAgEE7toolbar7contentQrqd__yXE_tAE14ToolbarContentRd__lFQOyAgEE0O16TitleDisplayModeyQrAE0qstU0VFQOyAgEE013navigationBarS0yQrqd__SyRd__lFQOyAgEE5sheet11isPresented9onDismissAPQrAE7BindingVySbG_yycSgqd__yctAeFRd__lFQOyAgEE0V11Destination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAgEEAvwxPQrA__A0_qd__yctAeFRd__lFQOyAgEEA1_A2_A3_Qrqd__m_qd_0_qd__ctSHRd__AeFRd_0_r0_lFQOyAE06ScrollH6ReaderVyAgEE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEEA6_A7_A8__Qrqd___SbyyctSQRd__lFQOyAgEE9onReceive_7performQrqd___y6OutputQyd__ct7Combine9PublisherRd__s5NeverO7FailureRtd__lFQOyAgEE17listRowBackgroundyQrqd__SgAeFRd__lFQOyAgEE16listRowSeparator_5edgesQrAE10VisibilityO_AE12VerticalEdgeO3SetVtFQOyAgEE11listPaddingyQrAE4EdgeOA27_V_12CoreGraphics7CGFloatVtFQOyAgEE14listRowSpacingyQrA35_SgFQOyAE4ListVyA16_AE05TupleH0VyAgEE2idyQrqd__SHRd__lFQOyAE05EmptyH0V_SSQo__AgAE21withZeroListRowInsetsQryFQOyAA0A13DisclaimerRowV_Qo_SgAgAEA46_QryFQOyAC025safetyCheckInRemindersTipH033_C6A1CD99A5FFEBCF0602419937A3F460LLQrvpQOyx_Qo__Qo_AE7ForEachVySay0A4Core36ManagedConfigurationSourcePickerItemCGSiAgEE17environmentObjectyQrqd__A13_16ObservableObjectRd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA020ManagedConfigurationdE0V_So21FIUIFormattingManagerCA66_A13_A62_AAyHCg0_Qo__AA28ConfigurationNavigationModelCQo__So13HKHealthStoreCA72_A13_A62_AAyHCg0_Qo__A57_0A28ConfigurationOccurrenceStoreCQo_GAE07DynamichR0PAEE8onDeleteA10_Qry10Foundation8IndexSetVcSg_tFQOyA56_ySayA57_26StandardActivityPickerItemCGSiAE08ModifiedR0VyAgEE20accessibilityElement8childrenQrAE26AccessibilityChildBehaviorV_tFQOyAgEEA19_yQrA20_AeFRd__lFQOyAgEE0P5Shape_6eoFillQrqd___SbtAE5ShapeRd__lFQOyAgEE13listRowInsetsyQrAE10EdgeInsetsVSgFQOyAgEEA42_yQrqd__SHRd__lFQOyAE6VStackVyA41_yAE6HStackVyA41_yA89_yAgEE34flipsForRightToLeftLayoutDirectionyQrSbFQOyAgEE5frame8minWidth10idealWidth8maxWidth9minHeight11idealHeight9maxHeight9alignmentQrA37__A37_A37_A37_A37_A37_AE9AlignmentVtFQOyAgEE15foregroundColoryQrAE5ColorVSgFQOyAE5GroupVyAE012_ConditionalR0VyAgEE10imageScaleyQrAE5ImageV5ScaleOFQOyAgEE4fontyQrAE4FontVSgFQOyA126__Qo__Qo_AgEE7paddingyQrA32__A37_tFQOyA126_AAE11scaledToFit4sizeQrSo6CGSizeV_tFQOy_Qo__Qo_GG_Qo__Qo__Qo_AE31AccessibilityAttachmentModifierVG_AE6SpacerVAgEEA94___A95_QrAE0R10ShapeKindsV_qd__SbtAEA96_Rd__lFQOyAgEEA94__A95_Qrqd___SbtAEA96_Rd__lFQOyAgEE11buttonStyleyQrqd__AE20PrimitiveButtonStyleRd__lFQOyAA011StartButtonH0V_AE16PlainButtonStyleVQo__AE9RectangleVQo__AE6CircleVQo_SgtGG_A89_yAgEE0M7SpacingyQrA35_FQOyAE4TextV_Qo_A148_GAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA104_yA41_yAA28MediaConfigurationRoomButtonVSg_AgEE11environmentyQrA20_Rld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_A57_0A25VoiceAvailabilityProviderCQo_SgAgEEA94___A95_QrA153__qd__SbtAEA96_Rd__lFQOyA89_yAgEEA154_yQrqd__AEA155_Rd__lFQOyAE6ButtonVyAgEEA116_yQrA119_FQOyAgEEA129_yQrA132_FQOyAgEE9clipShape_5styleQrqd___AE9FillStyleVtAEA96_Rd__lFQOyAgEEA116_yQrA119_FQOyAgEE10background_20ignoresSafeAreaEdgesQrqd___A32_tAE10ShapeStyleRd__lFQOyAgEEA135_yQrA32__A37_tFQOyAgEEA106_A107_A108_A109_A110_A111_A112_A113_QrA37__A37_A37_A37_A37_A37_A115_tFQOyA126__Qo__Qo__A118_Qo__Qo__AE16RoundedRectangleVQo__Qo__Qo_G_A159_Qo_A148_G_A201_Qo_tGG_Qo_tGG_SiQo__Qo__A162_Qo__AE06_ShapeH0VyA201_A118_GQo__Qo_A148_GG_Qo_A89_yAgEEA19_yQrA20_AeFRd__lFQOyA188_yA104_yA41_yA151__AgEEA193__A113_Qrqd___A115_tAeFRd__lFQOyAgEEA106_5width6heightA113_QrA37__A37_A115_tFQOyA133__Qo__A218_yA165_A118_GQo_A151_tGGG_A118_Qo_A148_GxSgtGG_Qo__Qo__Qo__A118_Qo__So20NSNotificationCenterCA81_EA14_VQo__A87_Qo__So23FIUIWorkoutActivityTypeCSgQo__SbSgQo__A249_Qo_G_A248_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA178_yQrA20_Rld__CA179_A180_Rd__lFQOyAA16ActivityTypeRoomV_A184_Qo__A66_A66_A13_A62_AAyHCg0_Qo_Qo__AA03AddA4ListVQo__A59_AgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAgEEA61_yQrqd__A13_A62_Rd__lFQOyAA029ManagedConfigurationsUpcomingdE0V_A66_A66_A13_A62_AAyHCg0_Qo__A69_Qo__A72_A72_A13_A62_AAyHCg0_Qo__A75_Qo_Qo__AA06Manuala7LoggingH0VQo__SSQo__Qo__AE0qR7BuilderV10buildBlockyQrx_q_tAeQRzAeQR_r0_lFZQOy_A276_A277_yQrx_q_tAeQRzAeQR_r0_lFZQOy_AE0Q4ItemVyytA188_yA89_yAgEE6offsetyQrA139_FQOyA126__Qo_A148_GGGAE0Q6SpacerVQo_SgA279_yytAA20DeviceConnectionMenuVGQo_Qo__Qo_yXEfU_A253_AE06ScrollH5ProxyVcfU_A236_yXEfU_A222_A86_cfU1_A212_yXEfU_A209_yXEfU0_(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v109 = a5;
  v9 = type metadata accessor for PlainButtonStyle();
  v105 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v101 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = a3;
  v100 = a4;
  v114 = type metadata accessor for WorkoutBrowsingViewiOS(0, a3, a4, v11);
  v97 = *(v114 - 8);
  v95 = *(v97 + 64);
  MEMORY[0x28223BE20](v114);
  v96 = &v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingM0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAUyAA4FontVSgGGAWGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingM0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAUyAA4FontVSgGGAWGGMR);
  v103 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v102 = &v90 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAIyAIyAIyAIyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA011_BackgroundE8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingP0VyAUSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAYyAA4FontVSgGGA_GG_AA05PlaingE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAIyAIyAIyAIyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA011_BackgroundE8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingP0VyAUSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAYyAA4FontVSgGGA_GG_AA05PlaingE0VQo_MR);
  v111 = *(v15 - 8);
  v112 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v90 - v16;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA011_BackgroundG8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingP0VyAUSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAYyAA4FontVSgGGA_GG_AA05PlainiG0VQo_AA023AccessibilityAttachmentP0VGAA01_d9ShapeKindP0VyA4_GGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA011_BackgroundG8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingP0VyAUSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAYyAA4FontVSgGGA_GG_AA05PlainiG0VQo_AA023AccessibilityAttachmentP0VGAA01_d9ShapeKindP0VyA4_GGMR);
  MEMORY[0x28223BE20](v106);
  v107 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v92 = &v90 - v20;
  v21 = type metadata accessor for VoiceCompanionEntryView(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy07WorkoutB0019VoiceCompanionEntryC0V_0G4Core0gH20AvailabilityProviderCQo_Md, &_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy07WorkoutB0019VoiceCompanionEntryC0V_0G4Core0gH20AvailabilityProviderCQo_MR);
  v24 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v26 = &v90 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy07WorkoutB0019VoiceCompanionEntryC0V_0G4Core0gH20AvailabilityProviderCQo_SgMd, &_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy07WorkoutB0019VoiceCompanionEntryC0V_0G4Core0gH20AvailabilityProviderCQo_SgMR);
  MEMORY[0x28223BE20](v27 - 8);
  v113 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v110 = &v90 - v30;
  v31 = type metadata accessor for WorkoutFeatures();
  v120 = v31;
  v121 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures, MEMORY[0x277D7DDC8], MEMORY[0x277D7DD98]);
  v32 = __swift_allocate_boxed_opaque_existential_1(&v117);
  (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D7DDA8], v31);
  LOBYTE(v31) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v117);
  v93 = v24;
  if (v31)
  {
    v104 = StandardActivityPickerItem.activityType.getter();
    v99 = 2;
  }

  else
  {
    v104 = 0;
    v99 = 0;
  }

  v108 = v13;
  v33 = StandardActivityPickerItem.activityType.getter();
  v34 = v114;
  v35 = WorkoutBrowsingViewiOS.showVoiceCompanionEntry(for:)(v33);

  if (v35)
  {
    v90 = StandardActivityPickerItem.activityType.getter();
    v36 = *(v34 + 68);
    v37 = v21[7];
    v38 = type metadata accessor for InferenceClient();
    (*(*(v38 - 8) + 16))(&v23[v37], a2 + v36, v38);
    type metadata accessor for VoiceAssetsObserver();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type VoiceAssetsObserver and conformance VoiceAssetsObserver, MEMORY[0x277D7E340], MEMORY[0x277D7E330]);
    *v23 = Environment.init<A>(_:)();
    v23[8] = v39 & 1;
    type metadata accessor for WorkoutVoiceAvailabilityProvider();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, MEMORY[0x277D7DD08], MEMORY[0x277D7DC98]);
    *(v23 + 2) = Environment.init<A>(_:)();
    v23[24] = v40 & 1;
    v41 = &v23[v21[9]];
    v116 = 0;
    v91 = v9;
    State.init(wrappedValue:)();
    v42 = v118;
    *v41 = v117;
    *(v41 + 1) = v42;
    v43 = &v23[v21[10]];
    v116 = 0;
    State.init(wrappedValue:)();
    v44 = v118;
    *v43 = v117;
    *(v43 + 1) = v44;
    v34 = v114;
    *(v23 + 4) = v90;
    v23[v21[8]] = 0;
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type VoiceCompanionEntryView and conformance VoiceCompanionEntryView, type metadata accessor for VoiceCompanionEntryView, &protocol conformance descriptor for VoiceCompanionEntryView);
    v9 = v91;
    View.environment<A>(_:)();
    outlined destroy of ActivityTypeRoom(v23, type metadata accessor for VoiceCompanionEntryView);
    v45 = v93;
    v46 = v110;
    v47 = v94;
    (*(v93 + 32))(v110, v26, v94);
    v48 = 0;
  }

  else
  {
    v48 = 1;
    v46 = v110;
    v47 = v94;
    v45 = v93;
  }

  (*(v45 + 56))(v46, v48, 1, v47);
  v49 = v97;
  v50 = v96;
  (*(v97 + 16))(v96, a2, v34);
  v51 = v46;
  v52 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v53 = (v95 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v34;
  v56 = v54;
  v57 = v100;
  *(v54 + 16) = v98;
  *(v54 + 24) = v57;
  (*(v49 + 32))(v54 + v52, v50, v55);
  *(v56 + v53) = a1;
  v58 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGASyAA4FontVSgGGAUGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingH0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAOSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGASyAA4FontVSgGGAUGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v59 = v102;
  Button.init(action:label:)();
  v60 = v101;
  PlainButtonStyle.init()();
  v61 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingM0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAUyAA4FontVSgGGAWGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingM0VyAQSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAUyAA4FontVSgGGAWGGMR, MEMORY[0x277CDF028]);
  v62 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v63 = v17;
  v64 = v108;
  View.buttonStyle<A>(_:)();
  (*(v105 + 8))(v60, v9);
  (*(v103 + 8))(v59, v64);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v65 = WorkoutUIBundle.super.isa;
  v122._object = 0xE000000000000000;
  v66._countAndFlagsBits = 0x58415F534C414F47;
  v66._object = 0xEE00454C5449545FLL;
  v67.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v67.value._object = 0xEB00000000656C62;
  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  v122._countAndFlagsBits = 0;
  v69 = NSLocalizedString(_:tableName:bundle:value:comment:)(v66, v67, v65, v68, v122);

  v115 = v69;
  v117 = v64;
  v118 = v9;
  v119 = v61;
  v120 = v62;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  v70 = v92;
  v71 = v112;
  View.accessibilityLabel<A>(_:)();

  (*(v111 + 8))(v63, v71);
  v72 = (v70 + *(v106 + 36));
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMR);
  static ContentShapeKinds.accessibility.getter();
  v74 = *(type metadata accessor for RoundedRectangle() + 20);
  v75 = *MEMORY[0x277CE0118];
  v76 = type metadata accessor for RoundedCornerStyle();
  (*(*(v76 - 8) + 104))(&v72[v74], v75, v76);
  __asm { FMOV            V0.2D, #16.0 }

  *v72 = _Q0;
  v72[*(v73 + 36)] = 0;
  v82 = v51;
  v83 = v51;
  v84 = v113;
  outlined init with copy of ModifiedContent<<<opaque return type of View.tipViewStyle<A>(_:)>>.0, ZeroListRowInsets>(v83, v113, &_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy07WorkoutB0019VoiceCompanionEntryC0V_0G4Core0gH20AvailabilityProviderCQo_SgMd, &_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy07WorkoutB0019VoiceCompanionEntryC0V_0G4Core0gH20AvailabilityProviderCQo_SgMR);
  v85 = v107;
  outlined init with copy of ModifiedContent<<<opaque return type of View.tipViewStyle<A>(_:)>>.0, ZeroListRowInsets>(v70, v107, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA011_BackgroundG8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingP0VyAUSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAYyAA4FontVSgGGA_GG_AA05PlainiG0VQo_AA023AccessibilityAttachmentP0VGAA01_d9ShapeKindP0VyA4_GGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA011_BackgroundG8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingP0VyAUSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAYyAA4FontVSgGGA_GG_AA05PlainiG0VQo_AA023AccessibilityAttachmentP0VGAA01_d9ShapeKindP0VyA4_GGMR);
  v86 = v109;
  v87 = v104;
  *v109 = v104;
  *(v86 + 8) = v99;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI28MediaConfigurationRoomButtonVSg_05SwiftB04ViewPAEE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_0A4Core0aL20AvailabilityProviderCQo_SgAE15ModifiedContentVyATyAgEE11buttonStyleyQrqd__AE09PrimitivefU0Rd__lFQOyAE0F0VyATyATyATyATyATyATyATyAE5ImageVAE16_FlexFrameLayoutVGAE08_PaddingZ0VGAE011_BackgroundU8ModifierVyAE5ColorVGGAE30_EnvironmentKeyWritingModifierVyA8_SgGGAE11_ClipEffectVyAE16RoundedRectangleVGGA12_yAE4FontVSgGGA14_GG_AE05PlainfU0VQo_AE31AccessibilityAttachmentModifierVGAE01_S17ShapeKindModifierVyA19_GGtMd, &_s9WorkoutUI28MediaConfigurationRoomButtonVSg_05SwiftB04ViewPAEE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAA019VoiceCompanionEntryH0V_0A4Core0aL20AvailabilityProviderCQo_SgAE15ModifiedContentVyATyAgEE11buttonStyleyQrqd__AE09PrimitivefU0Rd__lFQOyAE0F0VyATyATyATyATyATyATyATyAE5ImageVAE16_FlexFrameLayoutVGAE08_PaddingZ0VGAE011_BackgroundU8ModifierVyAE5ColorVGGAE30_EnvironmentKeyWritingModifierVyA8_SgGGAE11_ClipEffectVyAE16RoundedRectangleVGGA12_yAE4FontVSgGGA14_GG_AE05PlainfU0VQo_AE31AccessibilityAttachmentModifierVGAE01_S17ShapeKindModifierVyA19_GGtMR);
  outlined init with copy of ModifiedContent<<<opaque return type of View.tipViewStyle<A>(_:)>>.0, ZeroListRowInsets>(v84, v86 + *(v88 + 48), &_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy07WorkoutB0019VoiceCompanionEntryC0V_0G4Core0gH20AvailabilityProviderCQo_SgMd, &_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy07WorkoutB0019VoiceCompanionEntryC0V_0G4Core0gH20AvailabilityProviderCQo_SgMR);
  outlined init with copy of ModifiedContent<<<opaque return type of View.tipViewStyle<A>(_:)>>.0, ZeroListRowInsets>(v85, v86 + *(v88 + 64), &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA011_BackgroundG8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingP0VyAUSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAYyAA4FontVSgGGA_GG_AA05PlainiG0VQo_AA023AccessibilityAttachmentP0VGAA01_d9ShapeKindP0VyA4_GGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA011_BackgroundG8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingP0VyAUSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAYyAA4FontVSgGGA_GG_AA05PlainiG0VQo_AA023AccessibilityAttachmentP0VGAA01_d9ShapeKindP0VyA4_GGMR);
  v89 = v87;
  outlined destroy of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v70, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA011_BackgroundG8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingP0VyAUSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAYyAA4FontVSgGGA_GG_AA05PlainiG0VQo_AA023AccessibilityAttachmentP0VGAA01_d9ShapeKindP0VyA4_GGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA011_BackgroundG8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingP0VyAUSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAYyAA4FontVSgGGA_GG_AA05PlainiG0VQo_AA023AccessibilityAttachmentP0VGAA01_d9ShapeKindP0VyA4_GGMR);
  outlined destroy of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v82, &_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy07WorkoutB0019VoiceCompanionEntryC0V_0G4Core0gH20AvailabilityProviderCQo_SgMd, &_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy07WorkoutB0019VoiceCompanionEntryC0V_0G4Core0gH20AvailabilityProviderCQo_SgMR);
  outlined destroy of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v85, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA011_BackgroundG8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingP0VyAUSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAYyAA4FontVSgGGA_GG_AA05PlainiG0VQo_AA023AccessibilityAttachmentP0VGAA01_d9ShapeKindP0VyA4_GGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyACyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA08_PaddingM0VGAA011_BackgroundG8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingP0VyAUSgGGAA11_ClipEffectVyAA16RoundedRectangleVGGAYyAA4FontVSgGGA_GG_AA05PlainiG0VQo_AA023AccessibilityAttachmentP0VGAA01_d9ShapeKindP0VyA4_GGMR);
  outlined destroy of ModifiedContent<ForEach<[StandardActivityPickerItem], Int, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _TraitWritingModifier<OnDeleteTraitKey>>(v84, &_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy07WorkoutB0019VoiceCompanionEntryC0V_0G4Core0gH20AvailabilityProviderCQo_SgMd, &_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy07WorkoutB0019VoiceCompanionEntryC0V_0G4Core0gH20AvailabilityProviderCQo_SgMR);
}