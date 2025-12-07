uint64_t outlined init with copy of TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>(uint64_t a1)
{
  type metadata accessor for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t destroy for LinearCapsuleGauge(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*(a1 + 8), *(a1 + 16));
  outlined consume of Environment<Selector?>.Content(*(a1 + 24), *(a1 + 32));
  outlined consume of Environment<(Color, Color)?>.Content(*(a1 + 56), *(a1 + 64), *(a1 + 72));
  outlined consume of Environment<AnyShapeStyle?>.Content(*(a1 + 80), *(a1 + 88));
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for LinearCapsuleGauge(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  v5 = *(a2 + 16);
  outlined copy of Environment<Selector?>.Content(v4, v5);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = *(v2 + 40);
  *(a1 + 48) = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  v10 = *(v2 + 72);
  outlined copy of Environment<(Color, Color)?>.Content(v8, v9, v10);
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  v11 = *(v2 + 80);
  LOBYTE(v9) = *(v2 + 88);
  outlined copy of Environment<Color?>.Content(v11);
  *(a1 + 80) = v11;
  *(a1 + 88) = v9;
  v12 = *(v2 + 96);
  LOBYTE(v2) = *(v2 + 104);
  outlined copy of Environment<Selector?>.Content(v12, v2);
  *(a1 + 96) = v12;
  *(a1 + 104) = v2;
  return a1;
}

uint64_t assignWithCopy for LinearCapsuleGauge(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Selector?>.Content(v4, v5);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  *(a1 + 40) = *(v2 + 40);
  *(a1 + 48) = *(v2 + 48);
  v12 = *(v2 + 56);
  v13 = *(v2 + 64);
  v14 = *(v2 + 72);
  outlined copy of Environment<(Color, Color)?>.Content(v12, v13, v14);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  outlined consume of Environment<(Color, Color)?>.Content(v15, v16, v17);
  v18 = *(v2 + 80);
  LOBYTE(v13) = *(v2 + 88);
  outlined copy of Environment<Color?>.Content(v18);
  v19 = *(a1 + 80);
  v20 = *(a1 + 88);
  *(a1 + 80) = v18;
  *(a1 + 88) = v13;
  outlined consume of Environment<AnyShapeStyle?>.Content(v19, v20);
  v21 = *(v2 + 96);
  LOBYTE(v2) = *(v2 + 104);
  outlined copy of Environment<Selector?>.Content(v21, v2);
  v22 = *(a1 + 96);
  v23 = *(a1 + 104);
  *(a1 + 96) = v21;
  *(a1 + 104) = v2;
  outlined consume of Environment<Selector?>.Content(v22, v23);
  return a1;
}

uint64_t assignWithTake for LinearCapsuleGauge(uint64_t a1, uint64_t a2)
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
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v11 = *(a2 + 72);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = v11;
  outlined consume of Environment<(Color, Color)?>.Content(v12, v13, v14);
  v15 = *(a2 + 88);
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v15;
  outlined consume of Environment<AnyShapeStyle?>.Content(v16, v17);
  v18 = *(a2 + 104);
  v19 = *(a1 + 96);
  v20 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v18;
  outlined consume of Environment<Selector?>.Content(v19, v20);
  return a1;
}

uint64_t getEnumTagSinglePayload for LinearCapsuleGauge(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 105))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LinearCapsuleGauge(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>>, AccessibilityRepresentationModifier<HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>>, AccessibilityRepresentationModifier<HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>>, AccessibilityRepresentationModifier<HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<VStack<TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>>, AccessibilityRepresentationModifier<HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>>, MEMORY[0x1E6981870]);
    v5[1] = &protocol witness table for AccessibilityRepresentationModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>>, AccessibilityRepresentationModifier<HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<VStack<TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>>, AccessibilityRepresentationModifier<HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>>, AccessibilityRepresentationModifier<HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>>>>)
  {
    type metadata accessor for VStack<TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>>(255);
    type metadata accessor for AccessibilityRepresentationModifier<HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>>, AccessibilityRepresentationModifier<HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>>>>);
    }
  }
}

void type metadata accessor for VStack<TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>>)
  {
    type metadata accessor for TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>(255, &lazy cache variable for type metadata for TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>, type metadata accessor for (GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?));
    lazy protocol witness table accessor for type TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)> and conformance TupleView<A>, &lazy cache variable for type metadata for TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>, type metadata accessor for (GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?));
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)> and conformance TupleView<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>(255, a2, a3);
    result = swift_getWitnessTable(MEMORY[0x1E6981F48], v5);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for AccessibilityRepresentationModifier<HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityRepresentationModifier<HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>>>)
  {
    type metadata accessor for HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>>, MEMORY[0x1E69817F8]);
    v6 = type metadata accessor for AccessibilityRepresentationModifier(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for AccessibilityRepresentationModifier<HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>>>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>>)
  {
    type metadata accessor for TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>(255, &lazy cache variable for type metadata for TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>, type metadata accessor for (GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?));
    lazy protocol witness table accessor for type TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)> and conformance TupleView<A>, &lazy cache variable for type metadata for TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>, type metadata accessor for (GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?));
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<TupleView<(GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)>>);
    }
  }
}

void type metadata accessor for (GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?))
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for GaugeStyleConfiguration.CurrentValueLabel?, &type metadata for GaugeStyleConfiguration.CurrentValueLabel);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?));
    }
  }
}

double partial apply for closure #1 in closure #1 in LinearCapsuleGauge.body.getter@<D0>(uint64_t a2@<X8>)
{
  GeometryProxy.size.getter();
  LinearCapsuleGauge.indicator(width:)(v6, v3);
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>>, _FrameLayout>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>> and conformance ZStack<A>, type metadata accessor for ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>>, MEMORY[0x1E6981880]);
    v5[1] = MEMORY[0x1E697E040];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>>, _FrameLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>>, _FrameLayout>)
  {
    type metadata accessor for ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>>, _FrameLayout>);
    }
  }
}

void type metadata accessor for ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>>)
  {
    type metadata accessor for TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>(255, &lazy cache variable for type metadata for TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>, type metadata accessor for (_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>));
    lazy protocol witness table accessor for type TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)> and conformance TupleView<A>, &lazy cache variable for type metadata for TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>, type metadata accessor for (_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>));
    v1 = type metadata accessor for ZStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>>);
    }
  }
}

void type metadata accessor for TupleView<(GaugeStyleConfiguration.Label, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, LinearCapsuleGauge, GaugeStyleConfiguration.MaximumValueLabel?)>>, GaugeStyleConfiguration.CurrentValueLabel?)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for TupleView();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for (_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>))
  {
    _s7SwiftUI10_ShapeViewVyAA7CapsuleVAA5ColorVGMaTm_0(255, &lazy cache variable for type metadata for _ShapeView<Capsule, Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568]);
    type metadata accessor for GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>));
    }
  }
}

void type metadata accessor for GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>(255);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>> and conformance <> ModifiedContent<A, B>();
    v1 = type metadata accessor for GeometryReader();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>)
  {
    _s7SwiftUI10_ShapeViewVyAA7CapsuleVAA5ColorVGMaTm_0(255, &lazy cache variable for type metadata for _ShapeView<Capsule, AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8]);
    type metadata accessor for _ClipEffect<OffsetShape<Capsule>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>);
    }
  }
}

void _s7SwiftUI10_ShapeViewVyAA7CapsuleVAA5ColorVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type Capsule and conformance Capsule();
    v5 = type metadata accessor for _ShapeView();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for _ClipEffect<OffsetShape<Capsule>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ClipEffect<OffsetShape<Capsule>>)
  {
    _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_0(255, &lazy cache variable for type metadata for OffsetShape<Capsule>, lazy protocol witness table accessor for type Capsule and conformance Capsule, MEMORY[0x1E69819A8], MEMORY[0x1E697DCF8]);
    lazy protocol witness table accessor for type OffsetShape<Capsule> and conformance OffsetShape<A>();
    v1 = type metadata accessor for _ClipEffect();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ClipEffect<OffsetShape<Capsule>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type OffsetShape<Capsule> and conformance OffsetShape<A>()
{
  result = lazy protocol witness table cache variable for type OffsetShape<Capsule> and conformance OffsetShape<A>;
  if (!lazy protocol witness table cache variable for type OffsetShape<Capsule> and conformance OffsetShape<A>)
  {
    _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_0(255, &lazy cache variable for type metadata for OffsetShape<Capsule>, lazy protocol witness table accessor for type Capsule and conformance Capsule, MEMORY[0x1E69819A8], MEMORY[0x1E697DCF8]);
    result = swift_getWitnessTable(MEMORY[0x1E697DD00], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OffsetShape<Capsule> and conformance OffsetShape<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ShapeView<Capsule, AnyShapeStyle> and conformance _ShapeView<A, B>();
    v5[1] = lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ClipEffect<OffsetShape<Capsule>> and conformance _ClipEffect<A>, type metadata accessor for _ClipEffect<OffsetShape<Capsule>>, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeView<Capsule, AnyShapeStyle> and conformance _ShapeView<A, B>()
{
  result = lazy protocol witness table cache variable for type _ShapeView<Capsule, AnyShapeStyle> and conformance _ShapeView<A, B>;
  if (!lazy protocol witness table cache variable for type _ShapeView<Capsule, AnyShapeStyle> and conformance _ShapeView<A, B>)
  {
    _s7SwiftUI10_ShapeViewVyAA7CapsuleVAA5ColorVGMaTm_0(255, &lazy cache variable for type metadata for _ShapeView<Capsule, AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8]);
    result = swift_getWitnessTable(MEMORY[0x1E697DB78], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeView<Capsule, AnyShapeStyle> and conformance _ShapeView<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(_ShapeView<Capsule, Color>, GeometryReader<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _ClipEffect<OffsetShape<Capsule>>>>)>> and conformance ZStack<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void AlertScene.init<>(_:isPresented:actions:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void AlertScene.init<>(_:isPresented:actions:)(uint64_t a1, uint64_t a2, char a3)
{

  outlined consume of Text.Storage(a1, a2, a3 & 1);

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void AlertScene.init<A>(_:isPresented:actions:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void AlertScene.init(_:isPresented:actions:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AlertScene.init(_:isPresented:actions:message:)(a1, a2, a3);
}

{
  AlertScene.init(_:isPresented:actions:message:)();
}

void AlertScene.init<A>(_:isPresented:presenting:actions:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void AlertScene.init<A>(_:isPresented:presenting:actions:)(uint64_t a1, uint64_t a2, char a3)
{

  outlined consume of Text.Storage(a1, a2, a3 & 1);

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void AlertScene.init<A, B>(_:isPresented:presenting:actions:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void AlertScene.init<A>(_:isPresented:presenting:actions:message:)(uint64_t a1, uint64_t a2, char a3)
{

  outlined consume of Text.Storage(a1, a2, a3 & 1);

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void AlertScene.init<A>(_:isPresented:presenting:actions:message:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void AlertScene.init<A, B>(_:isPresented:presenting:actions:message:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void AlertScene.init(_:isPresented:actions:message:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void AlertScene.init(_:isPresented:actions:message:)(uint64_t a1, uint64_t a2, char a3)
{

  outlined consume of Text.Storage(a1, a2, a3 & 1);

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void AlertScene.init<A>(_:isPresented:actions:message:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t type metadata completion function for AlertScene(uint64_t a1)
{
  v5 = &unk_18CDBBEC0;
  v6 = &unk_18CDBBED8;
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for AlertScene.DialogContent(319, v4);
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AlertScene(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v4 - 8);
  v7 = *(v6 + 80);
  v8 = *(v5 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 80) | v7;
  v12 = (*(v8 + 80) | v7);
  v13 = *(v6 + 84);
  v14 = *(v6 + 64) + v10;
  v15 = v14 & ~v10;
  v16 = *(v8 + 64);
  if (v9 | v13)
  {
    v17 = v15 + v16;
  }

  else
  {
    v17 = v15 + v16 + 1;
  }

  v18 = *a2;
  *a1 = *a2;
  if (v12 > 7 || (v11 & 0x100000) != 0 || ((-57 - v12) | v12) - v17 < 0xFFFFFFFFFFFFFFE7)
  {
    a1 = v18 + ((v12 & 0xF8 ^ 0x1F8) & (v12 + 16));

    return a1;
  }

  v38 = v14;
  v39 = v15 + v16;
  v40 = v8;
  v41 = v4;
  v42 = v5;
  __n = v17;
  v37 = ~v10;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v21 = a1 & 0xFFFFFFFFFFFFFFF8;
  v22 = a2 & 0xFFFFFFFFFFFFFFF8;
  v23 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  v24 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
  v25 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);

  outlined copy of Text.Storage(v23, v24, v25);
  *(v21 + 24) = v23;
  *(v21 + 32) = v24;
  *(v21 + 40) = v25;
  *(v21 + 48) = *(v22 + 48);
  v26 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 56);
  v27 = (v22 + 56);

  if (!(v9 | v13))
  {
    v31 = v39;
    v30 = v40;
    v29 = v41;
    v28 = v42;
    if (!*(v27 + v39))
    {
      goto LABEL_34;
    }

    v32 = (*(v27 + v39) - 1) << (8 * v39);
    if (v39 > 3)
    {
      v32 = 0;
    }

    if (v39)
    {
      v33 = v39 <= 3 ? v39 : 4;
      if (v33 > 2)
      {
        v34 = v33 == 3 ? *v27 | (*(v27 + 2) << 16) : *v27;
      }

      else
      {
        v34 = v33 == 1 ? *v27 : *v27;
      }
    }

    else
    {
      v34 = 0;
    }

    if ((v34 | v32) == 0xFFFFFFFF)
    {
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  v29 = v41;
  v28 = v42;
  v31 = v39;
  v30 = v40;
  if (v13 >= v9)
  {
    if (!(*(v6 + 48))(v27, v13, v41))
    {
      goto LABEL_34;
    }

LABEL_27:
    memcpy(v26, v27, __n);
    return a1;
  }

  if ((*(v40 + 48))((v27 + v38) & v37, v9, v42))
  {
    goto LABEL_27;
  }

LABEL_34:
  (*(v6 + 16))(v26, v27, v29);
  (*(v30 + 16))((v26 + v38) & v37, (v27 + v38) & v37, v28);
  if (!(v9 | v13))
  {
    *(v26 + v31) = 0;
  }

  return a1;
}

uint64_t destroy for AlertScene(uint64_t a1, uint64_t a2)
{

  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Text.Storage(*((a1 & 0xFFFFFFFFFFFFFFF8) + 24), *((a1 & 0xFFFFFFFFFFFFFFF8) + 32), *((a1 & 0xFFFFFFFFFFFFFFF8) + 40));

  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80) | *(v7 + 80);
  v11 = *(v8 + 80);
  v12 = ((v4 + v10 + 56) & ~v10);
  v13 = *(v7 + 84);
  v14 = ~v11;
  v15 = *(v7 + 64) + v11;
  v21 = v8;
  if (v9 | v13)
  {
    if (v13 >= v9)
    {
      result = (*(v7 + 48))(v12, v13, v5);
    }

    else
    {
      result = (*(v8 + 48))((v12 + v15) & v14, v9, v6);
    }

    if (result)
    {
      return result;
    }

LABEL_21:
    (*(v7 + 8))(v12, v5);
    v20 = *(v21 + 8);

    return v20((v12 + v15) & v14, v6);
  }

  v17 = (v15 & ~v11) + *(*(v6 - 8) + 64);
  if (!*(v12 + v17))
  {
    goto LABEL_21;
  }

  v18 = (*(v12 + v17) - 1) << (8 * v17);
  if (v17 > 3)
  {
    v18 = 0;
  }

  if (v17)
  {
    if (v17 > 3)
    {
      LODWORD(v17) = 4;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        LODWORD(v17) = *v12 | (*(v12 + 2) << 16);
      }

      else
      {
        LODWORD(v17) = *v12;
      }
    }

    else if (v17 == 1)
    {
      LODWORD(v17) = *v12;
    }

    else
    {
      LODWORD(v17) = *v12;
    }
  }

  v19 = v17 | v18;
  result = (v19 + 1);
  if (v19 == -1)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t initializeWithCopy for AlertScene(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = a1 & 0xFFFFFFFFFFFFFFF8;
  v7 = a2 & 0xFFFFFFFFFFFFFFF8;
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  v9 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
  v10 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);

  outlined copy of Text.Storage(v8, v9, v10);
  *(v6 + 24) = v8;
  *(v6 + 32) = v9;
  *(v6 + 40) = v10;
  *(v6 + 48) = *(v7 + 48);
  v29 = *(a3 + 24);
  v30 = *(a3 + 16);
  v11 = *(v30 - 8);
  v12 = *(v29 - 8);
  v13 = *(v12 + 84);
  v14 = *(v12 + 80);
  v15 = *(v12 + 80) | *(v11 + 80);
  v16 = ((v15 + 56 + v6) & ~v15);
  v17 = ((v15 + 56 + v7) & ~v15);
  v18 = *(v11 + 84);
  v19 = *(v11 + 64);
  v28 = ~v14;
  v20 = v19 + v14;
  v21 = ((v19 + v14) & ~v14) + *(v12 + 64);
  v22 = v13 | v18;

  if (v13 | v18)
  {
    if (v18 >= v13)
    {
      if (!(*(v11 + 48))(v17, v18, v30))
      {
        goto LABEL_26;
      }
    }

    else if (!(*(v12 + 48))((v17 + v20) & v28, v13, v29))
    {
LABEL_26:
      (*(v11 + 16))(v16, v17, v30);
      (*(v12 + 16))(&v16[v20] & v28, (v17 + v20) & v28, v29);
      if (!v22)
      {
        v16[v21] = 0;
      }

      return a1;
    }
  }

  else
  {
    if (!*(v17 + v21))
    {
      goto LABEL_26;
    }

    v23 = (*(v17 + v21) - 1) << (8 * v21);
    if (v21 > 3)
    {
      v23 = 0;
    }

    if (v21)
    {
      v24 = v21 <= 3 ? v21 : 4;
      if (v24 > 2)
      {
        v25 = v24 == 3 ? *v17 | (*(v17 + 2) << 16) : *v17;
      }

      else
      {
        v25 = v24 == 1 ? *v17 : *v17;
      }
    }

    else
    {
      v25 = 0;
    }

    if ((v25 | v23) == 0xFFFFFFFF)
    {
      goto LABEL_26;
    }
  }

  if (v22)
  {
    v26 = v21;
  }

  else
  {
    v26 = v21 + 1;
  }

  memcpy(v16, v17, v26);
  return a1;
}

uint64_t assignWithCopy for AlertScene(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = a1 & 0xFFFFFFFFFFFFFFF8;
  v7 = a2 & 0xFFFFFFFFFFFFFFF8;
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  v9 = *(v7 + 32);
  v10 = *(v7 + 40);
  outlined copy of Text.Storage(v8, v9, v10);
  v11 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  v12 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 32);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 40);
  *(v6 + 24) = v8;
  *(v6 + 32) = v9;
  *(v6 + 40) = v10;
  outlined consume of Text.Storage(v11, v12, v13);
  *(v6 + 48) = *(v7 + 48);

  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v57 = *(a3 + 24);
  v16 = *(v57 - 8);
  v17 = *(v16 + 84);
  v18 = *(v16 + 80);
  v19 = *(v16 + 80) | *(v15 + 80);
  v20 = v19 + 56 + (a1 & 0xFFFFFFFFFFFFFFF8);
  v21 = (v20 & ~v19);
  v22 = v19 + 56 + v7;
  v23 = (v22 & ~v19);
  v24 = *(v15 + 84);
  v25 = *(v15 + 64);
  v56 = ~v18;
  v26 = v25 + v18;
  v27 = ((v25 + v18) & ~v18) + *(v16 + 64);
  v28 = v17 | v24;
  v54 = v15;
  v55 = v14;
  v53 = v25 + v18;
  if (!(v17 | v24))
  {
    v33 = 8 * v27;
    if (*(v21 + v27))
    {
      v34 = (*(v21 + v27) - 1) << v33;
      if (v27 > 3)
      {
        v34 = 0;
      }

      if (v27)
      {
        v35 = v27 <= 3 ? v27 : 4;
        if (v35 > 2)
        {
          v36 = v35 == 3 ? *(v20 & ~v19) | (*((v20 & ~v19) + 2) << 16) : *v21;
        }

        else
        {
          v36 = v35 == 1 ? *v21 : *v21;
        }
      }

      else
      {
        v36 = 0;
      }

      if ((v36 | v34) != 0xFFFFFFFF)
      {
        if (!*(v23 + v27))
        {
          goto LABEL_63;
        }

        v42 = (*(v23 + v27) - 1) << v33;
        if (v27 > 3)
        {
          v42 = 0;
        }

        if (v27)
        {
          v43 = v27 <= 3 ? v27 : 4;
          if (v43 > 2)
          {
            v44 = v43 == 3 ? *(v22 & ~v19) | (*((v22 & ~v19) + 2) << 16) : *v23;
          }

          else
          {
            v44 = v43 == 1 ? *v23 : *v23;
          }
        }

        else
        {
          v44 = 0;
        }

        if ((v44 | v42) == 0xFFFFFFFF)
        {
          goto LABEL_63;
        }

        goto LABEL_55;
      }
    }

    if (!*(v23 + v27))
    {
LABEL_59:
      (*(v15 + 24))(v21, v23);
      (*(v16 + 24))((v21 + v26) & v56, (v23 + v26) & v56, v57);
      return a1;
    }

    v45 = (*(v23 + v27) - 1) << v33;
    if (v27 > 3)
    {
      v45 = 0;
    }

    if (v27)
    {
      if (v27 <= 3)
      {
        v46 = v27;
      }

      else
      {
        v46 = 4;
      }

      if (v46 > 2)
      {
        if (v46 == 3)
        {
          v47 = *(v22 & ~v19) | (*((v22 & ~v19) + 2) << 16);
        }

        else
        {
          v47 = *v23;
        }
      }

      else if (v46 == 1)
      {
        v47 = *v23;
      }

      else
      {
        v47 = *v23;
      }
    }

    else
    {
      v47 = 0;
    }

    v32 = (v47 | v45) + 1;
    goto LABEL_53;
  }

  v52 = v17 | v24;
  v29 = (v22 & ~v19);
  if (v24 < v17)
  {
    v30 = v21 + v26;
    __dst = (v20 & ~v19);
    v31 = *(v16 + 48);
    v50 = v31(v30 & v56, v17, v57);
    v23 = v29;
    v32 = v31((v29 + v26) & v56, v17, v57);
    v21 = __dst;
    if (v50)
    {
      goto LABEL_4;
    }

    goto LABEL_53;
  }

  v37 = (v20 & ~v19);
  v38 = *(v15 + 48);
  v39 = v14;
  v40 = v38(v37, v24);
  v41 = v39;
  v23 = v29;
  v32 = (v38)(v29, v24, v41);
  v21 = v37;
  v28 = v52;
  if (!v40)
  {
LABEL_53:
    v15 = v54;
    v26 = v53;
    if (v32)
    {
      (*(v54 + 8))(v21, v55);
      (*(v16 + 8))((v21 + v53) & v56, v57);
      goto LABEL_55;
    }

    goto LABEL_59;
  }

LABEL_4:
  if (!v32)
  {
LABEL_63:
    (*(v54 + 16))(v21, v23, v55);
    (*(v16 + 16))((v21 + v53) & v56, (v23 + v53) & v56, v57);
    if (!v28)
    {
      *(v21 + v27) = 0;
    }

    return a1;
  }

LABEL_55:
  if (v28)
  {
    v48 = v27;
  }

  else
  {
    v48 = v27 + 1;
  }

  memcpy(v21, v23, v48);
  return a1;
}

uint64_t initializeWithTake for AlertScene(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = a2 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v4 + 40) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
  *(v4 + 24) = v6;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = *(v7 - 8);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  v13 = *(v10 + 80) | *(v9 + 80);
  v14 = ((v13 + 56 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v13);
  v15 = ((v13 + 56 + v5) & ~v13);
  v16 = *(v9 + 84);
  v17 = ~v12;
  v18 = *(v9 + 64) + v12;
  v19 = v18 & ~v12;
  v20 = *(v10 + 64);
  v21 = v19 + v20;
  v22 = v11 | v16;
  if (v11 | v16)
  {
    v23 = v11 | v16;
    v24 = v19 + v20;
    if (v16 >= v11)
    {
      v25 = *(v9 + 48);
      v26 = (v13 + 56 + v5) & ~v13;
      v11 = *(v9 + 84);
      v27 = *(a3 + 16);
    }

    else
    {
      v25 = *(v10 + 48);
      v26 = (v15 + v18) & v17;
      v27 = *(a3 + 24);
    }

    v31 = ~v12;
    v32 = v8;
    v33 = v7;
    v34 = v25(v26, v11, v27);
    v7 = v33;
    v8 = v32;
    v17 = v31;
    v21 = v24;
    v22 = v23;
    v3 = a1;
    if (v34)
    {
LABEL_16:
      if (v22)
      {
        v35 = v21;
      }

      else
      {
        v35 = v21 + 1;
      }

      memcpy(v14, v15, v35);
      return v3;
    }
  }

  else if (*(v15 + v21))
  {
    v28 = (*(v15 + v21) - 1) << (8 * v21);
    if (v21 > 3)
    {
      v28 = 0;
    }

    if (v21)
    {
      v29 = v21 <= 3 ? v19 + v20 : 4;
      if (v29 > 2)
      {
        v30 = v29 == 3 ? *v15 | (*(((v13 + 56 + v5) & ~v13) + 2) << 16) : *v15;
      }

      else
      {
        v30 = v29 == 1 ? *v15 : *v15;
      }
    }

    else
    {
      v30 = 0;
    }

    if ((v30 | v28) != 0xFFFFFFFF)
    {
      goto LABEL_16;
    }
  }

  (*(v9 + 32))(v14, v15, v7);
  (*(v10 + 32))((v14 + v18) & v17, (v15 + v18) & v17, v8);
  if (!v22)
  {
    *(v14 + v21) = 0;
  }

  return v3;
}

uint64_t assignWithTake for AlertScene(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = a1 & 0xFFFFFFFFFFFFFFF8;
  v7 = a2 & 0xFFFFFFFFFFFFFFF8;
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
  v9 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  v10 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 32);
  v11 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 40);
  *(v6 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v6 + 40) = v8;
  outlined consume of Text.Storage(v9, v10, v11);
  *(v6 + 48) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);

  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  v53 = *(a3 + 24);
  v14 = *(v53 - 8);
  v15 = *(v14 + 84);
  v16 = *(v14 + 80);
  v17 = *(v14 + 80) | *(v13 + 80);
  v18 = v17 + 56 + (a1 & 0xFFFFFFFFFFFFFFF8);
  v19 = (v18 & ~v17);
  v20 = v17 + 56 + v7;
  v21 = (v20 & ~v17);
  v22 = *(v13 + 84);
  v23 = *(v13 + 64);
  v52 = ~v16;
  v24 = v23 + v16;
  v25 = ((v23 + v16) & ~v16) + *(v14 + 64);
  v26 = v15 | v22;
  v50 = v13;
  v51 = v12;
  v49 = v23 + v16;
  if (!(v15 | v22))
  {
    v30 = 8 * v25;
    if (*(v19 + v25))
    {
      v31 = (*(v19 + v25) - 1) << v30;
      if (v25 > 3)
      {
        v31 = 0;
      }

      if (v25)
      {
        v32 = v25 <= 3 ? v25 : 4;
        if (v32 > 2)
        {
          v33 = v32 == 3 ? *(v18 & ~v17) | (*((v18 & ~v17) + 2) << 16) : *v19;
        }

        else
        {
          v33 = v32 == 1 ? *v19 : *v19;
        }
      }

      else
      {
        v33 = 0;
      }

      if ((v33 | v31) != 0xFFFFFFFF)
      {
        if (!*(v21 + v25))
        {
          goto LABEL_63;
        }

        v39 = (*(v21 + v25) - 1) << v30;
        if (v25 > 3)
        {
          v39 = 0;
        }

        if (v25)
        {
          v40 = v25 <= 3 ? v25 : 4;
          if (v40 > 2)
          {
            v41 = v40 == 3 ? *(v20 & ~v17) | (*((v20 & ~v17) + 2) << 16) : *v21;
          }

          else
          {
            v41 = v40 == 1 ? *v21 : *v21;
          }
        }

        else
        {
          v41 = 0;
        }

        if ((v41 | v39) == 0xFFFFFFFF)
        {
          goto LABEL_63;
        }

        goto LABEL_55;
      }
    }

    if (!*(v21 + v25))
    {
LABEL_59:
      (*(v13 + 40))(v19, v21);
      (*(v14 + 40))((v19 + v24) & v52, (v21 + v24) & v52, v53);
      return a1;
    }

    v42 = (*(v21 + v25) - 1) << v30;
    if (v25 > 3)
    {
      v42 = 0;
    }

    if (v25)
    {
      if (v25 <= 3)
      {
        v43 = v25;
      }

      else
      {
        v43 = 4;
      }

      if (v43 > 2)
      {
        if (v43 == 3)
        {
          v44 = *(v20 & ~v17) | (*((v20 & ~v17) + 2) << 16);
        }

        else
        {
          v44 = *v21;
        }
      }

      else if (v43 == 1)
      {
        v44 = *v21;
      }

      else
      {
        v44 = *v21;
      }
    }

    else
    {
      v44 = 0;
    }

    v29 = (v44 | v42) + 1;
    goto LABEL_53;
  }

  v27 = (v20 & ~v17);
  if (v22 < v15)
  {
    __dst = (v18 & ~v17);
    v28 = *(v14 + 48);
    v47 = v28((v19 + v24) & v52, v15, v53);
    v21 = v27;
    v29 = v28((v27 + v24) & v52, v15, v53);
    v19 = __dst;
    v26 = v15 | v22;
    if (v47)
    {
      goto LABEL_4;
    }

    goto LABEL_53;
  }

  v34 = (v18 & ~v17);
  v35 = *(v13 + 48);
  v36 = v12;
  v37 = v35(v34, v22);
  v38 = v36;
  v21 = v27;
  v29 = (v35)(v27, v22, v38);
  v19 = v34;
  if (!v37)
  {
LABEL_53:
    v13 = v50;
    v24 = v49;
    if (v29)
    {
      (*(v50 + 8))(v19, v51);
      (*(v14 + 8))((v19 + v49) & v52, v53);
      goto LABEL_55;
    }

    goto LABEL_59;
  }

LABEL_4:
  if (!v29)
  {
LABEL_63:
    (*(v50 + 32))(v19, v21, v51);
    (*(v14 + 32))((v19 + v49) & v52, (v21 + v49) & v52, v53);
    if (!v26)
    {
      *(v19 + v25) = 0;
    }

    return a1;
  }

LABEL_55:
  if (v26)
  {
    v45 = v25;
  }

  else
  {
    v45 = v25 + 1;
  }

  memcpy(v19, v21, v45);
  return a1;
}

uint64_t getEnumTagSinglePayload for AlertScene(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  if (v10)
  {
    v13 = *(v7 + 64);
  }

  else
  {
    v13 = *(v7 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v7 + 80);
  v15 = *(v7 + 80) | *(v4 + 80);
  v16 = *(*(*(a3 + 16) - 8) + 64) + v14;
  v17 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_36;
  }

  v18 = v13 + (v16 & ~v14) + ((v15 + 56) & ~v15);
  v19 = 8 * v18;
  if (v18 > 3)
  {
    goto LABEL_16;
  }

  v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
  if (HIWORD(v21))
  {
    v20 = *(a1 + v18);
    if (v20)
    {
      goto LABEL_23;
    }

LABEL_36:
    if ((v11 & 0x80000000) == 0)
    {
      v25 = *(a1 + 8);
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }

    if (v10)
    {
      v27 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v15 + 56) & ~v15;
      if (v5 >= v9)
      {
        v30 = (*(v4 + 48))(v27);
        v29 = v30 != 0;
        result = (v30 - 1);
        if (result != 0 && v29)
        {
          return result;
        }
      }

      else
      {
        v28 = (*(v8 + 48))((v16 + v27) & ~v14, v9, v6);
        v29 = v28 != 0;
        result = (v28 - 1);
        if (result != 0 && v29)
        {
          return result;
        }
      }
    }

    return 0;
  }

  if (v21 > 0xFF)
  {
    v20 = *(a1 + v18);
    if (*(a1 + v18))
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

  if (v21 < 2)
  {
    goto LABEL_36;
  }

LABEL_16:
  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_36;
  }

LABEL_23:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = v18;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v12 + (v24 | v22) + 1;
}

void storeEnumTagSinglePayload for AlertScene(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 84);
  v13 = *(v10 + 64);
  if (v12 <= v8)
  {
    v14 = *(v7 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v10 + 80) | *(v7 + 80);
  v18 = *(*(*(a4 + 16) - 8) + 64) + *(v10 + 80);
  v19 = (v18 & ~*(v10 + 80)) + v13;
  if (v14)
  {
    v20 = (v18 & ~*(v10 + 80)) + v13;
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = v20 + ((v17 + 56) & ~v17);
  v22 = a3 >= v16;
  v23 = a3 - v16;
  if (v23 == 0 || !v22)
  {
LABEL_27:
    if (v16 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if (v21 > 3)
  {
    v6 = 1;
    if (v16 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v24 = ((v23 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
  if (!HIWORD(v24))
  {
    if (v24 < 0x100)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    if (v24 >= 2)
    {
      v6 = v25;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_27;
  }

  v6 = 4;
  if (v16 < a2)
  {
LABEL_28:
    v26 = ~v16 + a2;
    if (v21 >= 4)
    {
      bzero(a1, v21);
      *a1 = v26;
      v27 = 1;
      if (v6 > 1)
      {
        goto LABEL_30;
      }

      goto LABEL_67;
    }

    v27 = (v26 >> (8 * v21)) + 1;
    if (v21)
    {
      v28 = v26 & ~(-1 << (8 * v21));
      bzero(a1, v21);
      if (v21 != 3)
      {
        if (v21 == 2)
        {
          *a1 = v28;
          if (v6 > 1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          *a1 = v26;
          if (v6 > 1)
          {
LABEL_30:
            if (v6 == 2)
            {
              *(a1 + v21) = v27;
            }

            else
            {
              *(a1 + v21) = v27;
            }

            return;
          }
        }

LABEL_67:
        if (v6)
        {
          *(a1 + v21) = v27;
        }

        return;
      }

      *a1 = v28;
      *(a1 + 2) = BYTE2(v28);
    }

    if (v6 > 1)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_16:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *(a1 + v21) = 0;
  }

  else if (v6)
  {
    *(a1 + v21) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if ((v15 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(a1 + 16) = 0;
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 8) = 0;
    }

    else
    {
      *(a1 + 8) = a2 - 1;
    }

    return;
  }

  v29 = (((a1 & 0xFFFFFFFFFFFFFFF8) + v17 + 56) & ~v17);
  if (v15 >= a2)
  {
    if (a2 >= v14)
    {
      if (v19 <= 3)
      {
        v35 = ~(-1 << (8 * v19));
      }

      else
      {
        v35 = -1;
      }

      if (v19)
      {
        v31 = v35 & (a2 - v14);
        if (v19 <= 3)
        {
          v32 = v19;
        }

        else
        {
          v32 = 4;
        }

        bzero(v29, v19);
        if (v32 <= 2)
        {
          if (v32 == 1)
          {
            goto LABEL_58;
          }

          goto LABEL_81;
        }

LABEL_82:
        if (v32 == 3)
        {
          *v29 = v31;
          v29[2] = BYTE2(v31);
        }

        else
        {
          *v29 = v31;
        }
      }
    }

    else if (v8 >= v12)
    {
      v36 = *(v7 + 56);
      v37 = a2 + 1;

      v36(v29, v37);
    }

    else
    {
      v33 = *(v10 + 56);
      v34 = a2 + 1;

      v33(&v29[v18] & ~v11, v34, v12, v9);
    }
  }

  else
  {
    if (v20 <= 3)
    {
      v30 = ~(-1 << (8 * v20));
    }

    else
    {
      v30 = -1;
    }

    if (v20)
    {
      v31 = v30 & (~v15 + a2);
      if (v20 <= 3)
      {
        v32 = v20;
      }

      else
      {
        v32 = 4;
      }

      bzero(v29, v20);
      if (v32 <= 2)
      {
        if (v32 == 1)
        {
LABEL_58:
          *v29 = v31;
          return;
        }

LABEL_81:
        *v29 = v31;
        return;
      }

      goto LABEL_82;
    }
  }
}

uint64_t type metadata completion function for AlertDialog(uint64_t a1)
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

uint64_t initializeBufferWithCopyOfBuffer for AlertDialog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v4 - 8);
  v9 = *(v8 + 80);
  v10 = v7 + v9;
  v11 = ((((-57 - v6) | v6) - (v7 + v9)) | v9) - *(v8 + 64);
  if ((v9 | v6) <= 7 && ((*(v8 + 80) | *(v5 + 80)) & 0x100000) == 0 && v11 >= 0xFFFFFFFFFFFFFFE7)
  {
    v24 = *(a3 + 24);
    v25 = *(v24 - 8);
    v15 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v15;
    *(a1 + 16) = *(a2 + 16);
    v16 = a1 & 0xFFFFFFFFFFFFFFF8;
    v17 = a2 & 0xFFFFFFFFFFFFFFF8;
    v18 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
    v19 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
    v20 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
    v26 = v4;

    outlined copy of Text.Storage(v18, v19, v20);
    *(v16 + 24) = v18;
    *(v16 + 32) = v19;
    *(v16 + 40) = v20;
    *(v16 + 48) = *(v17 + 48);
    v21 = (a1 & 0xFFFFFFFFFFFFFFF8) + 56;
    v22 = *(v25 + 16);

    v22(v21, v17 + 56, v24);
    (*(v8 + 16))((v10 + v21) & ~v9, (v10 + v17 + 56) & ~v9, v26);
  }

  else
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = v14 + (((v9 | v6) & 0xF8 ^ 0x1F8) & ((v9 | v6) + 16));
  }

  return a1;
}

uint64_t destroy for AlertDialog(uint64_t a1, uint64_t a2)
{

  a1 &= 0xFFFFFFFFFFFFFFF8;
  outlined consume of Text.Storage(*(a1 + 24), *(a1 + 32), *(a1 + 40));

  v4 = *(*(a2 + 24) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 56) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = *(*(a2 + 16) - 8);
  v8 = *(v7 + 8);
  v9 = (v6 + *(v5 + 56) + *(v7 + 80)) & ~*(v7 + 80);

  return v8(v9);
}

uint64_t initializeWithCopy for AlertDialog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = a1 & 0xFFFFFFFFFFFFFFF8;
  v7 = a2 & 0xFFFFFFFFFFFFFFF8;
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  v9 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
  v10 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);

  outlined copy of Text.Storage(v8, v9, v10);
  *(v6 + 24) = v8;
  *(v6 + 32) = v9;
  *(v6 + 40) = v10;
  *(v6 + 48) = *(v7 + 48);
  v11 = *(a3 + 24);
  v12 = *(*(v11 - 8) + 16);
  v13 = *(v11 - 8) + 16;
  v14 = *(*(v11 - 8) + 80);
  v15 = (v14 + 56 + v6) & ~v14;
  v16 = (v14 + 56 + v7) & ~v14;

  v12(v15, v16, v11);
  v17 = *(*(a3 + 16) - 8);
  (*(v17 + 16))((*(v13 + 48) + *(v17 + 80) + v15) & ~*(v17 + 80), (*(v13 + 48) + *(v17 + 80) + v16) & ~*(v17 + 80));
  return a1;
}

uint64_t assignWithCopy for AlertDialog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = a1 & 0xFFFFFFFFFFFFFFF8;
  v7 = a2 & 0xFFFFFFFFFFFFFFF8;
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  v9 = *(v7 + 32);
  v10 = *(v7 + 40);
  outlined copy of Text.Storage(v8, v9, v10);
  v11 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  v12 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 32);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 40);
  *(v6 + 24) = v8;
  *(v6 + 32) = v9;
  *(v6 + 40) = v10;
  outlined consume of Text.Storage(v11, v12, v13);
  *(v6 + 48) = *(v7 + 48);

  v14 = *(*(a3 + 24) - 8);
  v15 = v14 + 24;
  v16 = *(v14 + 80);
  v17 = (v16 + 56 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v16;
  v18 = (v16 + 56 + v7) & ~v16;
  (*(v14 + 24))(v17, v18);
  v19 = *(*(a3 + 16) - 8);
  (*(v19 + 24))((*(v15 + 40) + *(v19 + 80) + v17) & ~*(v19 + 80), (*(v15 + 40) + *(v19 + 80) + v18) & ~*(v19 + 80));
  return a1;
}

uint64_t initializeWithTake for AlertDialog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v5 + 40) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
  *(v5 + 24) = v6;
  v7 = *(*(a3 + 24) - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = (v9 + 56 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v9;
  v11 = (v9 + 56 + (a2 & 0xFFFFFFFFFFFFFFF8)) & ~v9;
  (*(v7 + 32))(v10, v11);
  v12 = *(*(a3 + 16) - 8);
  (*(v12 + 32))((*(v8 + 32) + *(v12 + 80) + v10) & ~*(v12 + 80), (*(v8 + 32) + *(v12 + 80) + v11) & ~*(v12 + 80));
  return a1;
}

uint64_t assignWithTake for AlertDialog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = a1 & 0xFFFFFFFFFFFFFFF8;
  v7 = a2 & 0xFFFFFFFFFFFFFFF8;
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
  v9 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  v10 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 32);
  v11 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 40);
  *(v6 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v6 + 40) = v8;
  outlined consume of Text.Storage(v9, v10, v11);
  *(v6 + 48) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);

  v12 = *(*(a3 + 24) - 8);
  v13 = v12 + 40;
  v14 = *(v12 + 80);
  v15 = (v14 + 56 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v14;
  v16 = (v14 + 56 + v7) & ~v14;
  (*(v12 + 40))(v15, v16);
  v17 = *(*(a3 + 16) - 8);
  (*(v17 + 40))((*(v13 + 24) + *(v17 + 80) + v15) & ~*(v17 + 80), (*(v13 + 24) + *(v17 + 80) + v16) & ~*(v17 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for AlertDialog(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 56) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v12 & 0x80000000) != 0)
      {
        v24 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v9 + 56) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *(a1 + 8);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void storeEnumTagSinglePayload for AlertDialog(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(a4 + 16);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 56) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v15) = v20;
              }

              else
              {
                *(a1 + v15) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v15) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v15) = 0;
  }

  else if (v18)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v13 & 0x80000000) != 0)
  {
    v24 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v10 + 56) & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 16) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = a2 - 1;
  }
}

uint64_t type metadata completion function for AlertScene.DialogContent(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      swift_initEnumMetadataSinglePayload();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AlertScene.DialogContent(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v4 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v5 + 64) + v9;
  v11 = v10 & ~v9;
  v12 = *(v7 + 64);
  v13 = v11 + v12;
  v14 = v8 | v6;
  if (v8 | v6)
  {
    v15 = v11 + v12;
  }

  else
  {
    v15 = v13 + 1;
  }

  v16 = (*(v5 + 80) | v9);
  if (v16 > 7 || ((*(v5 + 80) | v9) & 0x100000) != 0 || v15 > 0x18)
  {
    v19 = *a2;
    *a1 = *a2;
    a1 = (v19 + ((v16 + 16) & ~v16));

    return a1;
  }

  v20 = ~v9;
  if (!v14)
  {
    if (*(a2 + v13))
    {
      v24 = (*(a2 + v13) - 1) << (8 * v13);
      if (v13 > 3)
      {
        v24 = 0;
      }

      if (v13)
      {
        v25 = v13 <= 3 ? v13 : 4;
        if (v25 > 2)
        {
          v26 = v25 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
        }

        else
        {
          v26 = v25 == 1 ? *a2 : *a2;
        }
      }

      else
      {
        v26 = 0;
      }

      if ((v26 | v24) != 0xFFFFFFFF)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_37;
  }

  v29 = ~v9;
  if (v6 >= v8)
  {
    v22 = a2;
    v23 = (*(v5 + 48))(a2, v6, *(a3 + 16));
  }

  else
  {
    v21 = (a2 + v10) & v20;
    v22 = a2;
    v23 = (*(v7 + 48))(v21, v8, v4);
  }

  a2 = v22;
  v20 = v29;
  if (!v23)
  {
LABEL_37:
    v28 = a2;
    (*(v5 + 16))(a1);
    (*(v7 + 16))((a1 + v10) & v20, (v28 + v10) & v20, v4);
    if (!v14)
    {
      *(a1 + v13) = 0;
    }

    return a1;
  }

LABEL_28:

  return memcpy(a1, a2, v15);
}

uint64_t destroy for AlertScene.DialogContent(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = ~v10;
  v12 = *(v5 + 64) + v10;
  v18 = v8;
  if (v9 | v6)
  {
    if (v6 >= v9)
    {
      result = (*(v5 + 48))(a1);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = (*(v8 + 48))((a1 + v12) & v11, v9, v7);
      if (result)
      {
        return result;
      }
    }

    goto LABEL_21;
  }

  v14 = (v12 & ~v10) + *(v8 + 64);
  if (!*(a1 + v14))
  {
    goto LABEL_21;
  }

  v15 = (*(a1 + v14) - 1) << (8 * v14);
  if (v14 > 3)
  {
    v15 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  v16 = v14 | v15;
  result = (v16 + 1);
  if (v16 == -1)
  {
LABEL_21:
    (*(v5 + 8))(a1, v4);
    v17 = *(v18 + 8);

    return v17((a1 + v12) & v11, v7);
  }

  return result;
}

_BYTE *initializeWithCopy for AlertScene.DialogContent(_BYTE *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v7 + 84);
  v9 = *(v6 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = ~v11;
  v13 = *(v7 + 64) + v11;
  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = v10 | v8;
  if (v10 | v8)
  {
    if (v8 >= v10)
    {
      if (!(*(v7 + 48))(a2))
      {
LABEL_28:
        (*(v7 + 16))(a1, a2, v5);
        (*(v9 + 16))(&a1[v13] & v12, (a2 + v13) & v12, v6);
        if (!v15)
        {
          a1[v14] = 0;
        }

        return a1;
      }
    }

    else if (!(*(v9 + 48))((a2 + v13) & v12, v10, v6))
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (!*(a2 + v14))
    {
      goto LABEL_28;
    }

    v16 = (*(a2 + v14) - 1) << (8 * v14);
    if (v14 > 3)
    {
      v16 = 0;
    }

    if (v14)
    {
      v17 = v14 <= 3 ? (v13 & ~v11) + *(v9 + 64) : 4;
      if (v17 > 2)
      {
        v18 = v17 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v18 = v17 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v18 = 0;
    }

    if ((v18 | v16) == 0xFFFFFFFF)
    {
      goto LABEL_28;
    }
  }

  if (v15)
  {
    v19 = v14;
  }

  else
  {
    v19 = v14 + 1;
  }

  return memcpy(a1, a2, v19);
}

unsigned __int16 *assignWithCopy for AlertScene.DialogContent(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v36 = *(a3 + 24);
  v8 = *(v36 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = ~v10;
  v35 = *(v6 + 64) + v10;
  v12 = v35 & ~v10;
  v13 = *(v8 + 64);
  v14 = v12 + v13;
  v15 = v9 | v7;
  if (!(v9 | v7))
  {
    v18 = 8 * v14;
    if (*(a1 + v14))
    {
      v19 = (*(a1 + v14) - 1) << v18;
      if (v14 > 3)
      {
        v19 = 0;
      }

      if (v14)
      {
        v20 = v14 <= 3 ? v14 : 4;
        if (v20 > 2)
        {
          v21 = v20 == 3 ? *a1 | (*(a1 + 2) << 16) : *a1;
        }

        else
        {
          v21 = v20 == 1 ? *a1 : *a1;
        }
      }

      else
      {
        v21 = 0;
      }

      if ((v21 | v19) != 0xFFFFFFFF)
      {
        if (!*(a2 + v14))
        {
          goto LABEL_65;
        }

        v24 = (*(a2 + v14) - 1) << v18;
        if (v14 > 3)
        {
          v24 = 0;
        }

        if (v14)
        {
          v25 = v14 <= 3 ? v14 : 4;
          if (v25 > 2)
          {
            v26 = v25 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
          }

          else
          {
            v26 = v25 == 1 ? *a2 : *a2;
          }
        }

        else
        {
          v26 = 0;
        }

        if ((v26 | v24) == 0xFFFFFFFF)
        {
          goto LABEL_65;
        }

        goto LABEL_55;
      }
    }

    if (!*(a2 + v14))
    {
      goto LABEL_61;
    }

    v27 = (*(a2 + v14) - 1) << v18;
    if (v14 > 3)
    {
      v27 = 0;
    }

    if (v14)
    {
      v28 = v14 <= 3 ? v14 : 4;
      if (v28 > 2)
      {
        v29 = v28 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v29 = v28 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v29 = 0;
    }

    if ((v29 | v27) == 0xFFFFFFFF)
    {
LABEL_61:
      (*(v6 + 24))(a1, a2, v5);
      (*(v8 + 24))((a1 + v35) & v11, (a2 + v35) & v11, v36);
      return a1;
    }

LABEL_54:
    (*(v6 + 8))(a1, v5);
    (*(v8 + 8))((a1 + v35) & v11, v36);
    goto LABEL_55;
  }

  v33 = v9 | v7;
  v34 = v12 + v13;
  if (v7 < v9)
  {
    v16 = *(v8 + 48);
    v32 = v16((a1 + v35) & v11, v9, v36);
    v17 = v16((a2 + v35) & v11, v9, v36);
    v14 = v34;
    v15 = v9 | v7;
    if (v32)
    {
      goto LABEL_4;
    }

LABEL_17:
    if (!v17)
    {
      goto LABEL_61;
    }

    goto LABEL_54;
  }

  v22 = *(v6 + 48);
  v23 = v22(a1, v7, v5);
  v17 = v22(a2, v7, v5);
  v14 = v34;
  v15 = v33;
  if (!v23)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (!v17)
  {
LABEL_65:
    (*(v6 + 16))(a1, a2, v5);
    (*(v8 + 16))((a1 + v35) & v11, (a2 + v35) & v11, v36);
    if (!v15)
    {
      *(a1 + v14) = 0;
    }

    return a1;
  }

LABEL_55:
  if (v15)
  {
    v30 = v14;
  }

  else
  {
    v30 = v14 + 1;
  }

  return memcpy(a1, a2, v30);
}

_BYTE *initializeWithTake for AlertScene.DialogContent(_BYTE *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v7 + 84);
  v9 = *(v6 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = ~v11;
  v13 = *(v7 + 64) + v11;
  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = v10 | v8;
  if (v10 | v8)
  {
    if (v8 >= v10)
    {
      if (!(*(v7 + 48))(a2))
      {
LABEL_28:
        (*(v7 + 32))(a1, a2, v5);
        (*(v9 + 32))(&a1[v13] & v12, (a2 + v13) & v12, v6);
        if (!v15)
        {
          a1[v14] = 0;
        }

        return a1;
      }
    }

    else if (!(*(v9 + 48))((a2 + v13) & v12, v10, v6))
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (!*(a2 + v14))
    {
      goto LABEL_28;
    }

    v16 = (*(a2 + v14) - 1) << (8 * v14);
    if (v14 > 3)
    {
      v16 = 0;
    }

    if (v14)
    {
      v17 = v14 <= 3 ? (v13 & ~v11) + *(v9 + 64) : 4;
      if (v17 > 2)
      {
        v18 = v17 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v18 = v17 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v18 = 0;
    }

    if ((v18 | v16) == 0xFFFFFFFF)
    {
      goto LABEL_28;
    }
  }

  if (v15)
  {
    v19 = v14;
  }

  else
  {
    v19 = v14 + 1;
  }

  return memcpy(a1, a2, v19);
}

unsigned __int16 *assignWithTake for AlertScene.DialogContent(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v36 = *(a3 + 24);
  v8 = *(v36 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = ~v10;
  v35 = *(v6 + 64) + v10;
  v12 = v35 & ~v10;
  v13 = *(v8 + 64);
  v14 = v12 + v13;
  v15 = v9 | v7;
  if (!(v9 | v7))
  {
    v18 = 8 * v14;
    if (*(a1 + v14))
    {
      v19 = (*(a1 + v14) - 1) << v18;
      if (v14 > 3)
      {
        v19 = 0;
      }

      if (v14)
      {
        v20 = v14 <= 3 ? v14 : 4;
        if (v20 > 2)
        {
          v21 = v20 == 3 ? *a1 | (*(a1 + 2) << 16) : *a1;
        }

        else
        {
          v21 = v20 == 1 ? *a1 : *a1;
        }
      }

      else
      {
        v21 = 0;
      }

      if ((v21 | v19) != 0xFFFFFFFF)
      {
        if (!*(a2 + v14))
        {
          goto LABEL_65;
        }

        v24 = (*(a2 + v14) - 1) << v18;
        if (v14 > 3)
        {
          v24 = 0;
        }

        if (v14)
        {
          v25 = v14 <= 3 ? v14 : 4;
          if (v25 > 2)
          {
            v26 = v25 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
          }

          else
          {
            v26 = v25 == 1 ? *a2 : *a2;
          }
        }

        else
        {
          v26 = 0;
        }

        if ((v26 | v24) == 0xFFFFFFFF)
        {
          goto LABEL_65;
        }

        goto LABEL_55;
      }
    }

    if (!*(a2 + v14))
    {
      goto LABEL_61;
    }

    v27 = (*(a2 + v14) - 1) << v18;
    if (v14 > 3)
    {
      v27 = 0;
    }

    if (v14)
    {
      v28 = v14 <= 3 ? v14 : 4;
      if (v28 > 2)
      {
        v29 = v28 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v29 = v28 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v29 = 0;
    }

    if ((v29 | v27) == 0xFFFFFFFF)
    {
LABEL_61:
      (*(v6 + 40))(a1, a2, v5);
      (*(v8 + 40))((a1 + v35) & v11, (a2 + v35) & v11, v36);
      return a1;
    }

LABEL_54:
    (*(v6 + 8))(a1, v5);
    (*(v8 + 8))((a1 + v35) & v11, v36);
    goto LABEL_55;
  }

  v33 = v9 | v7;
  v34 = v12 + v13;
  if (v7 < v9)
  {
    v16 = *(v8 + 48);
    v32 = v16((a1 + v35) & v11, v9, v36);
    v17 = v16((a2 + v35) & v11, v9, v36);
    v14 = v34;
    v15 = v9 | v7;
    if (v32)
    {
      goto LABEL_4;
    }

LABEL_17:
    if (!v17)
    {
      goto LABEL_61;
    }

    goto LABEL_54;
  }

  v22 = *(v6 + 48);
  v23 = v22(a1, v7, v5);
  v17 = v22(a2, v7, v5);
  v14 = v34;
  v15 = v33;
  if (!v23)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (!v17)
  {
LABEL_65:
    (*(v6 + 32))(a1, a2, v5);
    (*(v8 + 32))((a1 + v35) & v11, (a2 + v35) & v11, v36);
    if (!v15)
    {
      *(a1 + v14) = 0;
    }

    return a1;
  }

LABEL_55:
  if (v15)
  {
    v30 = v14;
  }

  else
  {
    v30 = v14 + 1;
  }

  return memcpy(a1, a2, v30);
}

uint64_t getEnumTagSinglePayload for AlertScene.DialogContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = *(v7 + 80);
  if (v10)
  {
    v13 = *(*(v6 - 8) + 64);
  }

  else
  {
    v13 = *(*(v6 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(*(a3 + 16) - 8) + 64) + v12;
  v15 = a2 - v11;
  if (a2 > v11)
  {
    v16 = v13 + (v14 & ~v12);
    v17 = 8 * v16;
    if (v16 > 3)
    {
      goto LABEL_12;
    }

    v19 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (v18)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v19 <= 0xFF)
      {
        if (v19 < 2)
        {
          goto LABEL_32;
        }

LABEL_12:
        v18 = *(a1 + v16);
        if (!*(a1 + v16))
        {
          goto LABEL_32;
        }

LABEL_19:
        v20 = (v18 - 1) << v17;
        if (v16 > 3)
        {
          v20 = 0;
        }

        if (v16)
        {
          if (v16 <= 3)
          {
            v21 = v16;
          }

          else
          {
            v21 = 4;
          }

          if (v21 > 2)
          {
            if (v21 == 3)
            {
              v22 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v22 = *a1;
            }
          }

          else if (v21 == 1)
          {
            v22 = *a1;
          }

          else
          {
            v22 = *a1;
          }
        }

        else
        {
          v22 = 0;
        }

        return v11 + (v22 | v20) + 1;
      }

      v18 = *(a1 + v16);
      if (*(a1 + v16))
      {
        goto LABEL_19;
      }
    }
  }

LABEL_32:
  if (v10 < 2)
  {
    return 0;
  }

  if (v5 >= v9)
  {
    v24 = (*(v4 + 48))(a1, v5);
  }

  else
  {
    v24 = (*(v8 + 48))((a1 + v14) & ~v12, v9, v6);
  }

  if (v24 >= 2)
  {
    return v24 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for AlertScene.DialogContent(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v7 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v8)
  {
    v14 = *(v7 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = v12 + v13;
  v17 = ((v12 + v13) & ~v13) + *(*(v9 - 8) + 64);
  if (v14)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  v19 = a3 >= v15;
  v20 = a3 - v15;
  if (v20 == 0 || !v19)
  {
    goto LABEL_22;
  }

  if (v18 > 3)
  {
    v6 = 1;
    if (v15 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v21 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
  if (!HIWORD(v21))
  {
    if (v21 < 0x100)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    if (v21 >= 2)
    {
      v6 = v22;
    }

    else
    {
      v6 = 0;
    }

LABEL_22:
    if (v15 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v6 = 4;
  if (v15 < a2)
  {
LABEL_23:
    v23 = ~v15 + a2;
    if (v18 < 4)
    {
      v24 = (v23 >> (8 * v18)) + 1;
      if (v18)
      {
        v25 = v23 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v25;
            if (v6 > 1)
            {
LABEL_65:
              if (v6 == 2)
              {
                *&a1[v18] = v24;
              }

              else
              {
                *&a1[v18] = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v6 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *a1 = v25;
        a1[2] = BYTE2(v25);
      }

      if (v6 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v23;
      v24 = 1;
      if (v6 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v6)
    {
      a1[v18] = v24;
    }

    return;
  }

LABEL_32:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v18] = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v6)
  {
    goto LABEL_38;
  }

  a1[v18] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v14 >= 2)
  {
    if (a2 >= v14)
    {
      if (v17 <= 3)
      {
        v28 = ~(-1 << (8 * v17));
      }

      else
      {
        v28 = -1;
      }

      if (v17)
      {
        v29 = v28 & (a2 - v14);
        if (v17 <= 3)
        {
          v30 = v17;
        }

        else
        {
          v30 = 4;
        }

        bzero(a1, v17);
        if (v30 > 2)
        {
          if (v30 == 3)
          {
            *a1 = v29;
            a1[2] = BYTE2(v29);
          }

          else
          {
            *a1 = v29;
          }
        }

        else if (v30 == 1)
        {
          *a1 = v29;
        }

        else
        {
          *a1 = v29;
        }
      }
    }

    else if (v8 >= v11)
    {
      v31 = *(v7 + 56);
      v32 = a2 + 1;

      v31(a1, v32);
    }

    else
    {
      v26 = *(v10 + 56);
      v27 = a2 + 1;

      v26(&a1[v16] & ~v13, v27, v11, v9);
    }
  }
}

uint64_t getEnumTag for AlertScene.DialogContent(unsigned __int16 *a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8);
  v4 = v3;
  v5 = *(v3 + 84);
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v3 + 64);
  v10 = *(v7 + 80);
  v11 = v9 + v10;
  if (v8 | v5)
  {
    if (v5 >= v8)
    {
      return (*(v4 + 48))(a1);
    }

    else
    {
      return (*(v7 + 48))((a1 + v11) & ~v10, v8, v6);
    }
  }

  else
  {
    v13 = (v11 & ~v10) + *(*(v6 - 8) + 64);
    if (*(a1 + v13))
    {
      v14 = (*(a1 + v13) - 1) << (8 * v13);
      if (v13 > 3)
      {
        v14 = 0;
      }

      if (v13)
      {
        if (v13 > 3)
        {
          LODWORD(v13) = 4;
        }

        if (v13 > 2)
        {
          if (v13 == 3)
          {
            LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v13) = *a1;
          }
        }

        else if (v13 == 1)
        {
          LODWORD(v13) = *a1;
        }

        else
        {
          LODWORD(v13) = *a1;
        }
      }

      return (v13 | v14) + 1;
    }

    else
    {
      return 0;
    }
  }
}

unsigned int *destructiveInjectEnumTag for AlertScene.DialogContent(unsigned int *result, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  v13 = ((v9 + v10) & ~v10) + v11;
  if (v12 >= a2)
  {
    if (v12)
    {
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      *(result + v13) = 0;
      if (!a2)
      {
        return result;
      }
    }

    if (v6 >= v8)
    {
      v20 = *(v5 + 56);

      return v20(result);
    }

    else
    {
      v18 = *(v7 + 56);
      v19 = (result + v9 + v10) & ~v10;

      return v18(v19);
    }
  }

  v14 = ~v12 + a2;
  if (v13 >= 4)
  {
    v15 = result;
    bzero(result, ((v9 + v10) & ~v10) + v11);
    result = v15;
    *v15 = v14;
    LOBYTE(v15) = 1;
    if (v12)
    {
      return result;
    }

    goto LABEL_26;
  }

  LODWORD(v15) = (v14 >> (8 * v13)) + 1;
  if (!v13)
  {
LABEL_25:
    if (v12)
    {
      return result;
    }

    goto LABEL_26;
  }

  v16 = v14 & ~(-1 << (8 * v13));
  v17 = result;
  bzero(result, ((v9 + v10) & ~v10) + v11);
  result = v17;
  if (v13 == 3)
  {
    *v17 = v16;
    *(v17 + 2) = BYTE2(v16);
    goto LABEL_25;
  }

  if (v13 == 2)
  {
    *v17 = v16;
    if (v12)
    {
      return result;
    }

    goto LABEL_26;
  }

  *v17 = v14;
  if (!v12)
  {
LABEL_26:
    *(result + v13) = v15;
  }

  return result;
}

double destroy for DialogConfiguration(uint64_t a1)
{

  outlined consume of Text.Storage(*(a1 + 24), *(a1 + 32), *(a1 + 40));

  return result;
}

uint64_t initializeWithCopy for DialogConfiguration(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = a2[3];
  v6 = a2[4];
  v7 = *(a2 + 40);

  outlined copy of Text.Storage(v5, v6, v7);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = a2[6];
  v9 = a2[7];
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;

  return a1;
}

uint64_t assignWithCopy for DialogConfiguration(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  *(a1 + 16) = *(a2 + 16);
  v4 = a2[3];
  v5 = a2[4];
  v6 = *(a2 + 40);
  outlined copy of Text.Storage(v4, v5, v6);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 48) = a2[6];

  *(a1 + 56) = a2[7];

  return a1;
}

uint64_t assignWithTake for DialogConfiguration(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v4;
  outlined consume of Text.Storage(v5, v6, v7);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for DialogConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for DialogConfiguration(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void AlertDialog.init(_:isPresented:message:actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AlertScene.init(_:isPresented:actions:message:)(a1, a2, a3, a4, a5, a6, a7);
}

{
  AlertScene.init(_:isPresented:actions:message:)(a1, a2, a3, a4, a5, a6, a7);
}

void static EffectiveLabelStyle.titleAndIcon.getter(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = swift_getKeyPath();
  outlined consume of Environment<CGFloat?>.Content(KeyPath, 0, 0);
  outlined consume of Environment<CGFloat?>.Content(v3, 0, 0);
  outlined consume of Environment<CGFloat?>.Content(v4, 0, 0);
  *a1 = &type metadata for TitleAndIconLabelStyle;
}

void EnvironmentValues.effectiveLabelStyle.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EffectiveLabelStyleKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EffectiveLabelStyleKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

double EnvironmentValues.effectiveLabelStyle.setter(uint64_t *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EffectiveLabelStyleKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t (*EnvironmentValues.effectiveLabelStyle.modify(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v3[2] = v1;
  v3[3] = *v1;
  v4 = v1[1];
  v3[4] = v4;
  type metadata accessor for EnvironmentPropertyKey<EffectiveLabelStyleKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>();
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.effectiveLabelStyle.modify;
}

void EnvironmentValues.effectiveLabelStyle.modify(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[4];
  (*a1)[1] = **a1;
  type metadata accessor for EnvironmentPropertyKey<EffectiveLabelStyleKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  free(v1);
}

void type metadata accessor for EnvironmentPropertyKey<EffectiveLabelStyleKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveLabelStyleKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveLabelStyleKey>);
    }
  }
}

uint64_t EnvironmentValues.listLabelIconStyle.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle>, &type metadata for EnvironmentValues.__Key_listLabelIconStyle, &protocol witness table for EnvironmentValues.__Key_listLabelIconStyle, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle>, &type metadata for EnvironmentValues.__Key_listLabelIconStyle, &protocol witness table for EnvironmentValues.__Key_listLabelIconStyle, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t ListLabelStyle.SimpleImplementation.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[5];
  v22 = v2[4];
  v23[0] = v4;
  *(v23 + 9) = *(v2 + 89);
  v5 = v2[1];
  v18 = *v2;
  v19 = v5;
  v6 = v2[3];
  v20 = v2[2];
  v21 = v6;
  v7 = static VerticalAlignment.firstTextLineCenter.getter();
  v8 = specialized Environment.wrappedValue.getter(v19, BYTE8(v19) | (BYTE9(v19) << 8));
  if (v9 & 1) != 0 && (v8 = specialized Environment.wrappedValue.getter(v20, BYTE8(v20) | (BYTE9(v20) << 8)), (v10))
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    if (static Solarium.isEnabled(for:)())
    {
      v11 = 0x4028000000000000;
    }

    else
    {
      v11 = 0x4024000000000000;
    }
  }

  else
  {
    v11 = v8;
  }

  v12 = swift_allocObject();
  v13 = v23[0];
  v12[5] = v22;
  v12[6] = v13;
  *(v12 + 105) = *(v23 + 9);
  v14 = v19;
  v12[1] = v18;
  v12[2] = v14;
  v15 = v21;
  v12[3] = v20;
  v12[4] = v15;
  *a2 = v7;
  *(a2 + 8) = v11;
  *(a2 + 16) = 0;
  *(a2 + 24) = partial apply for closure #1 in closure #1 in ListLabelStyle.SimpleImplementation.body.getter;
  *(a2 + 32) = v12;
  return outlined init with copy of ListLabelStyle.SimpleImplementation(&v18, v17);
}

double closure #1 in closure #1 in ListLabelStyle.SimpleImplementation.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v22 = *a1;
  BYTE8(v22) = *(a1 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for CountViewsProxy<LabelStyleConfiguration.Icon>, &type metadata for LabelStyleConfiguration.Icon, &protocol witness table for LabelStyleConfiguration.Icon, MEMORY[0x1E697E678]);
  v5 = CountViewsProxy.count.getter();
  v6 = specialized Environment.wrappedValue.getter(*a2, *(a2 + 8)) & (v5 != 0);
  if (!v5)
  {
    v21 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v8 = 0;
    v20 = 1;
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v21 = static VerticalAlignment.center.getter();
  specialized Environment.wrappedValue.getter(*(a2 + 48), *(a2 + 56) | (*(a2 + 57) << 8));
  if (v7)
  {
    v22 = *(a2 + 64);
    *v23 = *(a2 + 80);
    *&v23[9] = *(a2 + 89);
    type metadata accessor for ScaledMetric<CGFloat>(0);
    ScaledMetric.wrappedValue.getter();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v20 = 0;
  LOBYTE(v22) = 1;
  v19 = v25;
  v18 = v26;
  v17 = v27;
  v16 = v28;
  v15 = v29;
  v14 = v30;
  v8 = 1;
  if (v6)
  {
LABEL_7:
    specialized Environment.wrappedValue.getter(*(a2 + 48), *(a2 + 56) | (*(a2 + 57) << 8));
    if (v9)
    {
      v22 = *(a2 + 64);
      *v23 = *(a2 + 80);
      *&v23[9] = *(a2 + 89);
      type metadata accessor for ScaledMetric<CGFloat>(0);
      ScaledMetric.wrappedValue.getter();
    }

    specialized Environment.wrappedValue.getter(*(a2 + 16), *(a2 + 24) | (*(a2 + 25) << 8));
    if (v10)
    {
      specialized Environment.wrappedValue.getter(*(a2 + 32), *(a2 + 40) | (*(a2 + 41) << 8));
      if (v11)
      {
        static _GraphInputs.defaultInterfaceIdiom.getter();
        static Solarium.isEnabled(for:)();
      }
    }
  }

LABEL_12:
  View.bodyHeadOutdent(_:)();
  type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>(0);
  MEMORY[0x1EEE9AC00](v12);
  type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>(0);
  type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>);
  lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type HStack<CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>>> and conformance HStack<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, MEMORY[0x1E6980688]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B>(_:then:)();

  *a3 = v21;
  *(a3 + 8) = 0;
  *(a3 + 16) = v8;
  *(a3 + 24) = v19;
  *(a3 + 32) = v18;
  *(a3 + 40) = v17;
  *(a3 + 48) = v16;
  *(a3 + 56) = v15;
  *(a3 + 64) = v14;
  *(a3 + 72) = v20;
  *(a3 + 80) = v22;
  *(a3 + 96) = *v23;
  result = *&v23[8];
  *(a3 + 104) = *&v23[8];
  *(a3 + 120) = *&v23[24];
  *(a3 + 128) = v24;
  return result;
}

void closure #2 in closure #1 in closure #1 in ListLabelStyle.SimpleImplementation.body.getter(uint64_t *a1@<X0>, _OWORD *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = static HorizontalAlignment.listRowSeparatorLeading.getter();
  v10 = swift_allocObject();
  v11 = a2[5];
  *(v10 + 80) = a2[4];
  *(v10 + 96) = v11;
  *(v10 + 105) = *(a2 + 89);
  v12 = a2[1];
  *(v10 + 16) = *a2;
  *(v10 + 32) = v12;
  v13 = a2[3];
  *(v10 + 48) = a2[2];
  *(v10 + 64) = v13;
  *(v10 + 121) = a3;
  *a4 = v7;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = partial apply for closure #1 in closure #2 in closure #1 in closure #1 in ListLabelStyle.SimpleImplementation.body.getter;
  a4[4] = v10;
  outlined init with copy of ListLabelStyle.SimpleImplementation(a2, &v14);
}

double closure #1 in closure #2 in closure #1 in closure #1 in ListLabelStyle.SimpleImplementation.body.getter(uint64_t *a1, uint64_t a2, char a3)
{
  *&v5 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(a2 + 48), *(a2 + 56) | (*(a2 + 57) << 8)));
  if (v6)
  {
    type metadata accessor for ScaledMetric<CGFloat>(0);
    ScaledMetric.wrappedValue.getter();
    v7 = v16;
  }

  else
  {
    v7 = *&v5;
  }

  *&v8 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(a2 + 16), *(a2 + 24) | (*(a2 + 25) << 8)));
  if (v9 & 1) != 0 && (*&v8 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(a2 + 32), *(a2 + 40) | (*(a2 + 41) << 8))), (v10))
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    if (static Solarium.isEnabled(for:)())
    {
      v11 = 12.0;
    }

    else
    {
      v11 = 10.0;
    }
  }

  else
  {
    v11 = *&v8;
  }

  v12 = static HorizontalAlignment.leadingText.getter();
  MEMORY[0x18D004E80](v12);
  v14 = v7 + v11;
  if ((a3 & 1) == 0)
  {
    v14 = 0.0;
  }

  return v13 - v14;
}

void *key path getter for EnvironmentValues.isAccessibilityLayout : EnvironmentValues@<X0>(_BYTE *a2@<X8>)
{
  lazy protocol witness table accessor for type AccessibilityLayoutKey and conformance AccessibilityLayoutKey();
  result = EnvironmentValues.subscript.getter();
  *a2 = v4;
  return result;
}

uint64_t EnvironmentValues.listLabelVerticalTitlePadding.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>, &unk_1EFFDB4B0, &protocol witness table for EnvironmentValues.__Key_listLabelVerticalTitlePadding, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>, &unk_1EFFDB4B0, &protocol witness table for EnvironmentValues.__Key_listLabelVerticalTitlePadding, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ListLabelIconModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

__n128 protocol witness for Rule.value.getter in conformance ListLabelStack.Child@<Q0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 24);
  *a1 = *Value;
  *(a1 + 8) = *(Value + 8);
  *(a1 + 24) = v4;
  result = *(v1 + 8);
  *(a1 + 32) = result;
  return result;
}

void key path getter for EnvironmentValues.listLabelVerticalTitlePadding : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>, &unk_1EFFDB4B0, &protocol witness table for EnvironmentValues.__Key_listLabelVerticalTitlePadding, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>, &unk_1EFFDB4B0, &protocol witness table for EnvironmentValues.__Key_listLabelVerticalTitlePadding, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
}

double key path setter for EnvironmentValues.listLabelVerticalTitlePadding : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>, &unk_1EFFDB4B0, &protocol witness table for EnvironmentValues.__Key_listLabelVerticalTitlePadding, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double EnvironmentValues.listLabelVerticalTitlePadding.setter(uint64_t a1, char a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>, &unk_1EFFDB4B0, &protocol witness table for EnvironmentValues.__Key_listLabelVerticalTitlePadding, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t (*EnvironmentValues.listLabelVerticalTitlePadding.modify(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v3[5] = *v1;
  v5 = v1[1];
  v3[6] = v5;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>, &unk_1EFFDB4B0, &protocol witness table for EnvironmentValues.__Key_listLabelVerticalTitlePadding, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v6 = *(v4 + 24);
  *v4 = v4[2];
  *(v4 + 8) = v6;
  return EnvironmentValues.listLabelVerticalTitlePadding.modify;
}

void EnvironmentValues.listLabelVerticalTitlePadding.modify(void **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = (*a1)[6];
  (*a1)[2] = **a1;
  v1[24] = v2;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>, &unk_1EFFDB4B0, &protocol witness table for EnvironmentValues.__Key_listLabelVerticalTitlePadding, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  free(v1);
}

uint64_t *assignWithCopy for ListLabelConfiguration(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t assignWithCopy for ListLabelStyle.SimpleImplementation(uint64_t a1, uint64_t a2)
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
  v15 = *(a2 + 41);
  v16 = *(a2 + 40);
  outlined copy of Environment<CGFloat?>.Content(v14, v16, v15);
  v17 = *(a1 + 32);
  v18 = *(a1 + 41);
  *(a1 + 32) = v14;
  v19 = *(a1 + 40);
  *(a1 + 40) = v16;
  *(a1 + 41) = v15;
  outlined consume of Environment<CGFloat?>.Content(v17, v19, v18);
  v20 = *(a2 + 48);
  v21 = *(a2 + 57);
  v22 = *(a2 + 56);
  outlined copy of Environment<CGFloat?>.Content(v20, v22, v21);
  v23 = *(a1 + 48);
  v24 = *(a1 + 57);
  *(a1 + 48) = v20;
  v25 = *(a1 + 56);
  *(a1 + 56) = v22;
  *(a1 + 57) = v21;
  outlined consume of Environment<CGFloat?>.Content(v23, v25, v24);
  v26 = *(a2 + 64);
  v27 = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v26, v27);
  v28 = *(a1 + 64);
  v29 = *(a1 + 72);
  *(a1 + 64) = v26;
  *(a1 + 72) = v27;
  outlined consume of Environment<Selector?>.Content(v28, v29);
  v30 = *(a2 + 80);
  v31 = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v30, v31);
  v32 = *(a1 + 80);
  v33 = *(a1 + 88);
  *(a1 + 80) = v30;
  *(a1 + 88) = v31;
  outlined consume of Environment<Selector?>.Content(v32, v33);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t assignWithTake for ListLabelStyle.SimpleImplementation(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  v10 = *(a1 + 16);
  v11 = *(a1 + 25);
  *(a1 + 16) = a2[2];
  v12 = *(a1 + 24);
  *(a1 + 24) = v8;
  *(a1 + 25) = v9;
  outlined consume of Environment<CGFloat?>.Content(v10, v12, v11);
  v13 = *(a2 + 40);
  v14 = *(a2 + 41);
  v15 = *(a1 + 32);
  v16 = *(a1 + 41);
  *(a1 + 32) = a2[4];
  v17 = *(a1 + 40);
  *(a1 + 40) = v13;
  *(a1 + 41) = v14;
  outlined consume of Environment<CGFloat?>.Content(v15, v17, v16);
  v18 = *(a2 + 56);
  v19 = *(a2 + 57);
  v20 = *(a1 + 48);
  v21 = *(a1 + 57);
  *(a1 + 48) = a2[6];
  v22 = *(a1 + 56);
  *(a1 + 56) = v18;
  *(a1 + 57) = v19;
  outlined consume of Environment<CGFloat?>.Content(v20, v22, v21);
  v23 = *(a2 + 72);
  v24 = *(a1 + 64);
  v25 = *(a1 + 72);
  *(a1 + 64) = a2[8];
  *(a1 + 72) = v23;
  outlined consume of Environment<Selector?>.Content(v24, v25);
  v26 = *(a2 + 88);
  v27 = *(a1 + 80);
  v28 = *(a1 + 88);
  *(a1 + 80) = a2[10];
  *(a1 + 88) = v26;
  outlined consume of Environment<Selector?>.Content(v27, v28);
  *(a1 + 96) = a2[12];
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t assignWithCopy for ListLabelStyle.PhoneImplementation(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of Environment<EdgeInsets>.Content(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  outlined consume of Environment<EdgeInsets>.Content(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for ListLabelStyle.PhoneImplementation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 32) = v3;
  outlined consume of Environment<EdgeInsets>.Content(v4, v6, v5, v7, v8);
  return a1;
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v6>, ListLabelStyle.PhoneImplementation, ListLabelStyle.SimpleImplementation> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, ListLabelStyle.PhoneImplementation, ListLabelStyle.SimpleImplementation> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, ListLabelStyle.PhoneImplementation, ListLabelStyle.SimpleImplementation> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ListLabelStyle.PhoneImplementation, ListLabelStyle.SimpleImplementation>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
    v5[1] = lazy protocol witness table accessor for type ListLabelStyle.PhoneImplementation and conformance ListLabelStyle.PhoneImplementation();
    v5[2] = lazy protocol witness table accessor for type ListLabelStyle.SimpleImplementation and conformance ListLabelStyle.SimpleImplementation();
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, ListLabelStyle.PhoneImplementation, ListLabelStyle.SimpleImplementation> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ListLabelStyle.PhoneImplementation, ListLabelStyle.SimpleImplementation>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v6>, ListLabelStyle.PhoneImplementation, ListLabelStyle.SimpleImplementation>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v6>, ListLabelStyle.PhoneImplementation, ListLabelStyle.SimpleImplementation>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for LabelStyleConfiguration.Title;
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>>> and conformance HStack<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    v5[1] = MEMORY[0x1E69805A0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ListLabelTitleModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
  }

  return v3;
}

uint64_t initializeWithCopy for ListLabelTitleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  return a1;
}

uint64_t assignWithCopy for ListLabelTitleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  return a1;
}

uint64_t initializeWithTake for ListLabelTitleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  return a1;
}

uint64_t assignWithTake for ListLabelTitleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  return a1;
}

void type metadata accessor for HStack<CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>>>)
  {
    type metadata accessor for CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>>(255, &lazy cache variable for type metadata for CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>>, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>, type metadata accessor for (ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>), &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)> and conformance TupleView<A>);
    lazy protocol witness table accessor for type CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>> and conformance CountViews<A, B>();
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?(255);
    type metadata accessor for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>, type metadata accessor for ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(255, &lazy cache variable for type metadata for HStack<LabelStyleConfiguration.Icon>, &type metadata for LabelStyleConfiguration.Icon, &protocol witness table for LabelStyleConfiguration.Icon, MEMORY[0x1E69817F0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>);
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)
  {
    type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>(255);
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>);
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)> and conformance TupleView<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>(255, a2, a3);
    result = swift_getWitnessTable(MEMORY[0x1E6981F48], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>> and conformance CountViews<A, B>()
{
  result = lazy protocol witness table cache variable for type CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>> and conformance CountViews<A, B>;
  if (!lazy protocol witness table cache variable for type CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>> and conformance CountViews<A, B>)
  {
    type metadata accessor for CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>>(255, &lazy cache variable for type metadata for CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>>, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>, type metadata accessor for (ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>), &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)> and conformance TupleView<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697DA30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>> and conformance CountViews<A, B>);
  }

  return result;
}

void type metadata accessor for CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>(255, a3, a4);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)> and conformance TupleView<A>(a5, a3, a4);
    v9 = type metadata accessor for CountViews();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for TupleView();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.__Key_listLabelIconStyle@<X0>(uint64_t *a2@<X8>)
{
  result = AnyShapeStyle.init<A>(_:)();
  *a2 = result;
  return result;
}

double protocol witness for ShapeStyle._apply(to:) in conformance ListLabelIconStyle(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1 = *(a1 + 56);
  v4[0] = v2;
  v4[1] = v1;

  specialized ListLabelIconStyle.resolve(in:)(v4);

  dispatch thunk of AnyShapeStyleBox.apply(to:)();

  return result;
}

uint64_t protocol witness for ShapeStyle.resolve(in:) in conformance ListLabelIconStyle@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized ListLabelIconStyle.resolve(in:)(a1);
  *a2 = result;
  return result;
}

uint64_t specialized ListLabelIconStyle.resolve(in:)(uint64_t *a1)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  if (v2 == 1)
  {
    static Color.accentColor.getter();
  }

  else
  {
    static Color.secondary.getter();
    if (v2)
    {
    }
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t assignWithCopy for ListLabelLayout.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t assignWithTake for ListLabelLayout.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListLabelLayout.Child(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ListLabelLayout.Child(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for ListLabelLayout.Cache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v6;
  return a1;
}

uint64_t SequencedTrackSource.update(value:mix:at:)(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = a2[5];
  v9 = a2[3];
  v10.n128_f64[0] = (*(v8 + 40))(v9, v8);
  if (v10.n128_f64[0] <= a4)
  {
    return (*(a2[6] + 24))(a1, a2[4], a3, a4 - v10.n128_f64[0]);
  }

  v12 = *(v8 + 24);
  v10.n128_f64[0] = a3;
  v11.n128_f64[0] = a4;

  return v12(a1, v9, v8, v10, v11);
}

uint64_t SequencedTrackSource.update(velocity:mix:at:)(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = a2[5];
  v9 = a2[3];
  v10.n128_f64[0] = (*(v8 + 40))(v9, v8);
  if (v10.n128_f64[0] <= a4)
  {
    return (*(a2[6] + 32))(a1, a2[4], a3, a4 - v10.n128_f64[0]);
  }

  v12 = *(v8 + 32);
  v10.n128_f64[0] = a3;
  v11.n128_f64[0] = a4;

  return v12(a1, v9, v8, v10, v11);
}

uint64_t static SequencedTrackSource.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v14[0] = a3;
    v14[1] = a4;
    v14[2] = a5;
    v14[3] = a6;
    v14[4] = a7;
    type metadata accessor for SequencedTrackSource(0, v14);
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t SequencedTrackSource.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v15 = type metadata accessor for SequencedTrackSource(0, v17);
  return (*(*(a5 - 8) + 32))(a8 + *(v15 + 60), a2, a5);
}

uint64_t AnimatedValueTrackSource.sequenced<A>(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v26[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, a2, v16);
  (*(v12 + 16))(v14, a1, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26[0] = AssociatedTypeWitness;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a5;
  v22 = type metadata accessor for SequencedTrackSource(0, v26);
  a6[3] = v22;
  a6[4] = swift_getWitnessTable(protocol conformance descriptor for SequencedTrackSource<A, B, C>, v22);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  return SequencedTrackSource.init(first:second:)(v18, v14, AssociatedTypeWitness, a2, a3, a4, a5, boxed_opaque_existential_1);
}

uint64_t AnimatedValueTrackSource.sequenced<A>(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v26[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v26[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  (*(v13 + 16))(v15, v7, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26[0] = AssociatedTypeWitness;
  v26[1] = a3;
  v26[2] = a2;
  v26[3] = a5;
  v26[4] = a4;
  v22 = type metadata accessor for SequencedTrackSource(0, v26);
  a6[3] = v22;
  a6[4] = swift_getWitnessTable(protocol conformance descriptor for SequencedTrackSource<A, B, C>, v22);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  return SequencedTrackSource.init(first:second:)(v19, v15, AssociatedTypeWitness, a3, a2, a5, a4, boxed_opaque_existential_1);
}

uint64_t AnimatedValueTrack.sequenced(before:)@<X0>(void *a1@<X0>, void (*a3)(void *__return_ptr, void *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *x8_0@<X8>)
{
  v8 = v4[3];
  v9 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v8);
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  a3(v22, v12, v8, v10, v9, v11);
  v13 = v23;
  v14 = v24;
  v15 = __swift_project_boxed_opaque_existential_1(v22, v23);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  AnimatedValueTrack.init<A>(source:)(v18, v13, v14, x8_0);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t TimingCurveTrackSource.update(value:mix:at:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(v7 + 40);
  v10 = v9(v8, v7);
  v11 = UnitCurve.value(at:)(a4 / v10);
  v12.n128_f64[0] = v11 * v9(v8, v7);
  v13 = *(v7 + 24);
  v14.n128_f64[0] = a3;

  return v13(a1, v8, v7, v14, v12);
}

uint64_t TimingCurveTrackSource.update(velocity:mix:at:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(v7 + 40);
  v10 = v9(v8, v7);
  v11 = UnitCurve.value(at:)(a4 / v10);
  v12.n128_f64[0] = v11 * v9(v8, v7);
  v13 = *(v7 + 32);
  v14.n128_f64[0] = a3;

  return v13(a1, v8, v7, v14, v12);
}

uint64_t static TimingCurveTrackSource.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    type metadata accessor for TimingCurveTrackSource(0, a3, a4, v6);
    v7 = static UnitCurve.== infix(_:_:)();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

__n128 AnimatedValueTrackSource.timingCurve(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 32);
  (*(v8 + 16))(v11, v14, a2, v9);
  v16 = type metadata accessor for TimingCurveTrackSource(0, a2, a3, v15);
  a4[3] = v16;
  a4[4] = swift_getWitnessTable(protocol conformance descriptor for TimingCurveTrackSource<A>, v16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  (*(v8 + 32))(boxed_opaque_existential_1, v11, a2);
  v18 = boxed_opaque_existential_1 + *(v16 + 36);
  result = *a1;
  v20 = *(a1 + 16);
  *v18 = *a1;
  *(v18 + 1) = v20;
  v18[32] = v13;
  return result;
}

uint64_t AnimatedValueTrack.timingCurve(_:)@<X0>(uint64_t a1@<X0>, uint64_t *x8_0@<X8>)
{
  v6 = *(a1 + 32);
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  v9 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v9;
  v19 = v6;
  AnimatedValueTrackSource.timingCurve(_:)(v18, v7, v8, v20);
  v10 = v21;
  v11 = v22;
  v12 = __swift_project_boxed_opaque_existential_1(v20, v21);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  AnimatedValueTrack.init<A>(source:)(v15, v10, v11, x8_0);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t DurationTrackSource.update(value:mix:at:)(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v5 = a4.n128_f64[0];
  v6 = *(v4 + *(a2 + 36));
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  a4.n128_u64[0] = 0;
  if (v6 > 0.0)
  {
    v9 = a1;
    v10 = a3.n128_u64[0];
    a3.n128_f64[0] = (*(v7 + 40))(*(a2 + 16), *(a2 + 24), a3, 0.0);
    a1 = v9;
    a4.n128_u64[0] = a3.n128_u64[0];
    a3.n128_u64[0] = v10;
    a4.n128_f64[0] = a4.n128_f64[0] * v5 / v6;
  }

  v11 = *(v7 + 24);

  return v11(a1, v8, v7, a3, a4);
}

uint64_t DurationTrackSource.update(velocity:mix:at:)(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v5 = a4.n128_f64[0];
  v6 = *(v4 + *(a2 + 36));
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  a4.n128_u64[0] = 0;
  if (v6 > 0.0)
  {
    v9 = a1;
    v10 = a3.n128_u64[0];
    a3.n128_f64[0] = (*(v7 + 40))(*(a2 + 16), *(a2 + 24), a3, 0.0);
    a1 = v9;
    a4.n128_u64[0] = a3.n128_u64[0];
    a3.n128_u64[0] = v10;
    a4.n128_f64[0] = a4.n128_f64[0] * v5 / v6;
  }

  v11 = *(v7 + 32);

  return v11(a1, v8, v7, a3, a4);
}

uint64_t AnimatedValueTrackSource.duration(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v9 = *(a1 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, a1, v10);
  if (a4 <= 0.0)
  {
    a4 = 0.0;
  }

  v14 = type metadata accessor for DurationTrackSource(0, a1, a2, v13);
  a3[3] = v14;
  a3[4] = swift_getWitnessTable(protocol conformance descriptor for DurationTrackSource<A>, v14);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  result = (*(v9 + 32))(boxed_opaque_existential_1, v12, a1);
  *(boxed_opaque_existential_1 + *(v14 + 36)) = a4;
  return result;
}

uint64_t AnimatedValueTrack.duration(_:)@<X0>(double a2@<D0>, uint64_t *x8_0@<X8>)
{
  v6 = v3[3];
  v7 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v6);
  AnimatedValueTrackSource.duration(_:)(v6, v7, v17, a2);
  v8 = v18;
  v9 = v19;
  v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  AnimatedValueTrack.init<A>(source:)(v13, v8, v9, x8_0);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

BOOL static DelaySource.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v10 = a5(0, a3, a4);
  return *(a1 + *(v10 + 36)) == *(a2 + *(v10 + 36));
}

uint64_t AnimatedValueTrackSource.delay(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, uint64_t)@<X2>, const char *a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>)
{
  v13 = *(a1 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v6, a1, v14);
  v17 = a3(0, a1, a2);
  a5[3] = v17;
  a5[4] = swift_getWitnessTable(a4, v17);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  result = (*(v13 + 32))(boxed_opaque_existential_1, v16, a1);
  *(boxed_opaque_existential_1 + *(v17 + 36)) = a6;
  return result;
}

uint64_t AnimatedValueTrack.delay(_:)@<X0>(uint64_t (*a2)(void, uint64_t, uint64_t)@<X1>, const char *a3@<X2>, double a4@<D0>, uint64_t *x8_0@<X8>)
{
  v10 = v5[3];
  v11 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v10);
  AnimatedValueTrackSource.delay(_:)(v10, v11, a2, a3, v21, a4);
  v12 = v22;
  v13 = v23;
  v14 = __swift_project_boxed_opaque_existential_1(v21, v22);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v15);
  AnimatedValueTrack.init<A>(source:)(v17, v12, v13, x8_0);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t ReversedTrackSource.update(value:mix:at:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8.n128_f64[0] = (*(v6 + 40))(v7, v6) - a4;
  v9 = *(v6 + 24);
  v10.n128_f64[0] = a3;

  return v9(a1, v7, v6, v10, v8);
}

uint64_t ReversedTrackSource.update(velocity:mix:at:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8.n128_f64[0] = (*(v6 + 40))(v7, v6) - a4;
  v9 = *(v6 + 32);
  v10.n128_f64[0] = a3;

  return v9(a1, v7, v6, v10, v8);
}

uint64_t AnimatedValueTrackSource.reversed()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a1 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v3, a1, v8);
  v12 = type metadata accessor for ReversedTrackSource(0, a1, a2, v11);
  a3[3] = v12;
  a3[4] = swift_getWitnessTable(protocol conformance descriptor for ReversedTrackSource<A>, v12);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return (*(v7 + 32))(boxed_opaque_existential_1, v10, a1);
}

uint64_t AnimatedValueTrack.reversed()@<X0>(uint64_t *x8_0@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  AnimatedValueTrackSource.reversed()(v4, v5, v15);
  v6 = v16;
  v7 = v17;
  v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  AnimatedValueTrack.init<A>(source:)(v11, v6, v7, x8_0);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t type metadata completion function for SequencedTrackSource(uint64_t a1)
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

char *storeEnumTagSinglePayload for SequencedTrackSource(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 32);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TimingCurveTrackSource(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 33 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = *(v10 + 32);
    v12 = *(v10 + 16);
    v13 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v13 = *v10;
    *(v13 + 16) = v12;
    *(v13 + 32) = v11;
  }

  return v3;
}

uint64_t initializeWithCopy for TimingCurveTrackSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 32);
  v10 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  return a1;
}

uint64_t assignWithCopy for TimingCurveTrackSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 32);
  v10 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  return a1;
}

uint64_t initializeWithTake for TimingCurveTrackSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 32);
  v10 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  return a1;
}

uint64_t assignWithTake for TimingCurveTrackSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 32);
  v10 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  return a1;
}

uint64_t getEnumTagSinglePayload for TimingCurveTrackSource(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void storeEnumTagSinglePayload for TimingCurveTrackSource(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

uint64_t type metadata completion function for DelaySource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_checkMetadataState();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t assignWithCopy for DelaySource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for DelaySource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for DelaySource<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for DelaySource<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for SequencedTrackSource<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for SequencedTrackSource<A, B, C>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TimingCurveTrackSource<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TimingCurveTrackSource<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for DurationTrackSource<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for DurationTrackSource<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for SpeedTrackSource<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for SpeedTrackSource<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ReversedTrackSource<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for ReversedTrackSource<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t static TabBarOnlyTabViewStyle._makeView<A>(value:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v20 = a2[2];
  v21 = v7;
  v22 = a2[4];
  v23 = *(a2 + 20);
  v8 = a2[1];
  v18 = *a2;
  v19 = v8;
  v9 = type metadata accessor for AdaptableTabViewRoot(255, a3, a4, a4);
  type metadata accessor for TabViewStyleConfiguration.Content(255, a3, a4, v10);
  v11 = type metadata accessor for _VariadicView.Tree();
  v17 = v6;
  v16[0] = &type metadata for TabBarOnlyTabViewStyle;
  v16[1] = a3;
  v16[2] = &protocol witness table for TabBarOnlyTabViewStyle;
  v16[3] = a4;
  type metadata accessor for _TabViewValue(255, v16);
  type metadata accessor for _GraphValue();
  LODWORD(v16[0]) = _GraphValue.value.getter();
  v13 = type metadata accessor for TabBarOnlyTabViewStyle.Body(0, a3, a4, v12);
  swift_getWitnessTable(protocol conformance descriptor for TabBarOnlyTabViewStyle.Body<A>, v13);
  _GraphValue.init<A>(_:)();
  v15[0] = swift_getWitnessTable(protocol conformance descriptor for AdaptableTabViewRoot<A>, v9);
  v15[1] = &protocol witness table for TabViewStyleConfiguration<A>.Content;
  swift_getWitnessTable(MEMORY[0x1E697E308], v11, v15);
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static TabBarOnlyTabViewStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = type metadata accessor for AdaptableTabViewRoot(255, a3, a4, a4);
  type metadata accessor for TabViewStyleConfiguration.Content(255, a3, a4, v8);
  v9 = type metadata accessor for _VariadicView.Tree();
  v15 = v6;
  v14[0] = &type metadata for TabBarOnlyTabViewStyle;
  v14[1] = a3;
  v14[2] = &protocol witness table for TabBarOnlyTabViewStyle;
  v14[3] = a4;
  type metadata accessor for _TabViewValue(255, v14);
  type metadata accessor for _GraphValue();
  LODWORD(v14[0]) = _GraphValue.value.getter();
  v11 = type metadata accessor for TabBarOnlyTabViewStyle.Body(0, a3, a4, v10);
  swift_getWitnessTable(protocol conformance descriptor for TabBarOnlyTabViewStyle.Body<A>, v11);
  _GraphValue.init<A>(_:)();
  v13[0] = swift_getWitnessTable(protocol conformance descriptor for AdaptableTabViewRoot<A>, v7);
  v13[1] = &protocol witness table for TabViewStyleConfiguration<A>.Content;
  swift_getWitnessTable(MEMORY[0x1E697E308], v9, v13);
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t TabBarOnlyTabViewStyle.Body.base.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[0] = &type metadata for TabBarOnlyTabViewStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for TabBarOnlyTabViewStyle;
  v8[3] = a3;
  v5 = type metadata accessor for _TabViewValue(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a4, Value, v5);
}

uint64_t TabBarOnlyTabViewStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  type metadata accessor for Binding();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22[-v8];
  v26[0] = &type metadata for TabBarOnlyTabViewStyle;
  v26[1] = a2;
  v26[2] = &protocol witness table for TabBarOnlyTabViewStyle;
  v26[3] = a3;
  v10 = type metadata accessor for _TabViewValue(0, v26);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22[-v11];
  v14 = type metadata accessor for AdaptableTabViewRoot(0, a2, a3, v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22[-v15];
  TabBarOnlyTabViewStyle.Body.base.getter(a2, a3, v12);
  (*(v7 + 32))(v9, v12, v6);
  v17 = default argument 0 of AdaptableTabViewRoot.init(clientSidebarVisibility:selection:adaptationMode:)();
  AdaptableTabViewRoot.init(clientSidebarVisibility:selection:adaptationMode:)(v17, v19, v18 & 0x1FF, v9, 2, a2, a3, v16);
  v23 = a2;
  v24 = a3;
  v25 = v5;
  type metadata accessor for TabViewStyleConfiguration.Content(0, a2, a3, v20);
  return _VariadicView.Tree.init(_:content:)();
}

uint64_t closure #1 in TabBarOnlyTabViewStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = &type metadata for TabBarOnlyTabViewStyle;
  v11[1] = a2;
  v11[2] = &protocol witness table for TabBarOnlyTabViewStyle;
  v11[3] = a3;
  v5 = type metadata accessor for _TabViewValue(0, v11);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  TabBarOnlyTabViewStyle.Body.base.getter(a2, a3, v11 - v7);
  (*(v6 + 8))(v8, v5);
  type metadata accessor for TabViewStyleConfiguration.Content(0, a2, a3, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  return static ViewBuilder.buildExpression<A>(_:)();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance TabBarOnlyTabViewStyle.Body<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for AdaptableTabViewRoot(255, v4, v5, a2);
  type metadata accessor for TabViewStyleConfiguration.Content(255, v4, v5, v6);
  v7 = type metadata accessor for _VariadicView.Tree();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, 1, 1, v7);
}

uint64_t destroy for ListDisclosureGroupStyle(uint64_t a1)
{

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  return outlined consume of Environment<Bool>.Content(v2, v3);
}

uint64_t initializeWithCopy for ListDisclosureGroupStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);

  outlined copy of Environment<Bool>.Content();
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return a1;
}

uint64_t assignWithCopy for ListDisclosureGroupStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(v2 + 16);
  LOBYTE(v2) = *(v2 + 24);
  outlined copy of Environment<Bool>.Content();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v2;
  outlined consume of Environment<Bool>.Content(v5, v6);
  return a1;
}

uint64_t assignWithTake for ListDisclosureGroupStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  outlined consume of Environment<Bool>.Content(v5, v6);
  return a1;
}

uint64_t specialized closure #1 in AccessibilityDisclosureModifier.List.body(content:)@<X0>(_BYTE *a4@<X8>)
{
  _s7SwiftUI7BindingVySbGMaTm_8(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v6);
  result = dispatch thunk of AnyLocation.set(_:transaction:)();
  *a4 = 3;
  return result;
}

uint64_t specialized ModifiedContent<>.accessibilityAction(kind:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  _s7SwiftUI7BindingVySbGMaTm_8(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18CD63400;
  LODWORD(a5) = AccessibilityActionHandlerSeed++;
  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>(0);
  *(v16 + 56) = v17;
  *(v16 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
  v18 = swift_allocObject();
  *(v16 + 32) = v18;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = 0;
  *(v18 + 72) = 2;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 112) = 0;
  *(v18 + 120) = partial apply for thunk for @escaping @callee_guaranteed () -> (@out AccessibilityActionResult);
  *(v18 + 128) = v15;
  *(v18 + 136) = a5;
  *(v16 + 72) = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(0);
  swift_beginAccess();

  outlined copy of AccessibilityActionKind.ActionKind(a1, a2, a3, a4);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();

  AccessibilityProperties.subscript.getter();
  specialized Array.append<A>(contentsOf:)(v21);
  AccessibilityProperties.subscript.setter();
  swift_endAccess();

  return outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(v8, a7, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>);
}

double protocol witness for DisclosureGroupStyle.makeBody(configuration:) in conformance ListDisclosureGroupStyle@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *v2;
  v7 = *(v2 + 1);
  v8 = *(v2 + 2);
  v9 = v2[24];
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  *(a2 + 56) = 0;

  outlined copy of Environment<Bool>.Content();

  return result;
}

uint64_t type metadata completion function for ListDisclosureGroupStyledContainer(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ListDisclosureGroupStyledContainer(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *(v10 + 16) = *(v11 + 16);
    *((v3 + v5 + 31) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 31) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

double destroy for ListDisclosureGroupStyledContainer(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

uint64_t initializeWithCopy for ListDisclosureGroupStyledContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 16) = *(v10 + 16);
  *((v7 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 31) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for ListDisclosureGroupStyledContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;

  *(v9 + 8) = *(v10 + 8);

  *(v9 + 16) = *(v10 + 16);
  *((v7 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for ListDisclosureGroupStyledContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  *((v7 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ListDisclosureGroupStyledContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;

  *(v9 + 8) = *(v10 + 8);

  *(v9 + 16) = *(v10 + 16);
  *((v7 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListDisclosureGroupStyledContainer(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
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

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
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

  return v7 + (v10 | v16) + 1;
}

_DWORD *storeEnumTagSinglePayload for ListDisclosureGroupStyledContainer(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = (result + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v18 + 16) = 0;
      *v18 = a2 & 0x7FFFFFFF;
      *(v18 + 8) = 0;
    }

    else
    {
      *(v18 + 8) = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListDisclosureGroupStyledContainer<ListDisclosureGroupStyle> and conformance ListDisclosureGroupStyledContainer<A>()
{
  result = lazy protocol witness table cache variable for type ListDisclosureGroupStyledContainer<ListDisclosureGroupStyle> and conformance ListDisclosureGroupStyledContainer<A>;
  if (!lazy protocol witness table cache variable for type ListDisclosureGroupStyledContainer<ListDisclosureGroupStyle> and conformance ListDisclosureGroupStyledContainer<A>)
  {
    type metadata accessor for ListDisclosureGroupStyledContainer<ListDisclosureGroupStyle>(255, &lazy cache variable for type metadata for ListDisclosureGroupStyledContainer<ListDisclosureGroupStyle>, lazy protocol witness table accessor for type ListDisclosureGroupStyle and conformance ListDisclosureGroupStyle, &type metadata for ListDisclosureGroupStyle, type metadata accessor for ListDisclosureGroupStyledContainer);
    result = swift_getWitnessTable(protocol conformance descriptor for ListDisclosureGroupStyledContainer<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListDisclosureGroupStyledContainer<ListDisclosureGroupStyle> and conformance ListDisclosureGroupStyledContainer<A>);
  }

  return result;
}

uint64_t ListDisclosureGroupStyledContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v51 = a3;
  type metadata accessor for DisclosureGroupStyleModifier(255, *(a1 + 16), *(a1 + 24), a2);
  v53 = type metadata accessor for ModifiedContent();
  v54 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceTransformModifier<OutlineRootConfiguration.Key>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<OutlineRootConfiguration.Key>, &type metadata for OutlineRootConfiguration.Key, &protocol witness table for OutlineRootConfiguration.Key, MEMORY[0x1E6980910]);
  v55 = v6;
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = type metadata accessor for Optional();
  v47 = *(v14 - 8);
  v48 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v50 = &v45 - v18;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(0);
  v46 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v49 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v52 = &v45 - v22;
  ListDisclosureGroupStyledContainer.label.getter(a1, &v45 - v22);
  v23 = v4 + *(a1 + 36);
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(v23) = *(v23 + 16);
  v70 = v24;
  v71 = v25;
  v72 = v23;
  _s7SwiftUI7BindingVySbGMaTm_8(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v65);
  if (LOBYTE(v65[0]) == 1)
  {
    ListDisclosureGroupStyledContainer.content.getter(a1, v26, v10);
    v59[0] = &protocol witness table for DisclosureGroupStyleConfiguration.Content;
    v59[1] = &protocol witness table for DisclosureGroupStyleModifier<A>;
    v27 = MEMORY[0x1E697E858];
    v58[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v53, v59);
    v58[1] = &protocol witness table for ListDisclosureGroupIndentationModifier;
    v57[0] = swift_getWitnessTable(v27, v54, v58);
    v57[1] = &protocol witness table for IncrementListDisclosureGroupDepth;
    WitnessTable = swift_getWitnessTable(v27, v55, v57);
    v29 = lazy protocol witness table accessor for type _PreferenceTransformModifier<OutlineRootConfiguration.Key> and conformance _PreferenceTransformModifier<A>();
    v56[0] = WitnessTable;
    v56[1] = v29;
    swift_getWitnessTable(v27, v7, v56);
    static ViewBuilder.buildExpression<A>(_:)();
    v30 = *(v8 + 8);
    v30(v10, v7);
    static ViewBuilder.buildExpression<A>(_:)();
    v30(v13, v7);
    (*(v8 + 32))(v16, v10, v7);
    (*(v8 + 56))(v16, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v16, 1, 1, v7);
    v69[0] = &protocol witness table for DisclosureGroupStyleConfiguration.Content;
    v69[1] = &protocol witness table for DisclosureGroupStyleModifier<A>;
    v31 = MEMORY[0x1E697E858];
    v68[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v53, v69);
    v68[1] = &protocol witness table for ListDisclosureGroupIndentationModifier;
    v67[0] = swift_getWitnessTable(v31, v54, v68);
    v67[1] = &protocol witness table for IncrementListDisclosureGroupDepth;
    v32 = swift_getWitnessTable(v31, v55, v67);
    v33 = lazy protocol witness table accessor for type _PreferenceTransformModifier<OutlineRootConfiguration.Key> and conformance _PreferenceTransformModifier<A>();
    v66[0] = v32;
    v66[1] = v33;
    swift_getWitnessTable(v31, v7, v66);
  }

  v34 = v50;
  v35 = v16;
  static ToolbarContentBuilder.buildIf<A>(_:)(v16, v50);
  v36 = v47;
  v37 = *(v47 + 8);
  v38 = v16;
  v39 = v48;
  v37(v38, v48);
  v40 = v49;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(v52, v49, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>);
  v70 = v40;
  (*(v36 + 16))(v35, v34, v39);
  v71 = v35;
  v65[0] = v46;
  v65[1] = v39;
  v64[2] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v64[0] = &protocol witness table for DisclosureGroupStyleConfiguration.Content;
  v64[1] = &protocol witness table for DisclosureGroupStyleModifier<A>;
  v41 = MEMORY[0x1E697E858];
  v63[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v53, v64);
  v63[1] = &protocol witness table for ListDisclosureGroupIndentationModifier;
  v62[0] = swift_getWitnessTable(v41, v54, v63);
  v62[1] = &protocol witness table for IncrementListDisclosureGroupDepth;
  v42 = swift_getWitnessTable(v41, v55, v62);
  v43 = lazy protocol witness table accessor for type _PreferenceTransformModifier<OutlineRootConfiguration.Key> and conformance _PreferenceTransformModifier<A>();
  v61[0] = v42;
  v61[1] = v43;
  v60 = swift_getWitnessTable(v41, v7, v61);
  v64[3] = swift_getWitnessTable(MEMORY[0x1E6982090], v39, &v60);
  static ViewBuilder.buildBlock<each A>(_:)(&v70, 2uLL, v65);
  v37(v34, v39);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(v52, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>);
  v37(v35, v39);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(v40, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>);
}

uint64_t ListDisclosureGroupStyledContainer.label.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[0] = a2;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - v9;
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ListDisclosureGroupStyledContainer.resolvedLabel.getter(a1, v14);
  v15 = v2 + *(a1 + 36);
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v30[0] = *v15;
  v16 = v30[0];
  v30[1] = v17;
  LOBYTE(v30[2]) = v18;
  _s7SwiftUI7BindingVySbGMaTm_8(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v31);
  v19 = v31[0];
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 17) = v19;
  v21 = &v14[*(v12 + 44)];
  *v21 = _s7SwiftUI4ViewPAAE11outlineRoot_10isExpandedQrSb_SbSgtFyAA07OutlineE13ConfigurationVzcfU_TA_0;
  *(v21 + 1) = v20;
  type metadata accessor for ListDisclosureGroupStyledContainer<ListDisclosureGroupStyle>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;

  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v31);
  _s7SwiftUI7BindingVySbGMaTm_8(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v23 = swift_allocObject();
  memcpy((v23 + 16), v30, 0x128uLL);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(v14, v7, type metadata accessor for ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>);
  v24 = &v7[*(v5 + 44)];
  *v24 = v23;
  v24[1] = v22;
  AccessibilityTraitSet.init(traits:)();
  v25 = v29[5];
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v23 + 16, 0, v25);
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(v7, v10, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>);
  v26 = *&v10[*(v5 + 44)];
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(v26 + 16, 0x4000000040uLL);
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v26 + 16, 3, 3);
  v27 = swift_allocObject();
  *(v27 + 16) = v16;
  *(v27 + 24) = v17;
  *(v27 + 32) = v18;

  specialized ModifiedContent<>.accessibilityAction(kind:_:)(0, 0, 0, 0, partial apply for specialized closure #1 in AccessibilityDisclosureModifier.List.body(content:), v27, v29[0]);

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(v10, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>);

  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(v14, type metadata accessor for ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>);
}

uint64_t ListDisclosureGroupStyledContainer.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v23 = a3;
  v3 = *(a1 + 16);
  type metadata accessor for DisclosureGroupStyleModifier(255, v3, *(a1 + 24), a2);
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = type metadata accessor for ModifiedContent();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for ModifiedContent();
  v22 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  View.disclosureGroupStyle<A>(_:)(v20, &type metadata for DisclosureGroupStyleConfiguration.Content, v3, &protocol witness table for DisclosureGroupStyleConfiguration.Content);
  v26[0] = &protocol witness table for DisclosureGroupStyleConfiguration.Content;
  v26[1] = &protocol witness table for DisclosureGroupStyleModifier<A>;
  v14 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v26);
  View.listDisclosureGroupIndentation(base:step:)(v4, WitnessTable, 20.0, 20.0);
  (*(v5 + 8))(v7, v4);
  v25[0] = WitnessTable;
  v25[1] = &protocol witness table for ListDisclosureGroupIndentationModifier;
  v16 = swift_getWitnessTable(v14, v8, v25);
  MEMORY[0x18D00A570](v16, v8, &type metadata for IncrementListDisclosureGroupDepth, v16);
  (*(v21 + 8))(v10, v8);
  v24[0] = v16;
  v24[1] = &protocol witness table for IncrementListDisclosureGroupDepth;
  v17 = swift_getWitnessTable(v14, v11, v24);
  v18 = View.outlineRoot(_:isExpanded:)(0, 2, v11, v17);
  return (*(v22 + 8))(v13, v11, v18);
}

void ListDisclosureGroupStyledContainer.resolvedLabel.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  type metadata accessor for _VariadicView.Tree<_HStackLayout, Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>(0);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  closure #1 in closure #1 in ListDisclosureGroupStyledContainer.resolvedLabel.getter(v9, v10, a2 + *(v8 + 44));
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  (*(v6 + 32))(v12 + v11, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>(0);
  v14 = (a2 + *(v13 + 36));
  *v14 = partial apply for closure #2 in ListDisclosureGroupStyledContainer.resolvedLabel.getter;
  v14[1] = v12;
}

void ListDisclosureGroupStyledContainer.disclosureIndicator.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 36);
  v10 = *v9;
  v11 = *(v9 + 8);
  LOBYTE(v9) = *(v9 + 16);
  v31[0] = v10;
  v31[1] = v11;
  LOBYTE(v31[2]) = v9;
  _s7SwiftUI7BindingVySbGMaTm_8(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v32);
  HIDWORD(v29) = LOBYTE(v32[0]);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v15 = implicit closure #1 in ListDisclosureGroupStyledContainer.disclosureIndicator.getter(v3, v12, v13, v14);
  v17 = v16;
  *v8 = 4;
  type metadata accessor for Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>(0);
  v19 = v18;
  v20 = &v8[*(v18 + 36)];
  *v20 = v15;
  v20[1] = v17;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  if (HIDWORD(v29))
  {
    v21 = 257;
  }

  else
  {
    v21 = 1;
  }

  closure #1 in ListDisclosureGroupStyledContainer.disclosureIndicator.getter(v21, v12, v13, &v8[*(v19 + 40)]);
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = &v8[*(v6 + 44)];
  *v24 = KeyPath;
  v24[8] = 0;
  *(v24 + 2) = v23;
  v24[24] = 0;
  AccessibilityProperties.init()();
  v32[14] = 0x400000004;
  v33 = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v32);
  _s7SwiftUI7BindingVySbGMaTm_8(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v25 = swift_allocObject();
  memcpy((v25 + 16), v31, 0x128uLL);
  v26 = v30;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(v8, v30, type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>(0);
  v28 = (v26 + *(v27 + 36));
  *v28 = v25;
  v28[1] = 0;
}

uint64_t (*implicit closure #1 in ListDisclosureGroupStyledContainer.disclosureIndicator.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = type metadata accessor for ListDisclosureGroupStyledContainer(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return partial apply for implicit closure #2 in implicit closure #1 in ListDisclosureGroupStyledContainer.disclosureIndicator.getter;
}

double ListDisclosureGroupStyledContainer.toggleExpansion()(uint64_t a1)
{
  swift_retain_n();

  Transaction.subscript.setter();
  Transaction.current.getter();
  withTransaction<A>(_:_:)();

  return result;
}

void closure #1 in ListDisclosureGroupStyledContainer.disclosureIndicator.getter(__int16 a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for ListDisclosureGroupStyledContainer(0, a3, a4, a4);
  EdgeInsets.init(_all:)();
  *a5 = a1 & 1;
  *(a5 + 1) = HIBYTE(a1) & 1;
  *(a5 + 8) = 8;
  *(a5 + 16) = v7;
  *(a5 + 24) = v8;
  *(a5 + 32) = v9;
  *(a5 + 40) = v10;
  *(a5 + 48) = 0;
}

uint64_t closure #1 in closure #1 in ListDisclosureGroupStyledContainer.resolvedLabel.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v13 = type metadata accessor for ListDisclosureGroupStyledContainer(0, a1, a2, v12);
  ListDisclosureGroupStyledContainer.disclosureIndicator.getter(v13, v11);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(v11, v8, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>);
  *a3 = 0;
  *(a3 + 8) = 1;
  type metadata accessor for (DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)(0);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(v8, a3 + *(v14 + 64), type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(v11, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(v8, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>);
}

uint64_t closure #2 in ListDisclosureGroupStyledContainer.resolvedLabel.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PlatformItemList.Item(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - v13;
  v15 = *a1;
  PlatformItemList.containerSelectionBehavior.getter(*a1, v27);
  if (v28 != 1)
  {
    return outlined destroy of PlatformItemList.Item.SelectionBehavior?(v27);
  }

  PlatformItemList.mergedContentItem.getter(v15, v14);

  v17 = implicit closure #1 in closure #2 in ListDisclosureGroupStyledContainer.resolvedLabel.getter(a2, a3, a4, v16);
  v19 = v18;
  v20 = *(v14 + 456);
  v25[2] = *(v14 + 440);
  v25[3] = v20;
  v26 = v14[472];
  v21 = *(v14 + 424);
  v25[0] = *(v14 + 408);
  v25[1] = v21;
  outlined destroy of PlatformItemList.Item.SelectionBehavior?(v25);
  *(v14 + 102) = 65793;
  v14[412] = 0;
  *(v14 + 52) = v17;
  *(v14 + 53) = v19;
  *(v14 + 27) = 0u;
  *(v14 + 28) = 0u;
  *(v14 + 457) = 0u;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(v14, v11, type metadata accessor for PlatformItemList.Item);
  type metadata accessor for Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v22 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_18CD63400;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(v11, v23 + v22, type metadata accessor for PlatformItemList.Item);
  *a1 = v23;
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(v14, type metadata accessor for PlatformItemList.Item);
}

uint64_t (*implicit closure #1 in closure #2 in ListDisclosureGroupStyledContainer.resolvedLabel.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = type metadata accessor for ListDisclosureGroupStyledContainer(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return partial apply for implicit closure #2 in implicit closure #1 in closure #2 in ListDisclosureGroupStyledContainer.resolvedLabel.getter;
}

void type metadata accessor for ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>)
  {
    type metadata accessor for ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>(255);
    type metadata accessor for _PreferenceTransformModifier<OutlineRootConfiguration.Key>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<OutlineRootConfiguration.Key>, &type metadata for OutlineRootConfiguration.Key, &protocol witness table for OutlineRootConfiguration.Key, MEMORY[0x1E6980910]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>)
  {
    type metadata accessor for HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>(255);
    type metadata accessor for _PreferenceTransformModifier<OutlineRootConfiguration.Key>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>, &type metadata for SelectionPlatformItemListFlags, &protocol witness table for SelectionPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>);
    }
  }
}

void type metadata accessor for HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>)
  {
    type metadata accessor for Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>(255, &lazy cache variable for type metadata for Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>, type metadata accessor for TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>, MEMORY[0x1E69815F8]);
    lazy protocol witness table accessor for type Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>> and conformance <A> Group<A>();
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>);
    }
  }
}

void type metadata accessor for (DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)
  {
    type metadata accessor for ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>(255);
    type metadata accessor for ListDisclosureGroupStyledContainer<ListDisclosureGroupStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>)
  {
    type metadata accessor for Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>(255);
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>)
  {
    type metadata accessor for _PreferenceTransformModifier<OutlineRootConfiguration.Key>(255, &lazy cache variable for type metadata for ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>, &type metadata for RotatingDisclosureIndicator, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v6 = type metadata accessor for Button(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _PreferenceTransformModifier<OutlineRootConfiguration.Key>(255, &lazy cache variable for type metadata for ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>, &type metadata for RotatingDisclosureIndicator, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type RotatingDisclosureIndicator and conformance RotatingDisclosureIndicator();
    v5[1] = MEMORY[0x1E697E5D8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RotatingDisclosureIndicator and conformance RotatingDisclosureIndicator()
{
  result = lazy protocol witness table cache variable for type RotatingDisclosureIndicator and conformance RotatingDisclosureIndicator;
  if (!lazy protocol witness table cache variable for type RotatingDisclosureIndicator and conformance RotatingDisclosureIndicator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RotatingDisclosureIndicator, &type metadata for RotatingDisclosureIndicator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RotatingDisclosureIndicator and conformance RotatingDisclosureIndicator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>> and conformance <A> Group<A>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>(255, &lazy cache variable for type metadata for Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>, type metadata accessor for TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>, MEMORY[0x1E69815F8]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)> and conformance TupleView<A>, type metadata accessor for TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable(MEMORY[0x1E6981600], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>> and conformance <A> Group<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>> and conformance HStack<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for _PreferenceTransformModifier<OutlineRootConfiguration.Key>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for AccessibilityAttachmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<OutlineRootConfiguration.Key> and conformance _PreferenceTransformModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>> and conformance HStack<A>, type metadata accessor for HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, MEMORY[0x1E69817F8]);
    v5[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for ListDisclosureGroupStyledContainer<ListDisclosureGroupStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for _VariadicView.Tree<_HStackLayout, Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>)
  {
    type metadata accessor for Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>(255, &lazy cache variable for type metadata for Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>, type metadata accessor for TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>, MEMORY[0x1E69815F8]);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>);
    }
  }
}

uint64_t partial apply for closure #2 in ListDisclosureGroupStyledContainer.resolvedLabel.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for ListDisclosureGroupStyledContainer(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return closure #2 in ListDisclosureGroupStyledContainer.resolvedLabel.getter(a1, v9, v6, v7);
}

uint64_t outlined destroy of PlatformItemList.Item.SelectionBehavior?(uint64_t a1)
{
  _s7SwiftUI7BindingVySbGMaTm_8(0, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<Group<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>, _PreferenceTransformModifier<OutlineRootConfiguration.Key>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_14Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for ListDisclosureGroupStyledContainer(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type MoveCommandDirection and conformance MoveCommandDirection()
{
  result = lazy protocol witness table cache variable for type MoveCommandDirection and conformance MoveCommandDirection;
  if (!lazy protocol witness table cache variable for type MoveCommandDirection and conformance MoveCommandDirection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MoveCommandDirection, &type metadata for MoveCommandDirection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MoveCommandDirection and conformance MoveCommandDirection);
  }

  return result;
}

uint64_t type metadata accessor for ScrollEdgeEffectTagModifierDefinition(uint64_t a1)
{
  result = type metadata singleton initialization cache for ScrollEdgeEffectTagModifierDefinition;
  if (!type metadata singleton initialization cache for ScrollEdgeEffectTagModifierDefinition)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t View.defaultButtonScrollEdgeEffectTag(style:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature();
  v6[0] = a3;
  v6[1] = &protocol witness table for ScrollEdgeEffectTagModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
  return View.staticIf<A, B>(_:then:)();
}

uint64_t closure #1 in View.defaultButtonScrollEdgeEffectTag(style:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-1] - v13;
  v19 = a2;
  MEMORY[0x18D00A570](&v19, a3, &type metadata for ScrollEdgeEffectTagModifier, a4, v12);
  v18[0] = a4;
  v18[1] = &protocol witness table for ScrollEdgeEffectTagModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v7, v18);
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v8 + 8);
  v15(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v14, v7);
}

uint64_t one-time initialization function for isInDisabledBundle()
{
  result = closure #1 in variable initialization expression of static ButtonScrollEdgeEffectTaggingFeature.isInDisabledBundle();
  static ButtonScrollEdgeEffectTaggingFeature.isInDisabledBundle = result & 1;
  return result;
}

uint64_t closure #1 in variable initialization expression of static ButtonScrollEdgeEffectTaggingFeature.isInDisabledBundle()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == 0x6C7070612E6D6F63 && v5 == 0xEF73656D61672E65)
  {
LABEL_15:

    return 1;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v8 = [v0 mainBundle];
    v9 = [v8 bundleIdentifier];

    if (!v9)
    {
      return 0;
    }

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v10 != 0xD000000000000017 || 0x800000018CD506A0 != v12)
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v14 & 1;
    }

    goto LABEL_15;
  }

  return 1;
}

BOOL protocol witness for static Feature.isEnabled.getter in conformance ButtonScrollEdgeEffectTaggingFeature()
{
  if (one-time initialization token for isInDisabledBundle != -1)
  {
    swift_once();
  }

  return (static ButtonScrollEdgeEffectTaggingFeature.isInDisabledBundle & 1) == 0;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ButtonScrollEdgeEffectTaggingFeature(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance ButtonScrollEdgeEffectTaggingFeature@<X0>(BOOL *a1@<X8>)
{
  if (one-time initialization token for isInDisabledBundle != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = (static ButtonScrollEdgeEffectTaggingFeature.isInDisabledBundle & 1) == 0;
  return result;
}

uint64_t static ScrollEdgeEffectTagModifier._makeView(modifier:inputs:body:)(unsigned int *a1, __int128 *a2, uint64_t (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v38 = a2[2];
  v39 = v5;
  v40 = a2[4];
  v41 = *(a2 + 20);
  v6 = a2[1];
  v36 = *a2;
  v37 = v6;
  v7 = PropertyList.subscript.getter();
  if (v30 == 1 && (v7 = PropertyList.subscript.getter(), (v30 & 1) == 0))
  {
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v30 = v36;
    v31 = v37;
    LOBYTE(v18) = 0;
    outlined init with copy of _ViewInputs(&v36, &v24);
    PropertyList.subscript.setter();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    lazy protocol witness table accessor for type IsInPinnedBar and conformance IsInPinnedBar();
    PropertyList.subscript.getter();
    if (v24 == 1)
    {
      LODWORD(v18) = OffsetAttribute2;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type ScrollEdgeEffectTagModifier.MakePinnedBarElementModifier and conformance ScrollEdgeEffectTagModifier.MakePinnedBarElementModifier();
      Attribute.init<A>(body:value:flags:update:)();
      v26 = v32;
      v27 = v33;
      v28 = v34;
      v29 = v35;
      v24 = v30;
      v25 = v31;
      outlined init with copy of _ViewInputs(&v24, &v18);
      v10 = AGGraphCreateOffsetAttribute2();
      lazy protocol witness table accessor for type PinnedBarConfiguration.Input and conformance PinnedBarConfiguration.Input();
      v11 = PropertyList.subscript.getter();
      if (v18 == *MEMORY[0x1E698D3F8])
      {
        v14 = v26;
        v15 = v27;
        v16 = v28;
        v17 = v29;
        v12 = v24;
        v13 = v25;
        a3(v11, &v12);
      }

      else
      {
        *&v18 = __PAIR64__(v18, v10);
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        lazy protocol witness table accessor for type PinnedBarElementModifier.MakeEffect and conformance PinnedBarElementModifier.MakeEffect();
        Attribute.init<A>(body:value:flags:update:)();
        v14 = v26;
        v15 = v27;
        v16 = v28;
        v17 = v29;
        v12 = v24;
        v13 = v25;
        lazy protocol witness table accessor for type PinnedBarElementEffect and conformance PinnedBarElementEffect();
        static RendererEffect.makeRendererEffect(effect:inputs:body:)();
      }

      v20 = v32;
      v21 = v33;
      v22 = v34;
      v23 = v35;
      v18 = v30;
      v19 = v31;
      outlined destroy of _ViewInputs(&v18);
      return outlined destroy of _ViewInputs(&v24);
    }

    else
    {
      LODWORD(v24) = OffsetAttribute2;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type ScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier and conformance ScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier();
      Attribute.init<A>(body:value:flags:update:)();
      v20 = v32;
      v21 = v33;
      v22 = v34;
      v23 = v35;
      v18 = v30;
      v19 = v31;
      v14 = v32;
      v15 = v33;
      v16 = v34;
      v17 = v35;
      v12 = v30;
      v13 = v31;
      outlined init with copy of _ViewInputs(&v18, &v24);
      lazy protocol witness table accessor for type BarPocketModifier and conformance BarPocketModifier();
      static ViewModifier.makeView(modifier:inputs:body:)();
      v26 = v32;
      v27 = v33;
      v28 = v34;
      v29 = v35;
      v24 = v30;
      v25 = v31;
      outlined destroy of _ViewInputs(&v24);
      return outlined destroy of _ViewInputs(&v18);
    }
  }

  else
  {
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v30 = v36;
    v31 = v37;
    return a3(v7, &v30);
  }
}

unint64_t lazy protocol witness table accessor for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature()
{
  result = lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature;
  if (!lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonScrollEdgeEffectTaggingFeature, &type metadata for ButtonScrollEdgeEffectTaggingFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature;
  if (!lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonScrollEdgeEffectTaggingFeature, &type metadata for ButtonScrollEdgeEffectTaggingFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature;
  if (!lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonScrollEdgeEffectTaggingFeature, &type metadata for ButtonScrollEdgeEffectTaggingFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature;
  if (!lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonScrollEdgeEffectTaggingFeature, &type metadata for ButtonScrollEdgeEffectTaggingFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature;
  if (!lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonScrollEdgeEffectTaggingFeature, &type metadata for ButtonScrollEdgeEffectTaggingFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature;
  if (!lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonScrollEdgeEffectTaggingFeature, &type metadata for ButtonScrollEdgeEffectTaggingFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature);
  }

  return result;
}

uint64_t static UnconditionalScrollEdgeEffectTagModifier._makeView(modifier:inputs:body:)(unsigned int *a1, void *a2, uint64_t (*a3)(void *, unint64_t *), uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = (a2 + 1);
  v6 = *a2;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type IsInPinnedBar and conformance IsInPinnedBar();
  PropertyList.subscript.getter();
  if (v14 == 1)
  {
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type UnconditionalScrollEdgeEffectTagModifier.MakePinnedBarElementModifier and conformance UnconditionalScrollEdgeEffectTagModifier.MakePinnedBarElementModifier();
    Attribute.init<A>(body:value:flags:update:)();
    AGGraphCreateOffsetAttribute2();
    lazy protocol witness table accessor for type PinnedBarConfiguration.Input and conformance PinnedBarConfiguration.Input();
    v8 = PropertyList.subscript.getter();
    if (OffsetAttribute2 == *MEMORY[0x1E698D3F8])
    {
      v14 = v6;
      v9 = *v5;
      v16 = v5[1];
      v10 = v5[3];
      v17 = v5[2];
      v18[0] = v10;
      *(v18 + 12) = *(v5 + 60);
      v15 = v9;
      return a3(v8, &v14);
    }

    else
    {
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type PinnedBarElementModifier.MakeEffect and conformance PinnedBarElementModifier.MakeEffect();
      Attribute.init<A>(body:value:flags:update:)();
      lazy protocol witness table accessor for type PinnedBarElementEffect and conformance PinnedBarElementEffect();
      return static RendererEffect.makeRendererEffect(effect:inputs:body:)();
    }
  }

  else
  {
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type UnconditionalScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier and conformance UnconditionalScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier();
    Attribute.init<A>(body:value:flags:update:)();
    v14 = v6;
    v12 = *v5;
    v16 = v5[1];
    v13 = v5[3];
    v17 = v5[2];
    v18[0] = v13;
    *(v18 + 12) = *(v5 + 60);
    v15 = v12;
    lazy protocol witness table accessor for type BarPocketModifier and conformance BarPocketModifier();
    return static ViewModifier.makeView(modifier:inputs:body:)();
  }
}

_BYTE *protocol witness for Rule.value.getter in conformance ScrollEdgeEffectTagModifier.MakePinnedBarElementModifier@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for BarMagicPocketStyle?();
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier and conformance ScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier()
{
  result = lazy protocol witness table cache variable for type ScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier and conformance ScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier;
  if (!lazy protocol witness table cache variable for type ScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier and conformance ScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier, &unk_1EFFDC1E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier and conformance ScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollEdgeEffectTagModifier.MakePinnedBarElementModifier and conformance ScrollEdgeEffectTagModifier.MakePinnedBarElementModifier()
{
  result = lazy protocol witness table cache variable for type ScrollEdgeEffectTagModifier.MakePinnedBarElementModifier and conformance ScrollEdgeEffectTagModifier.MakePinnedBarElementModifier;
  if (!lazy protocol witness table cache variable for type ScrollEdgeEffectTagModifier.MakePinnedBarElementModifier and conformance ScrollEdgeEffectTagModifier.MakePinnedBarElementModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollEdgeEffectTagModifier.MakePinnedBarElementModifier, &unk_1EFFDC1B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEdgeEffectTagModifier.MakePinnedBarElementModifier and conformance ScrollEdgeEffectTagModifier.MakePinnedBarElementModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnconditionalScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier and conformance UnconditionalScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier()
{
  result = lazy protocol witness table cache variable for type UnconditionalScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier and conformance UnconditionalScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier;
  if (!lazy protocol witness table cache variable for type UnconditionalScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier and conformance UnconditionalScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnconditionalScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier, &unk_1EFFDC190, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UnconditionalScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier and conformance UnconditionalScrollEdgeEffectTagModifier.MakeSafeAreaBarElementModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnconditionalScrollEdgeEffectTagModifier.MakePinnedBarElementModifier and conformance UnconditionalScrollEdgeEffectTagModifier.MakePinnedBarElementModifier()
{
  result = lazy protocol witness table cache variable for type UnconditionalScrollEdgeEffectTagModifier.MakePinnedBarElementModifier and conformance UnconditionalScrollEdgeEffectTagModifier.MakePinnedBarElementModifier;
  if (!lazy protocol witness table cache variable for type UnconditionalScrollEdgeEffectTagModifier.MakePinnedBarElementModifier and conformance UnconditionalScrollEdgeEffectTagModifier.MakePinnedBarElementModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnconditionalScrollEdgeEffectTagModifier.MakePinnedBarElementModifier, &unk_1EFFDC168, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UnconditionalScrollEdgeEffectTagModifier.MakePinnedBarElementModifier and conformance UnconditionalScrollEdgeEffectTagModifier.MakePinnedBarElementModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollEdgeEffectTagModifier and conformance ScrollEdgeEffectTagModifier()
{
  result = lazy protocol witness table cache variable for type ScrollEdgeEffectTagModifier and conformance ScrollEdgeEffectTagModifier;
  if (!lazy protocol witness table cache variable for type ScrollEdgeEffectTagModifier and conformance ScrollEdgeEffectTagModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollEdgeEffectTagModifier, &type metadata for ScrollEdgeEffectTagModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEdgeEffectTagModifier and conformance ScrollEdgeEffectTagModifier);
  }

  return result;
}

void AnyCompositorContentStorageBase.__deallocating_deinit()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type Never and conformance Never()
{
  result = lazy protocol witness table cache variable for type Never and conformance Never;
  if (!lazy protocol witness table cache variable for type Never and conformance Never)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Never, MEMORY[0x1E69E73E0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Never and conformance Never);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AnyCompositorContent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnyCompositorContent and conformance AnyCompositorContent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnyCompositorContent and conformance AnyCompositorContent()
{
  result = lazy protocol witness table cache variable for type AnyCompositorContent and conformance AnyCompositorContent;
  if (!lazy protocol witness table cache variable for type AnyCompositorContent and conformance AnyCompositorContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyCompositorContent, &type metadata for AnyCompositorContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyCompositorContent and conformance AnyCompositorContent);
  }

  return result;
}

uint64_t LabeledNavigationLinkButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrimitiveButtonStyleConfiguration);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a2 = 4;
  type metadata accessor for Button<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>>(0);
  v10 = v9;
  v11 = &a2[*(v9 + 36)];
  *v11 = partial apply for closure #1 in LabeledNavigationLinkButtonStyle.makeBody(configuration:);
  v11[1] = v8;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  v12 = &a2[*(v10 + 40)];
  result = swift_getKeyPath();
  *v12 = result;
  v12[8] = 0;
  return result;
}

void type metadata accessor for Button<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Button<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_4(255, &lazy cache variable for type metadata for NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for NavigationLinkLabel);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label> and conformance NavigationLinkLabel<A>();
    v6 = type metadata accessor for Button(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for Button<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>>);
    }
  }
}

void *initializeBufferWithCopyOfBuffer for DefaultListNavigationLinkStyle.ListLink(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
    v8 = v4 + v7;
    v9 = &a2[v7];
    type metadata accessor for ButtonAction(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v26 = *v9;
      v27 = *(v9 + 1);
      v28 = v9[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v9, v27, v28);
      *v8 = v26;
      *(v8 + 1) = v27;
      v8[16] = v28;
      v29 = *(v9 + 5);
      v30 = *(v9 + 24);
      *(v8 + 24) = v30;
      *(v8 + 5) = v29;
      v31 = v30;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = *v9;
        v12 = *(v9 + 1);
        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        v47 = v9[34];
        v15 = *(v9 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v9, v12, v14, v13, v15, v47);
        *v8 = v11;
        *(v8 + 1) = v12;
        *(v8 + 2) = v14;
        *(v8 + 3) = v13;
        *(v8 + 16) = v15;
        v8[34] = v47;
        v16 = *(v9 + 5);
        v17 = *(v9 + 6);
        v18 = *(v9 + 7);
        v19 = *(v9 + 8);
        v48 = v9[74];
        LOWORD(v14) = *(v9 + 36);
        outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v14, v48);
        *(v8 + 5) = v16;
        *(v8 + 6) = v17;
        *(v8 + 7) = v18;
        *(v8 + 8) = v19;
        *(v8 + 36) = v14;
        v8[74] = v48;
        v20 = *(type metadata accessor for LinkDestination() + 24);
        v21 = &v8[v20];
        v22 = &v9[v20];
        v23 = type metadata accessor for URL();
        (*(*(v23 - 8) + 16))(v21, v22, v23);
        v24 = type metadata accessor for LinkDestination.Configuration();
        v21[*(v24 + 20)] = v22[*(v24 + 20)];
LABEL_9:
        swift_storeEnumTagMultiPayload();
        v33 = *(a3 + 20);
        v34 = v4 + v33;
        v35 = &a2[v33];
        v36 = *v35;
        v37 = *(v35 + 1);
        v38 = *(v35 + 2);
        v39 = *(v35 + 3);
        v40 = v35[32];
        outlined copy of Environment<EdgeInsets>.Content(*v35, v37, v38, v39, v40);
        *v34 = v36;
        *(v34 + 1) = v37;
        *(v34 + 2) = v38;
        *(v34 + 3) = v39;
        v34[32] = v40;
        v41 = *(a3 + 24);
        v42 = v4 + v41;
        v43 = &a2[v41];
        v44 = *v43;
        v45 = v43[8];
        outlined copy of Environment<Bool>.Content();
        *v42 = v44;
        v42[8] = v45;
        return v4;
      }

      v32 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v32;
    }

    goto LABEL_9;
  }

  v25 = *a2;
  *v4 = *a2;
  v4 = (v25 + ((v5 + 16) & ~v5));

  return v4;
}

_BYTE *assignWithCopy for DefaultListNavigationLinkStyle.ListLink(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v7 = *(v6 + 24);
    v8 = &a1[v7];
    v9 = &a2[v7];
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_2(&a1[v7], type metadata accessor for ButtonAction);
    type metadata accessor for ButtonAction(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v26 = *v9;
      v27 = *(v9 + 1);
      v28 = v9[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v9, v27, v28);
      *v8 = v26;
      *(v8 + 1) = v27;
      v8[16] = v28;
      v29 = *(v9 + 3);
      *(v8 + 3) = v29;
      v30 = *(v9 + 5);
      *(v8 + 4) = *(v9 + 4);
      *(v8 + 5) = v30;
      v31 = v29;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v53 = a3;
        v11 = *v9;
        v12 = *(v9 + 1);
        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        v15 = v9[34];
        v16 = *(v9 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v9, v12, v14, v13, v16, v15);
        *v8 = v11;
        *(v8 + 1) = v12;
        *(v8 + 2) = v14;
        *(v8 + 3) = v13;
        *(v8 + 16) = v16;
        v8[34] = v15;
        v17 = *(v9 + 5);
        v18 = *(v9 + 6);
        v19 = *(v9 + 7);
        v20 = *(v9 + 8);
        LOBYTE(v12) = v9[74];
        LOWORD(v14) = *(v9 + 36);
        outlined copy of Environment<OpenURLAction>.Content(v17, v18, v19, v20, v14, v12);
        *(v8 + 5) = v17;
        *(v8 + 6) = v18;
        *(v8 + 7) = v19;
        *(v8 + 8) = v20;
        *(v8 + 36) = v14;
        v8[74] = v12;
        a3 = v53;
        v21 = *(type metadata accessor for LinkDestination() + 24);
        v22 = &v8[v21];
        v23 = &v9[v21];
        v24 = type metadata accessor for URL();
        (*(*(v24 - 8) + 16))(v22, v23, v24);
        v25 = type metadata accessor for LinkDestination.Configuration();
        v22[*(v25 + 20)] = v23[*(v25 + 20)];
LABEL_8:
        swift_storeEnumTagMultiPayload();
        goto LABEL_9;
      }

      v32 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v32;
    }

    goto LABEL_8;
  }

LABEL_9:
  v33 = *(a3 + 20);
  v34 = &a1[v33];
  v35 = &a2[v33];
  v36 = *v35;
  v37 = *(v35 + 1);
  v38 = *(v35 + 2);
  v39 = *(v35 + 3);
  v40 = v35[32];
  outlined copy of Environment<EdgeInsets>.Content(*v35, v37, v38, v39, v40);
  v41 = *v34;
  v42 = *(v34 + 1);
  v43 = *(v34 + 2);
  v44 = *(v34 + 3);
  v45 = v34[32];
  *v34 = v36;
  *(v34 + 1) = v37;
  *(v34 + 2) = v38;
  *(v34 + 3) = v39;
  v34[32] = v40;
  outlined consume of Environment<EdgeInsets>.Content(v41, v42, v43, v44, v45);
  v46 = *(a3 + 24);
  v47 = &a1[v46];
  v48 = &a2[v46];
  v49 = *v48;
  LOBYTE(v36) = v48[8];
  outlined copy of Environment<Bool>.Content();
  v50 = *v47;
  v51 = v47[8];
  *v47 = v49;
  v47[8] = v36;
  outlined consume of Environment<Bool>.Content(v50, v51);
  return a1;
}

_BYTE *initializeWithTake for DefaultListNavigationLinkStyle.ListLink(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for ButtonAction(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v8 + 1);
    *v7 = *v8;
    *(v7 + 1) = v10;
    *(v7 + 31) = *(v8 + 31);
    *(v7 + 40) = *(v8 + 40);
    *(v7 + 56) = *(v8 + 56);
    *(v7 + 71) = *(v8 + 71);
    v11 = *(type metadata accessor for LinkDestination() + 24);
    v12 = &v7[v11];
    v13 = &v8[v11];
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 32))(v12, v13, v14);
    v15 = type metadata accessor for LinkDestination.Configuration();
    v12[*(v15 + 20)] = v13[*(v15 + 20)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

  v16 = *(a3 + 20);
  v17 = *(a3 + 24);
  v18 = &a1[v16];
  v19 = &a2[v16];
  v20 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v20;
  v18[32] = v19[32];
  v21 = &a1[v17];
  v22 = &a2[v17];
  v21[8] = v22[8];
  *v21 = *v22;
  return a1;
}

_BYTE *assignWithTake for DefaultListNavigationLinkStyle.ListLink(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v7 = *(v6 + 24);
    v8 = &a1[v7];
    v9 = &a2[v7];
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_2(&a1[v7], type metadata accessor for ButtonAction);
    v10 = type metadata accessor for ButtonAction(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v11;
      *(v8 + 31) = *(v9 + 31);
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 56) = *(v9 + 56);
      *(v8 + 71) = *(v9 + 71);
      v12 = *(type metadata accessor for LinkDestination() + 24);
      v13 = &v8[v12];
      v14 = &v9[v12];
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 32))(v13, v14, v15);
      v16 = type metadata accessor for LinkDestination.Configuration();
      v13[*(v16 + 20)] = v14[*(v16 + 20)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v8, v9, *(*(v10 - 8) + 64));
    }
  }

  v17 = *(a3 + 20);
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = v19[32];
  v21 = *v18;
  v22 = *(v18 + 1);
  v23 = *(v18 + 2);
  v24 = *(v18 + 3);
  v25 = v18[32];
  v26 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v26;
  v18[32] = v20;
  outlined consume of Environment<EdgeInsets>.Content(v21, v22, v23, v24, v25);
  v27 = *(a3 + 24);
  v28 = &a1[v27];
  v29 = &a2[v27];
  v30 = *v29;
  LOBYTE(v29) = v29[8];
  v31 = *v28;
  v32 = v28[8];
  *v28 = v30;
  v28[8] = v29;
  outlined consume of Environment<Bool>.Content(v31, v32);
  return a1;
}

uint64_t lazy protocol witness table accessor for type InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>> and conformance InvertedViewInputPredicate<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, OpacityRendererEffect>, OnPlatformContainerSelectionModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, OpacityRendererEffect>, OnPlatformContainerSelectionModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, OpacityRendererEffect>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, OpacityRendererEffect>, OnPlatformContainerSelectionModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, OpacityRendererEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, OpacityRendererEffect>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<And(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, type metadata accessor for StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, OpacityRendererEffect>);
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>)
  {
    type metadata accessor for InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, OpacityRendererEffect>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = MEMORY[0x1E697FC98];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<And(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, type metadata accessor for StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v5[1] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>> and conformance InvertedViewInputPredicate<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, MEMORY[0x1E6980688]);
    v5[1] = MEMORY[0x1E697E5D8];
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, _PaddingLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t static __UniversalListStyle._makeView<A>(value:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v22 = a2[2];
  v23 = v7;
  v24 = a2[4];
  v25 = *(a2 + 20);
  v8 = a2[1];
  v20 = *a2;
  v21 = v8;
  v9 = type metadata accessor for SelectionManagerBox(255, a3, a4, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v9);
  v12 = type metadata accessor for UniversalList(255, v9, WitnessTable, v11);
  v13 = type metadata accessor for _VariadicView.Tree();
  v19 = v6;
  v18[0] = &type metadata for __UniversalListStyle;
  v18[1] = a3;
  v18[2] = &protocol witness table for __UniversalListStyle;
  v18[3] = a4;
  type metadata accessor for _ListValue(255, v18);
  type metadata accessor for _GraphValue();
  LODWORD(v18[0]) = _GraphValue.value.getter();
  v15 = type metadata accessor for __UniversalListStyle.Body(0, a3, a4, v14);
  swift_getWitnessTable(protocol conformance descriptor for __UniversalListStyle.Body<A>, v15);
  _GraphValue.init<A>(_:)();
  v17[0] = swift_getWitnessTable(protocol conformance descriptor for UniversalList<A>, v12);
  v17[1] = &protocol witness table for ListStyleContent;
  swift_getWitnessTable(MEMORY[0x1E697E308], v13, v17);
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static __UniversalListStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = type metadata accessor for SelectionManagerBox(255, a3, a4, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v7);
  v10 = type metadata accessor for UniversalList(255, v7, WitnessTable, v9);
  v11 = type metadata accessor for _VariadicView.Tree();
  v17 = v6;
  v16[0] = &type metadata for __UniversalListStyle;
  v16[1] = a3;
  v16[2] = &protocol witness table for __UniversalListStyle;
  v16[3] = a4;
  type metadata accessor for _ListValue(255, v16);
  type metadata accessor for _GraphValue();
  LODWORD(v16[0]) = _GraphValue.value.getter();
  v13 = type metadata accessor for __UniversalListStyle.Body(0, a3, a4, v12);
  swift_getWitnessTable(protocol conformance descriptor for __UniversalListStyle.Body<A>, v13);
  _GraphValue.init<A>(_:)();
  v15[0] = swift_getWitnessTable(protocol conformance descriptor for UniversalList<A>, v10);
  v15[1] = &protocol witness table for ListStyleContent;
  swift_getWitnessTable(MEMORY[0x1E697E308], v11, v15);
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t __UniversalListStyle.Body.base.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[0] = &type metadata for __UniversalListStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for __UniversalListStyle;
  v8[3] = a3;
  v5 = type metadata accessor for _ListValue(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a4, Value, v5);
}

uint64_t __UniversalListStyle.Body.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1;
  v22[1] = a5;
  v8 = type metadata accessor for SelectionManagerBox(255, a2, a3, a4);
  type metadata accessor for Binding();
  v22[0] = type metadata accessor for Optional();
  v9 = *(v22[0] - 8);
  MEMORY[0x1EEE9AC00](v22[0]);
  v11 = v22 - v10;
  v24[0] = &type metadata for __UniversalListStyle;
  v24[1] = a2;
  v24[2] = &protocol witness table for __UniversalListStyle;
  v24[3] = a3;
  v12 = type metadata accessor for _ListValue(0, v24);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v22 - v14;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v8, v13);
  v18 = type metadata accessor for UniversalList(0, v8, WitnessTable, v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v22 - v19;
  __UniversalListStyle.Body.base.getter(a2, a3, v15);
  (*(v9 + 32))(v11, v15, v22[0]);
  UniversalList.init(selection:)(v11, v20);
  v22[4] = a2;
  v22[5] = a3;
  v23 = v7;
  return _VariadicView.Tree.init(_:content:)();
}

uint64_t closure #1 in __UniversalListStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = &type metadata for __UniversalListStyle;
  v10[1] = a2;
  v10[2] = &protocol witness table for __UniversalListStyle;
  v10[3] = a3;
  v5 = type metadata accessor for _ListValue(0, v10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __UniversalListStyle.Body.base.getter(a2, a3, v10 - v7);
  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance __UniversalListStyle.Body<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for SelectionManagerBox(255, *(a1 + 16), *(a1 + 24), a2);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v4);
  type metadata accessor for UniversalList(255, v4, WitnessTable, v6);
  v7 = type metadata accessor for _VariadicView.Tree();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, 1, 1, v7);
}

uint64_t initializeWithCopy for InspectorState(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 17);
  v7 = *(a2 + 16);
  outlined copy of StateOrBinding<Bool>(*a2, v5, v7, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 17) = v6;
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for InspectorState(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 17);
  v7 = *(a2 + 16);
  outlined copy of StateOrBinding<Bool>(*a2, v5, v7, v6);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 17);
  *a1 = v4;
  *(a1 + 8) = v5;
  v11 = *(a1 + 16);
  *(a1 + 16) = v7;
  *(a1 + 17) = v6;
  outlined consume of StateOrBinding<Bool>(v8, v9, v11, v10);
  *(a1 + 18) = *(a2 + 18);
  v12 = *(a2 + 24);
  v13 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v13;
  *(a1 + 24) = v12;
  return a1;
}

uint64_t assignWithTake for InspectorState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 17);
  *a1 = *a2;
  v9 = *(a1 + 16);
  *(a1 + 16) = v4;
  *(a1 + 17) = v5;
  outlined consume of StateOrBinding<Bool>(v6, v7, v9, v8);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for InspectorState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for InspectorState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
      *(result + 32) = 2 * ~a2;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0;
    }
  }

  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance InspectorStorageV5.PreferenceKey(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v5);
  v4 = BYTE2(v5);
  *a1 = (*a1 | v5) & 1;
  a1[2] = (a1[2] | v4) & 1;
  return result;
}

uint64_t PagingScrollView.init(behavior:axis:content:)@<X0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *a7 = *a1;
  a7[1] = a2 & 1;
  type metadata accessor for PagingScrollView(0, a5, a6, a4);
  return a3();
}

uint64_t PagingScrollView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v26 = *(a1 + 16);
  v4 = type metadata accessor for ModifiedContent();
  v25 = *(a1 + 24);
  v44[0] = v25;
  v44[1] = &protocol witness table for ScrollTargetModifier;
  v27 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v44);
  v7 = type metadata accessor for SystemScrollViewContainer(0, v4, WitnessTable, v6);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  type metadata accessor for ScrollBehaviorModifier<PagingScrollViewBehavior>(255, v11, v12, v13);
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v25 - v19;
  v33 = 1 << v2[1];
  v34 = 1;
  v35 = 0u;
  v36 = 0u;
  v37 = 2;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  swift_unknownObjectWeakInit();
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v29 = v26;
  v30 = v25;
  v31 = v2;
  SystemScrollViewContainer.init(configuration:content:)(&v33, partial apply for closure #1 in PagingScrollView.body.getter, v4, WitnessTable, v10);
  v21 = *v2;
  v33 = v2[1];
  v34 = v21;
  v22 = swift_getWitnessTable(protocol conformance descriptor for SystemScrollViewContainer<A>, v7);
  View.scrollTargetBehavior<A>(_:)(&v33, v7, &unk_1EFFDC878, v22);
  (*(v8 + 8))(v10, v7);
  v32[0] = v22;
  v32[1] = &protocol witness table for ScrollBehaviorModifier<A>;
  swift_getWitnessTable(v27, v14, v32);
  static ViewBuilder.buildExpression<A>(_:)();
  v23 = *(v15 + 8);
  v23(v17, v14);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v23)(v20, v14);
}

void type metadata accessor for ScrollBehaviorModifier<PagingScrollViewBehavior>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ScrollBehaviorModifier<PagingScrollViewBehavior>)
  {
    v4 = type metadata accessor for ScrollBehaviorModifier(0, &unk_1EFFDC878, &protocol witness table for PagingScrollViewBehavior, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ScrollBehaviorModifier<PagingScrollViewBehavior>);
    }
  }
}

uint64_t closure #1 in PagingScrollView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  type metadata accessor for PagingScrollView(0, a2, a3, v12);
  View.scrollTargetLayout(isEnabled:)(1, a2, a3);
  v15[0] = a3;
  v15[1] = &protocol witness table for ScrollTargetModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v5, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, v5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v11, v5);
}

void PagingScrollViewBehavior.updateTarget(_:context:)(__int128 *a1, __n128 *a2, __int16 a3)
{
  v3 = a2[11];
  v10[10] = a2[10];
  v10[11] = v3;
  v4 = a2[13];
  v10[12] = a2[12];
  v10[13] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[9];
  v10[8] = a2[8];
  v10[9] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v8 = a2[5];
  v10[4] = a2[4];
  v10[5] = v8;
  v9 = a2[1];
  v10[0] = *a2;
  v10[1] = v9;
  if ((a3 & 0xFF00) == 0x100)
  {
    PagingScrollTargetBehavior.updateTarget(_:context:)(a1, v10);
  }

  else
  {
    ViewAlignedScrollTargetBehavior.updateTarget(_:context:)(a1, v10);
  }
}

void *PagingScrollViewBehavior.properties(context:)@<X0>(void *result@<X0>, __int16 a2@<W1>, char *a3@<X8>)
{
  v4 = 1;
  v5 = 1;
  v6 = 1;
  if ((a2 & 0xFF00) != 0x100)
  {
    v7 = *result;
    v8 = *(result + 16);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
    v9 = v7;
    v10 = v8;
    result = ViewAlignedScrollTargetBehavior.properties(context:)(&v9, v15);
    v6 = v15[0];
    v5 = v15[1];
    v4 = v15[2];
  }

  *a3 = v6;
  a3[1] = v5;
  a3[2] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for PagingScrollView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 2) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 2) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for PagingScrollView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 2) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
    v20 = &a1[v9 + 2] & ~v9;

    v19(v20);
  }

  else
  {
    a1[1] = a2 + 1;
  }
}

unint64_t lazy protocol witness table accessor for type PagingBehavior and conformance PagingBehavior()
{
  result = lazy protocol witness table cache variable for type PagingBehavior and conformance PagingBehavior;
  if (!lazy protocol witness table cache variable for type PagingBehavior and conformance PagingBehavior)
  {
    result = swift_getWitnessTable("ݸ\rb4=\t", &type metadata for PagingBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PagingBehavior and conformance PagingBehavior);
  }

  return result;
}

uint64_t ScrollTest.run<A>(in:completion:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  static Update.ensure<A>(_:)();
  swift_beginAccess();
  outlined init with copy of ScrollTestRunner?(v3 + 56, &v9);
  if (v10)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v9, v11);
    v5 = v12;
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v6 + 8))(v5, v6);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v8 = outlined destroy of ScrollTestRunner?(&v9);
    return a2(v8);
  }
}

void closure #1 in ScrollTest.run<A>(in:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *a1) + 0x50), *((*MEMORY[0x1E69E7D40] & *a1) + 0x58), a4);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v7);
  TestHost.scrollViewProxy.getter(&v29);
  v8 = v29;
  if (v29)
  {
    v28 = v30;
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    v11 = *(a2 + 32);
    v12 = *(a2 + 40);
    v13 = *(a2 + 48);
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a3;
    v15[4] = a4;
    v16 = type metadata accessor for ScrollProxyScrollTestRunner();
    v17 = swift_allocObject();
    *(v17 + 16) = v9;
    *(v17 + 24) = v10;
    *(v17 + 32) = v11;
    *(v17 + 40) = v12;
    *(v17 + 48) = v13;
    *(v17 + 56) = 0;
    *(v17 + 64) = v8;
    *(v17 + 72) = v28;
    *(v17 + 80) = partial apply for closure #1 in closure #1 in ScrollTest.run<A>(in:completion:);
    *(v17 + 88) = v15;
    v31 = v16;
    v32 = &protocol witness table for ScrollProxyScrollTestRunner;
    v29 = v17;

    swift_beginAccess();
  }

  else
  {
    _UIHostingView._topScrollView.getter();
    if (!v18)
    {
      return;
    }

    v19 = v18;
    v20 = *(a2 + 16);
    v21 = *(a2 + 24);
    v22 = *(a2 + 32);
    v23 = *(a2 + 40);
    v24 = *(a2 + 48);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = a3;
    v26[4] = a4;
    v31 = &unk_1EFFDCA60;
    v32 = &protocol witness table for UIScrollViewTestRunner;
    v27 = swift_allocObject();
    v29 = v27;
    *(v27 + 16) = v20;
    *(v27 + 24) = v21;
    *(v27 + 32) = v22;
    *(v27 + 40) = v23;
    *(v27 + 48) = v24;
    *(v27 + 56) = v19;
    *(v27 + 64) = partial apply for closure #2 in closure #1 in ScrollTest.run<A>(in:completion:);
    *(v27 + 72) = v26;
    swift_beginAccess();
  }

  outlined assign with take of ScrollTestRunner?(&v29, a2 + 56);
  swift_endAccess();
}

void _UIHostingView._topScrollView.getter()
{
  v1 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
  v2 = [v0 subviews];
  type metadata accessor for UIView();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  while (1)
  {
    if (v3 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_40;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v3 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()();
    }

    v5 = (v3 & 0xFFFFFFFFFFFFFF8);
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x20);
    memmove(v5 + 4, v5 + 5, 8 * (v6 - 1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_40;
    }

    v9 = [v8 v1[453]];
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = v10 >> 62;
    if (v10 >> 62)
    {
      v12 = __CocoaSet.count.getter();
      v13 = v3 >> 62;
      if (!(v3 >> 62))
      {
LABEL_12:
        v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = v14 + v12;
        if (__OFADD__(v14, v12))
        {
          goto LABEL_39;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v3 >> 62;
      if (!(v3 >> 62))
      {
        goto LABEL_12;
      }
    }

    v28 = __CocoaSet.count.getter();
    v15 = v28 + v12;
    if (__OFADD__(v28, v12))
    {
LABEL_39:
      __break(1u);
LABEL_40:

      return;
    }

LABEL_13:
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v13)
      {
        if (v15 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_18:
      __CocoaSet.count.getter();
      goto LABEL_19;
    }

    if (v13)
    {
      goto LABEL_18;
    }

LABEL_19:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v5 = (v3 & 0xFFFFFFFFFFFFFF8);
LABEL_20:
    v30 = v12;
    v16 = v5[2];
    v17 = v5[3];
    if (!v11)
    {
      v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_2;
      }

      goto LABEL_24;
    }

    v18 = __CocoaSet.count.getter();
    if (v18)
    {
LABEL_24:
      if (((v17 >> 1) - v16) < v30)
      {
        goto LABEL_44;
      }

      v29 = v8;
      v19 = &v5[v16 + 4];
      if (v11)
      {
        if (v18 < 1)
        {
          goto LABEL_46;
        }

        type metadata accessor for ScrollTestRunner?(0, &lazy cache variable for type metadata for [UIView], type metadata accessor for UIView, MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [UIView] and conformance [A]();
        for (i = 0; i != v18; ++i)
        {
          v22 = specialized protocol witness for Collection.subscript.read in conformance [A](v31, i, v10);
          v24 = *v23;
          (v22)(v31, 0);
          *(v19 + 8 * i) = v24;
        }

        v1 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
        v20 = v30;
        if (v30 > 0)
        {
LABEL_32:
          v25 = v5[2];
          v26 = __OFADD__(v25, v20);
          v27 = v25 + v20;
          if (v26)
          {
            goto LABEL_45;
          }

          v5[2] = v27;
        }
      }

      else
      {
        v20 = v30;
        swift_arrayInitWithCopy();

        if (v30 > 0)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
LABEL_2:

      if (v30 > 0)
      {
        goto LABEL_43;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}