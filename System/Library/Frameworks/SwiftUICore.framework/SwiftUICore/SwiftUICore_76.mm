double specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)@<D0>(void *__src@<X0>, Swift::UInt32 a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of GlassEntryLayout(__dst, &v11);

  return _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA010GlassEntryD033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt3B5(__dst, a3, a4, a5, a6);
}

double specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)@<D0>(uint64_t a1@<X0>, Swift::UInt32 a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a1 + 32);
  v11 = *(a1 + 64);
  v15[3] = *(a1 + 48);
  v15[4] = v11;
  v16 = *(a1 + 80);
  v12 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v12;
  v15[2] = v10;
  outlined init with copy of GlassEffectLayout(v15, v14);

  return _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA011GlassEffectD033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt3B5(v15, a3, a4, a5, a6);
}

uint64_t specialized closure #2 in ValueActionDispatcher.updateValue()(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v11[0] = *a1;
  v11[1] = v3;
  v11[2] = v5;
  if (v7)
  {
    v4 = v6;
  }

  else
  {
  }

  outlined copy of _ValueActionModifier2<Int>?(v6, v7, v8);

  v10 = v4;
  return v3(&v10, v11);
}

uint64_t specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5)
{
  v6 = a5[2];
  v7 = *(a5 + 3);
  v8 = *(a5 + 4);
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v5[4] = v9;
  *v9 = v5;
  v9[1] = specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return specialized ScheduledAnimationModifier.animate()(v7, v8, v6);
}

uint64_t specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:)(__n128 a1)
{

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:), v2, v1);
}

uint64_t specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:)()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:)(_OWORD *a1)
{
  v2 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v2;
  v3 = a1[7];
  *(v1 + 112) = a1[6];
  *(v1 + 128) = v3;
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;
  *(v1 + 144) = type metadata accessor for MainActor();
  *(v1 + 152) = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  *(v1 + 160) = v6;
  *v6 = v1;
  v6[1] = specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:);

  return specialized TranslationKickModifier.animate()();
}

uint64_t specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:)(__n128 a1)
{

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:), v2, v1);
}

uint64_t specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:)()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized implicit closure #2 in implicit closure #1 in ScalePulseModifier.body(content:)(uint64_t a1)
{
  v2 = *(a1 + 208);
  *(v1 + 208) = *(a1 + 192);
  *(v1 + 224) = v2;
  *(v1 + 240) = *(a1 + 224);
  *(v1 + 256) = *(a1 + 240);
  v3 = *(a1 + 144);
  *(v1 + 144) = *(a1 + 128);
  *(v1 + 160) = v3;
  v4 = *(a1 + 176);
  *(v1 + 176) = *(a1 + 160);
  *(v1 + 192) = v4;
  v5 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v5;
  v6 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v6;
  v7 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v7;
  v8 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v8;
  v9 = swift_task_alloc();
  *(v1 + 264) = v9;
  *v9 = v1;
  v9[1] = specialized implicit closure #2 in implicit closure #1 in ScalePulseModifier.body(content:);

  return specialized ScalePulseModifier.animate()();
}

uint64_t specialized implicit closure #2 in implicit closure #1 in ScalePulseModifier.body(content:)(__n128 a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t specialized closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue()@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue()(*a1, a1[1], *a2, a2[1]);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

{
  result = specialized closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue()(*a1, a1[1], *a2, a2[1]);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t specialized closure #1 in Attribute.syncMainIfReferences<A>(do:)(_OWORD *a1, void (*a2)(_OWORD *__return_ptr, __int128 *), uint64_t a3, __int128 *a4)
{
  v16 = *a4;
  a2(v17, &v16);
  _ViewInputs.base.modify();
  v5 = a1[5];
  v18[4] = a1[4];
  v18[5] = v5;
  v6 = a1[7];
  v18[6] = a1[6];
  v18[7] = v6;
  v7 = a1[1];
  v18[0] = *a1;
  v18[1] = v7;
  v8 = a1[3];
  v18[2] = a1[2];
  v18[3] = v8;
  v9 = v17[0];
  v10 = v17[1];
  v11 = v17[3];
  a1[2] = v17[2];
  a1[3] = v11;
  *a1 = v9;
  a1[1] = v10;
  v12 = v17[4];
  v13 = v17[5];
  v14 = v17[7];
  a1[6] = v17[6];
  a1[7] = v14;
  a1[4] = v12;
  a1[5] = v13;
  return outlined destroy of ObservationTracking._AccessList?(v18, &lazy cache variable for type metadata for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>?, type metadata accessor for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>, MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
}

uint64_t specialized closure #1 in Attribute.syncMainIfReferences<A>(do:)(void *a1, void (*a2)(void *__return_ptr, __int128 *), uint64_t a3, __int128 *a4)
{
  v6 = *a4;
  a2(__src, &v6);
  _ViewInputs.base.modify();
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(a1, __src, 0x2A8uLL);
  return outlined destroy of GlassEntryView?(__dst, &lazy cache variable for type metadata for GlassEntryView?, &type metadata for GlassEntryView, MEMORY[0x1E69E6720]);
}

double specialized closure #2 in StatefulRule<>.update<A>(to:)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;

  return result;
}

double specialized closure #1 in Gesture.gated<A>(by:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 33);
  if (*(a2 + 9) != 3 || *(a2 + 8) || *a2)
  {
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    *(a3 + 24) = v8;
    *(a3 + 32) = v9;
    *(a3 + 33) = v10;
    return outlined copy of GesturePhase<TappableEvent>(v5, v6, v7, v8, v9, v10);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 768;
  }

  return result;
}

double specialized closure #1 in Gesture.discrete(_:)@<D0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 33);
  v8 = v7 == 1;
  v9 = *(a1 + 32);
  v10 = (a2 & v8) == 0;
  if ((a2 & v8) != 0)
  {
    v11 = *a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10)
  {
    v12 = *(a1 + 32);
  }

  else
  {
    v12 = v9 & 1;
  }

  if (v10)
  {
    v13 = *(a1 + 33);
  }

  else
  {
    v13 = 0;
  }

  *a3 = v11;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v12;
  *(a3 + 33) = v13;
  return outlined copy of GesturePhase<TappableEvent>(v3, v4, v5, v6, v9, v7);
}

void specialized closure #1 in SizeFittingTextLayoutComputer.Engine.debugContentDescription.getter(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*(a1 + 8) + 216);
  if (v3)
  {
    v4 = [v3 string];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

__n128 specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1->n128_u8[8];
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  a2->n128_u64[0] = a1->n128_u64[0];
  a2->n128_u8[8] = v2;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u8[8] = v4;
  result = a1[2];
  a2[2] = result;
  return result;
}

uint64_t partial apply for closure #8 in static _InsetPreferenceModifier._makeView(modifier:inputs:body:)(uint64_t result)
{
  v2 = *(v1 + 16);
  if (*(v1 + 20))
  {
    v2 = *MEMORY[0x1E698D3F8];
  }

  if (*(v1 + 28))
  {
    v3 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v3 = *(v1 + 24);
  }

  *(result + 20) = v2;
  *(result + 24) = v3;
  return result;
}

void lazy protocol witness table accessor for type InsetLayoutComputer and conformance InsetLayoutComputer()
{
  if (!lazy protocol witness table cache variable for type InsetLayoutComputer and conformance InsetLayoutComputer)
  {
    swift_getWitnessTable(protocol conformance descriptor for InsetLayoutComputer, &type metadata for InsetLayoutComputer, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type InsetLayoutComputer and conformance InsetLayoutComputer);
  }
}

void type metadata accessor for (ViewGeometry, ViewGeometry)()
{
  if (!lazy cache variable for type metadata for (ViewGeometry, ViewGeometry))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ViewGeometry, ViewGeometry));
    }
  }
}

void lazy protocol witness table accessor for type InsetChildGeometry and conformance InsetChildGeometry()
{
  if (!lazy protocol witness table cache variable for type InsetChildGeometry and conformance InsetChildGeometry)
  {
    swift_getWitnessTable(protocol conformance descriptor for InsetChildGeometry, &type metadata for InsetChildGeometry, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type InsetChildGeometry and conformance InsetChildGeometry);
  }
}

void lazy protocol witness table accessor for type InsetPrimarySafeAreas and conformance InsetPrimarySafeAreas()
{
  if (!lazy protocol witness table cache variable for type InsetPrimarySafeAreas and conformance InsetPrimarySafeAreas)
  {
    swift_getWitnessTable(protocol conformance descriptor for InsetPrimarySafeAreas, &type metadata for InsetPrimarySafeAreas, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type InsetPrimarySafeAreas and conformance InsetPrimarySafeAreas);
  }
}

void lazy protocol witness table accessor for type InsetPrimaryTransform and conformance InsetPrimaryTransform()
{
  if (!lazy protocol witness table cache variable for type InsetPrimaryTransform and conformance InsetPrimaryTransform)
  {
    swift_getWitnessTable(protocol conformance descriptor for InsetPrimaryTransform, &type metadata for InsetPrimaryTransform, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type InsetPrimaryTransform and conformance InsetPrimaryTransform);
  }
}

uint64_t initializeWithCopy for _InsetPreferenceModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for _InsetPreferenceModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for _InsetPreferenceModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for _InsetPreferenceModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _InsetPreferenceModifier(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t type metadata completion function for SafeAreaSecondaryChild(void *a1)
{
  v13[0] = MEMORY[0x1E69E5D00] + 64;
  v2 = a1[2];
  if (v2 == 1)
  {
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = type metadata accessor for WeakAttribute();
    if (v4 > 0x3F)
    {
      return TupleTypeMetadata;
    }

    TupleTypeMetadata = swift_checkMetadataState();
    if (v5 > 0x3F)
    {
      return TupleTypeMetadata;
    }

LABEL_9:
    v13[1] = *(TupleTypeMetadata - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  if (v2)
  {
    v7 = a1[3] & 0xFFFFFFFFFFFFFFFELL;
    v8 = a1[5] & 0xFFFFFFFFFFFFFFFELL;
    v9 = (v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = v2;
    do
    {
      v7 += 8;
      v8 += 8;
      swift_getAssociatedTypeWitness();
      *v9++ = type metadata accessor for WeakAttribute();
      --v10;
    }

    while (v10);
  }

  TupleTypeMetadata = swift_getTupleTypeMetadata();
  if (v11 <= 0x3F)
  {
    goto LABEL_9;
  }

  return TupleTypeMetadata;
}

_DWORD *initializeBufferWithCopyOfBuffer for SafeAreaSecondaryChild(_DWORD *a1, _DWORD *a2, void *a3)
{
  v4 = a1;
  v5 = a3[2];
  if (v5 == 1)
  {
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = type metadata accessor for WeakAttribute();
  }

  else
  {
    v19[1] = v19;
    MEMORY[0x1EEE9AC00](a1);
    if (v5)
    {
      v9 = *(v7 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v7 + 40) & 0xFFFFFFFFFFFFFFFELL;
      v11 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = v5;
      do
      {
        v9 += 8;
        v10 += 8;
        swift_getAssociatedTypeWitness();
        *v11++ = type metadata accessor for WeakAttribute();
        --v12;
      }

      while (v12);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v13 = *(TupleTypeMetadata - 8);
  v14 = *(v13 + 80);
  if (v14 <= 7 && (*(v13 + 80) & 0x100000) == 0 && ((-5 - v14) | v14) - *(*(TupleTypeMetadata - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *v4 = *a2;
    (*(v13 + 16))((v4 + v14 + 4) & ~v14, (a2 + v14 + 4) & ~v14);
  }

  else
  {
    v17 = *a2;
    *v4 = *a2;
    v4 = (v17 + ((v14 & 0xFC ^ 0x1FC) & (v14 + 16)));
  }

  return v4;
}

void destroy for SafeAreaSecondaryChild(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2 == 1)
  {
    swift_getAssociatedTypeWitness();

    type metadata accessor for WeakAttribute();
  }

  else if (v2)
  {
    v3 = a2[3] & 0xFFFFFFFFFFFFFFFELL;
    v4 = a2[5] & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v3 += 8;
      v4 += 8;
      swift_getAssociatedTypeWitness();
      type metadata accessor for WeakAttribute();
      --v2;
    }

    while (v2);
  }
}

_DWORD *initializeWithCopy for SafeAreaSecondaryChild(_DWORD *a1, _DWORD *a2, void *a3)
{
  *a1 = *a2;
  v5 = a3[2];
  if (v5 == 1)
  {
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = type metadata accessor for WeakAttribute();
  }

  else
  {
    v15[1] = v15;
    MEMORY[0x1EEE9AC00](a1);
    if (v5)
    {
      v9 = *(v7 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v7 + 40) & 0xFFFFFFFFFFFFFFFELL;
      v11 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = v5;
      do
      {
        v9 += 8;
        v10 += 8;
        swift_getAssociatedTypeWitness();
        *v11++ = type metadata accessor for WeakAttribute();
        --v12;
      }

      while (v12);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v13 = *(TupleTypeMetadata - 8);
  (*(v13 + 16))((a1 + *(v13 + 80) + 4) & ~*(v13 + 80), (a2 + *(v13 + 80) + 4) & ~*(v13 + 80));
  return a1;
}

_DWORD *assignWithCopy for SafeAreaSecondaryChild(_DWORD *a1, _DWORD *a2, void *a3)
{
  *a1 = *a2;
  v5 = a3[2];
  if (v5 == 1)
  {
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = type metadata accessor for WeakAttribute();
  }

  else
  {
    v15[1] = v15;
    MEMORY[0x1EEE9AC00](a1);
    if (v5)
    {
      v9 = *(v7 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v7 + 40) & 0xFFFFFFFFFFFFFFFELL;
      v11 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = v5;
      do
      {
        v9 += 8;
        v10 += 8;
        swift_getAssociatedTypeWitness();
        *v11++ = type metadata accessor for WeakAttribute();
        --v12;
      }

      while (v12);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v13 = *(TupleTypeMetadata - 8);
  (*(v13 + 24))((a1 + *(v13 + 80) + 4) & ~*(v13 + 80), (a2 + *(v13 + 80) + 4) & ~*(v13 + 80));
  return a1;
}

_DWORD *initializeWithTake for SafeAreaSecondaryChild(_DWORD *a1, _DWORD *a2, void *a3)
{
  *a1 = *a2;
  v5 = a3[2];
  if (v5 == 1)
  {
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = type metadata accessor for WeakAttribute();
  }

  else
  {
    v15[1] = v15;
    MEMORY[0x1EEE9AC00](a1);
    if (v5)
    {
      v9 = *(v7 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v7 + 40) & 0xFFFFFFFFFFFFFFFELL;
      v11 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = v5;
      do
      {
        v9 += 8;
        v10 += 8;
        swift_getAssociatedTypeWitness();
        *v11++ = type metadata accessor for WeakAttribute();
        --v12;
      }

      while (v12);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v13 = *(TupleTypeMetadata - 8);
  (*(v13 + 32))((a1 + *(v13 + 80) + 4) & ~*(v13 + 80), (a2 + *(v13 + 80) + 4) & ~*(v13 + 80));
  return a1;
}

_DWORD *assignWithTake for SafeAreaSecondaryChild(_DWORD *a1, _DWORD *a2, void *a3)
{
  *a1 = *a2;
  v5 = a3[2];
  if (v5 == 1)
  {
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = type metadata accessor for WeakAttribute();
  }

  else
  {
    v15[1] = v15;
    MEMORY[0x1EEE9AC00](a1);
    if (v5)
    {
      v9 = *(v7 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v7 + 40) & 0xFFFFFFFFFFFFFFFELL;
      v11 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = v5;
      do
      {
        v9 += 8;
        v10 += 8;
        swift_getAssociatedTypeWitness();
        *v11++ = type metadata accessor for WeakAttribute();
        --v12;
      }

      while (v12);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v13 = *(TupleTypeMetadata - 8);
  (*(v13 + 40))((a1 + *(v13 + 80) + 4) & ~*(v13 + 80), (a2 + *(v13 + 80) + 4) & ~*(v13 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for SafeAreaSecondaryChild(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = a1;
  v5 = a3[2];
  if (v5 == 1)
  {
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = type metadata accessor for WeakAttribute();
  }

  else
  {
    v23 = a1;
    MEMORY[0x1EEE9AC00](a1);
    if (v5)
    {
      v9 = *(v7 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v7 + 40) & 0xFFFFFFFFFFFFFFFELL;
      v11 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = v5;
      do
      {
        v9 += 8;
        v10 += 8;
        swift_getAssociatedTypeWitness();
        *v11++ = type metadata accessor for WeakAttribute();
        --v12;
      }

      while (v12);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v4 = v23;
  }

  v13 = *(TupleTypeMetadata - 8);
  v14 = *(v13 + 84);
  v15 = *(v13 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    return (*(v13 + 48))((v4 + v15 + 4) & ~v15);
  }

  v16 = ((v15 + 4) & ~v15) + *(*(TupleTypeMetadata - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(v4 + v16);
      if (!v18)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v19 > 0xFF)
    {
      v18 = *(v4 + v16);
      if (!*(v4 + v16))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v19 < 2)
    {
LABEL_28:
      if (v14)
      {
        return (*(v13 + 48))((v4 + v15 + 4) & ~v15);
      }

      return 0;
    }
  }

  v18 = *(v4 + v16);
  if (!*(v4 + v16))
  {
    goto LABEL_28;
  }

LABEL_17:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 > 3)
    {
      LODWORD(v16) = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        LODWORD(v16) = *v4 | (*(v4 + 2) << 16);
      }

      else
      {
        LODWORD(v16) = *v4;
      }
    }

    else if (v16 == 1)
    {
      LODWORD(v16) = *v4;
    }

    else
    {
      LODWORD(v16) = *v4;
    }
  }

  return v14 + (v16 | v20) + 1;
}

void storeEnumTagSinglePayload for SafeAreaSecondaryChild(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v6 = a1;
  v7 = a4[2];
  if (v7 == 1)
  {
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = type metadata accessor for WeakAttribute();
  }

  else
  {
    v25 = &v25;
    v26 = a1;
    MEMORY[0x1EEE9AC00](a1);
    if (v7)
    {
      v11 = *(v9 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v9 + 40) & 0xFFFFFFFFFFFFFFFELL;
      v13 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v7;
      do
      {
        v11 += 8;
        v12 += 8;
        swift_getAssociatedTypeWitness();
        *v13++ = type metadata accessor for WeakAttribute();
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = v26;
  }

  v15 = *(TupleTypeMetadata - 8);
  v16 = *(v15 + 84);
  v17 = *(v15 + 80);
  v18 = ((v17 + 4) & ~v17) + *(v15 + 64);
  if (a3 <= v16)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v16 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
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
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v16 >= a2)
  {
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        *&v6[v18] = 0;
        if (!a2)
        {
          return;
        }

LABEL_34:
        (*(v15 + 56))(&v6[v17 + 4] & ~v17, a2);
        return;
      }

      *&v6[v18] = 0;
    }

    else if (v19)
    {
      v6[v18] = 0;
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

    goto LABEL_34;
  }

  v20 = ~v16 + a2;
  if (v18 >= 4)
  {
    bzero(v6, v18);
    *v6 = v20;
    v21 = 1;
    if (v19 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v21 = (v20 >> (8 * v18)) + 1;
  if (!v18)
  {
LABEL_39:
    if (v19 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v24 = v20 & ~(-1 << (8 * v18));
  bzero(v6, v18);
  if (v18 == 3)
  {
    *v6 = v24;
    v6[2] = BYTE2(v24);
    goto LABEL_39;
  }

  if (v18 == 2)
  {
    *v6 = v24;
    if (v19 > 1)
    {
LABEL_43:
      if (v19 == 2)
      {
        *&v6[v18] = v21;
      }

      else
      {
        *&v6[v18] = v21;
      }

      return;
    }
  }

  else
  {
    *v6 = v20;
    if (v19 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v19)
  {
    v6[v18] = v21;
  }
}

void type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<GeometryReaderLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<GeometryReaderLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<GeometryReaderLayout>>);
    }
  }
}

uint64_t specialized closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue()(uint64_t a1, char a2, uint64_t a3, char a4)
{
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for WritableKeyPath<EnvironmentValues, Bool>, &type metadata for EnvironmentValues, MEMORY[0x1E69E6370], MEMORY[0x1E69E6CE0]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return AGCompareValues() ^ 1;
  }

  else
  {
    return 1;
  }
}

double specialized closure #1 in LazyStack<>.proposeSizes(at:subviews:context:cache:in:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  if ((*(a1 + 101) & 1) != 0 || *(a1 + 102) == 1)
  {
    if (a5)
    {
      v7 = *&a6;
    }

    else
    {
      v7 = 0;
    }

    if (a5)
    {
      v8 = 0;
    }

    else
    {
      v8 = *&a6;
    }

    LOBYTE(v12[0]) = (a5 & 1) == 0;
    _LazyLayout_Subview.proposeSize(_:)(v7, v12[0], v8, a5 & 1, v12);
    *&result = specialized Array.append(_:)(v12).n128_u64[0];
    goto LABEL_10;
  }

  outlined init with copy of _LazyLayout_Subview(a1, v12);
  *&result = specialized Array.append(_:)(v12).n128_u64[0];
  if (*(*a3 + 16) == a4)
  {
LABEL_10:
    *a2 = 1;
  }

  return result;
}

void specialized LazySubviewPlacements.makeAnchorTranslationIfNeeded(placements:context:newSize:reason:)(uint64_t *a1, double *a2, char *a3, uint64_t a4, void (*a5)(float64x2_t *__return_ptr, uint64_t, __int128 *), void (*a6)(uint64_t, _OWORD *), void (*a7)(uint64_t), uint64_t (*a8)(_OWORD *, uint64_t, uint64_t, double *))
{
  v16 = a2[31];
  v17 = a2[32];
  v18 = a2[33];
  v19 = a2[34];
  v120.origin.x = v16;
  v120.origin.y = v17;
  v120.size.width = v18;
  v120.size.height = v19;
  if (CGRectGetMinX(v120) <= 0.0)
  {
    v121.origin.x = v16;
    v121.origin.y = v17;
    v121.size.width = v18;
    v121.size.height = v19;
    v20 = CGRectGetMinY(v121) <= 0.0;
  }

  else
  {
    v20 = 0;
  }

  v22 = a2[4];
  v21 = a2[5];
  v122.origin.x = v16;
  v122.origin.y = v17;
  v122.size.width = v18;
  v122.size.height = v19;
  if (v22 <= CGRectGetMaxX(v122))
  {
    v123.origin.x = v16;
    v123.origin.y = v17;
    v123.size.width = v18;
    v123.size.height = v19;
    v24 = v21 <= CGRectGetMaxY(v123) || v20;
    if ((v24 & 1) != 0 || v22 == 0.0)
    {
      return;
    }
  }

  else
  {
    v23 = v22 == 0.0 || v20;
    if (v23)
    {
      return;
    }
  }

  if (v21 == 0.0 || (*(v8 + 472) & 1) == 0)
  {
    return;
  }

  AGGraphClearUpdate();
  if (*(v8 + 32) == *MEMORY[0x1E698D3F8])
  {
    AGGraphSetUpdate();
  }

  else
  {
    v25 = *AGGraphGetValue();
    AGGraphSetUpdate();
    if (v25 == 4)
    {
      return;
    }
  }

  v73 = v8;
  v26 = *(v8 + 408);
  v27 = *(v8 + 376);
  v117 = *(v8 + 392);
  v118 = v26;
  v28 = *(v8 + 408);
  v119[0] = *(v8 + 424);
  *(v119 + 9) = *(v8 + 433);
  v29 = *(v8 + 344);
  v30 = *(v8 + 312);
  v113 = *(v8 + 328);
  v114 = v29;
  v31 = *(v8 + 344);
  v32 = *(v8 + 376);
  v115 = *(v8 + 360);
  v116 = v32;
  v33 = *(v8 + 280);
  v109 = *(v8 + 264);
  v110 = v33;
  v34 = *(v8 + 312);
  v36 = *(v8 + 264);
  v35 = *(v8 + 280);
  v111 = *(v8 + 296);
  v112 = v34;
  v103 = v117;
  v104 = v28;
  *v105 = *(v8 + 424);
  *&v105[9] = *(v8 + 433);
  *&v100[64] = v113;
  *&v100[80] = v31;
  v101 = v115;
  v102 = v27;
  *v100 = v36;
  *&v100[16] = v35;
  v106 = 0;
  *&v100[32] = v111;
  *&v100[48] = v30;
  memcpy(__dst, a2, 0x129uLL);
  v37 = PositionState.dispatchViewSizeChange(context:axes:allowedAxes:)(__dst, &v106);
  v107[8] = v103;
  v107[9] = v104;
  v108[0] = *v105;
  *(v108 + 9) = *&v105[9];
  v107[4] = *&v100[64];
  v107[5] = *&v100[80];
  v107[6] = v101;
  v107[7] = v102;
  v107[0] = *v100;
  v107[1] = *&v100[16];
  v107[2] = *&v100[32];
  v107[3] = *&v100[48];
  outlined init with copy of PositionState(&v109, &v89);
  outlined init with copy of PositionState(&v109, &v89);
  outlined destroy of PositionState(v107);
  if (v37)
  {
    outlined destroy of PositionState(&v109);
    v38 = 3;
  }

  else
  {
    v97 = v117;
    v98 = v118;
    v99[0] = v119[0];
    *(v99 + 9) = *(v119 + 9);
    v93 = v113;
    v94 = v114;
    v95 = v115;
    v96 = v116;
    v89 = v109;
    v90 = v110;
    v91 = v111;
    v92 = v112;
    memcpy(__dst, a2, 0x129uLL);
    v39 = PositionState.dispatchContainerSizeChange(context:axes:allowedAxes:)(__dst, &v106);
    v103 = v97;
    v104 = v98;
    *v105 = v99[0];
    *&v105[9] = *(v99 + 9);
    *&v100[64] = v93;
    *&v100[80] = v94;
    v101 = v95;
    v102 = v96;
    *v100 = v89;
    *&v100[16] = v90;
    *&v100[32] = v91;
    *&v100[48] = v92;
    outlined destroy of PositionState(v100);
    if (!v39)
    {
      return;
    }

    v38 = 4;
  }

  v40 = v106;
  specialized LazySubviewPlacements.placedAnchorTranslation(axes:placementContext:placements:)(v106, a2, a1, a5);
  if ((v43 & 1) == 0)
  {
    if (((v41 | v42) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      _s7SwiftUI21LazySubviewPlacementsV20logAnchorTranslation33_3D73F7C05789F75EB77CBB3485F8A0F0LLyys12StaticStringVFAA0C12HStackLayoutV_Tt0g5Tm("found matching old subview", 26, 2);
      *a3 = v38;
    }

    return;
  }

  v44 = *(v73 + 96);
  v72 = *(v73 + 104);
  v88 = 0;
  v86 = v44;
  v87 = 0;
  specialized EnumeratedSequence.Iterator.next()(&v80);
  if (!*(&v80 + 1))
  {
    swift_bridgeObjectRetain_n();
    a6(v73, __dst);

    __dst[2] = v82;
    __dst[3] = v83;
    __dst[4] = v84;
    *&__dst[5] = v85;
    __dst[0] = v80;
    __dst[1] = v81;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(__dst, type metadata accessor for (offset: Int, element: _LazyLayout_PlacedSubview)?);

    a7(v73);
    return;
  }

  v71 = v38;
  v45 = v86;
  swift_bridgeObjectRetain_n();
  a6(v73, __dst);
  *&v100[80] = v85;
  *&v100[48] = v83;
  *&v100[64] = v84;
  *&v100[16] = v81;
  *&v100[32] = v82;
  *v100 = v80;
  v46 = v87;
  v47 = v88;
  v48 = *(v45 + 16);
  if (v87 == v48)
  {
LABEL_49:
    v87 = v46;
    v88 = v47;

    a7(v73);
    v60 = *v100;
    __dst[2] = *&v100[40];
    __dst[3] = *&v100[56];
    __dst[4] = *&v100[72];
    __dst[0] = *&v100[8];
    __dst[1] = *&v100[24];
    specialized LazySubviewPlacements.placedAnchorTranslation(oldSubview:oldIndex:axes:placementContext:placements:)(__dst, *v100, v40, a2, a1);
    if (v63)
    {
      type metadata accessor for LazyLayoutViewCache();
      AGGraphGetValue();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      AGGraphGetValue();
      if (v64 & 1) == 0 || (v65 = a8(__dst, v60, v40, a2), (v67))
      {
        outlined destroy of (offset: Int, element: _LazyLayout_PlacedSubview)(v100);
        return;
      }

      if (((v65 | v66) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        _s7SwiftUI21LazySubviewPlacementsV20logAnchorTranslation33_3D73F7C05789F75EB77CBB3485F8A0F0LLyys12StaticStringVFAA0C12HStackLayoutV_Tt0g5Tm("list changed, found estimated subview", 37, 2);
        outlined destroy of (offset: Int, element: _LazyLayout_PlacedSubview)(v100);
        *a3 = v71;
        return;
      }
    }

    else if (((v61 | v62) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      _s7SwiftUI21LazySubviewPlacementsV20logAnchorTranslation33_3D73F7C05789F75EB77CBB3485F8A0F0LLyys12StaticStringVFAA0C12HStackLayoutV_Tt0g5Tm("found matching new subview", 26, 2);
      outlined destroy of (offset: Int, element: _LazyLayout_PlacedSubview)(v100);
      *a3 = v71;
      return;
    }

    outlined destroy of (offset: Int, element: _LazyLayout_PlacedSubview)(v100);
    return;
  }

  v68 = v40;
  v69 = a8;
  v70 = a3;
  v49 = (v45 + 80 * v87 + 32);
  v50 = (v72 + 32 + 32 * v88);
  while (v46 < v48)
  {
    v89 = *v49;
    v51 = v49[1];
    v52 = v49[2];
    v53 = v49[4];
    v92 = v49[3];
    v93 = v53;
    v90 = v51;
    v91 = v52;
    v75 = v49[1];
    v76 = v49[2];
    v77 = v49[3];
    v78 = v49[4];
    v74 = *v49;
    v54 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_60;
    }

    *&__dst[0] = v47;
    *(&__dst[4] + 8) = v78;
    *(&__dst[3] + 8) = v77;
    *(&__dst[2] + 8) = v76;
    *(&__dst[1] + 8) = v75;
    *(__dst + 8) = v74;
    if (*(v74 + 173) == 1 || *(*(&__dst[0] + 1) + 174) == 1)
    {
      goto LABEL_38;
    }

    if ((v47 & 0x8000000000000000) != 0)
    {
      goto LABEL_61;
    }

    v55 = *(v72 + 16);
    if (v47 >= v55)
    {
      goto LABEL_62;
    }

    if (*(*&v100[8] + 173) == 1 || *(*&v100[8] + 174) == 1)
    {
LABEL_38:
      outlined init with copy of _LazyLayout_PlacedSubview(&v89, &v74);
    }

    else
    {
      if (*v100 >= v55)
      {
        goto LABEL_63;
      }

      v56 = (v72 + 32 + 32 * *v100);
      v57 = *v56;
      v58 = v56[1];
      v59 = vaddvq_f64(vmulq_f64(*v50, *v50));
      outlined init with copy of _LazyLayout_PlacedSubview(&v89, &v74);
      if (sqrt(v59) < sqrt(v57 * v57 + v58 * v58))
      {
        outlined destroy of (offset: Int, element: _LazyLayout_PlacedSubview)(v100);
        *&v100[32] = __dst[2];
        *&v100[48] = __dst[3];
        *&v100[64] = __dst[4];
        *&v100[80] = *&__dst[5];
        *v100 = __dst[0];
        *&v100[16] = __dst[1];
        goto LABEL_40;
      }
    }

    outlined destroy of (offset: Int, element: _LazyLayout_PlacedSubview)(__dst);
LABEL_40:
    ++v46;
    v48 = *(v45 + 16);
    v49 += 5;
    ++v47;
    v50 += 2;
    if (v46 == v48)
    {
      v47 = v54;
      a8 = v69;
      a3 = v70;
      v40 = v68;
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

uint64_t specialized Array.subscript.setter(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(*v6 + 16);
  if (v7 < a5 || v7 < a6)
  {
    goto LABEL_14;
  }

  if (a6 < 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (*v6 + 4 * a5 + 32 != a2 + 4 * a3)
  {
    return specialized Array.replaceSubrange<A>(_:with:)(a5, a6, result, a2, a3, a4);
  }

  if ((a4 >> 1) < a3)
  {
    goto LABEL_16;
  }

  if (a5 != a3 || a4 >> 1 != a6)
  {
    return specialized Array.replaceSubrange<A>(_:with:)(a5, a6, result, a2, a3, a4);
  }

  return result;
}

char *_ss20_ArrayBufferProtocolPsE7copyingxx_tcfCs06_SliceB0Vys6UInt32VG_Tt1g5Tf4gX_n(char *result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5((a3 >> 1) - a2, (a3 >> 1) - a2);
  if (v3 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  result = memcpy(result + 32, &v6[4 * a2], 4 * v4);
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(v7 + 2);
  v9 = __OFADD__(a2, v8);
  v10 = a2 + v8;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

void type metadata accessor for _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for _LayoutRoot<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for _LayoutRoot);
    v3 = v2;
    type metadata accessor for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(255);
    v5 = type metadata accessor for _VariadicView.Tree(a1, v3, v4, &protocol witness table for _LayoutRoot<A>);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>, type metadata accessor for ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, &type metadata for GlassContainerTintConfigModifier, type metadata accessor for ModifiedContent);
    v3 = v2;
    lazy protocol witness table accessor for type ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier> and conformance <> ModifiedContent<A, B>();
    v6 = type metadata accessor for GlassContainerResolver(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>);
    }
  }
}

void type metadata accessor for ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>)
  {
    type metadata accessor for ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>(255);
    v3 = v2;
    lazy protocol witness table accessor for type ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> ForEach<A, B, C>, type metadata accessor for ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>, lazy protocol witness table accessor for type ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
    v6 = type metadata accessor for ZStack(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>);
    }
  }
}

void type metadata accessor for ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for [GlassContainer.Effect], &type metadata for GlassContainer.Effect, MEMORY[0x1E69E62F8]);
    v3 = v2;
    type metadata accessor for ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>(255);
    v5 = v4;
    lazy protocol witness table accessor for type [GlassContainer.Effect] and conformance [A]();
    v7 = v6;
    lazy protocol witness table accessor for type GlassContainer.DisplayMaterial.ID and conformance GlassContainer.DisplayMaterial.ID();
    v11[0] = v3;
    v11[1] = &type metadata for GlassContainer.DisplayMaterial.ID;
    v11[2] = v5;
    v11[3] = v7;
    v11[4] = v8;
    v9 = type metadata accessor for ForEach(a1, v11);
    if (!v10)
    {
      atomic_store(v9, &lazy cache variable for type metadata for ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, type metadata accessor for _TraitWritingModifier);
    v4 = type metadata accessor for ModifiedContent(a1, &type metadata for GlassEffectView, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>);
    }
  }
}

void lazy protocol witness table accessor for type GlassContainer.DisplayMaterial.ID and conformance GlassContainer.DisplayMaterial.ID()
{
  if (!lazy protocol witness table cache variable for type GlassContainer.DisplayMaterial.ID and conformance GlassContainer.DisplayMaterial.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainer.DisplayMaterial.ID, &type metadata for GlassContainer.DisplayMaterial.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainer.DisplayMaterial.ID and conformance GlassContainer.DisplayMaterial.ID);
  }
}

{
  if (!lazy protocol witness table cache variable for type GlassContainer.DisplayMaterial.ID and conformance GlassContainer.DisplayMaterial.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainer.DisplayMaterial.ID, &type metadata for GlassContainer.DisplayMaterial.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainer.DisplayMaterial.ID and conformance GlassContainer.DisplayMaterial.ID);
  }
}

void lazy protocol witness table accessor for type GlassEffectView and conformance GlassEffectView()
{
  if (!lazy protocol witness table cache variable for type GlassEffectView and conformance GlassEffectView)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectView, &type metadata for GlassEffectView, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectView and conformance GlassEffectView);
  }
}

void lazy protocol witness table accessor for type ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier> and conformance <> ModifiedContent<A, B>()
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>, type metadata accessor for ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, &type metadata for GlassContainerTintConfigModifier, type metadata accessor for ModifiedContent);
    v4[0] = &protocol witness table for ZStack<A>;
    v4[1] = &protocol witness table for GlassContainerTintConfigModifier;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
    atomic_store(v3, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier> and conformance <> ModifiedContent<A, B>);
  }
}

uint64_t partial apply for specialized closure #1 in closure #1 in GeometryReader.Child.updateValue()(uint64_t (**a1)(_OWORD *))
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(v2 + 16);
  v6[0] = *v2;
  v6[1] = v4;
  v6[2] = *(v2 + 32);
  v7 = *(v2 + 48);
  return v3(v6);
}

void type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>)
  {
    type metadata accessor for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(255);
    v3 = v2;
    lazy protocol witness table accessor for type ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>, &protocol witness table for GlassContainerResolver<A>, &protocol witness table for _BackdropGroupEffect2);
    v6 = type metadata accessor for GeometryReader(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>);
    }
  }
}

uint64_t partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:)()
{
  return specialized closure #1 in Attribute.syncMainIfReferences<A>(do:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

{
  return specialized closure #1 in Attribute.syncMainIfReferences<A>(do:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

{
  v2 = v0[2];
  v1 = v0[3];
  v4 = *v0[5];
  result = v1(&v4);
  *v2 = 0;
  return result;
}

uint64_t _s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double outlined consume of Environment<String?>.Content(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool))
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for UnsafeMutableBufferPointer<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6738]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool));
    }
  }
}

void type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>(255);
    v3 = v2;
    lazy protocol witness table accessor for type ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &protocol witness table for _ViewModifier_Content<A>, &protocol witness table for GlassEffectContainerModifier);
    v6 = type metadata accessor for _GlassEffectContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier, type metadata accessor for _ViewModifier_Content);
    v4 = type metadata accessor for ModifiedContent(a1, v2, &type metadata for GlassEffectContainerModifier, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>);
    }
  }
}

uint64_t outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<IgnoresAutomaticPaddingLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<IgnoresAutomaticPaddingLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<IgnoresAutomaticPaddingLayout>, lazy protocol witness table accessor for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout, &type metadata for IgnoresAutomaticPaddingLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<IgnoresAutomaticPaddingLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<IgnoresAutomaticPaddingLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<IgnoresAutomaticPaddingLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<IgnoresAutomaticPaddingLayout>, lazy protocol witness table accessor for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout, &type metadata for IgnoresAutomaticPaddingLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<IgnoresAutomaticPaddingLayout>>);
    }
  }
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>>);
    }
  }
}

uint64_t partial apply for specialized closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue()@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  return specialized closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue()(a1, *(v2 + 16), a2);
}

{
  return specialized closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue()(a1, *(v2 + 16), a2);
}

void lazy protocol witness table accessor for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout()
{
  if (!lazy protocol witness table cache variable for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for MoveTransition.MoveLayout, &type metadata for MoveTransition.MoveLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for MoveTransition.MoveLayout, &type metadata for MoveTransition.MoveLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout);
  }
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<MoveTransition.MoveLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<MoveTransition.MoveLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<MoveTransition.MoveLayout>, lazy protocol witness table accessor for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout, &type metadata for MoveTransition.MoveLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<MoveTransition.MoveLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<MoveTransition.MoveLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<MoveTransition.MoveLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<MoveTransition.MoveLayout>, lazy protocol witness table accessor for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout, &type metadata for MoveTransition.MoveLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<MoveTransition.MoveLayout>>);
    }
  }
}

uint64_t partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  outlined destroy of UnaryLayoutEngine<ConcentricPaddingLayout>(a1);

  return outlined init with copy of UnaryLayoutEngine<ConcentricPaddingLayout>(v3, a1);
}

{
  v3 = *(v1 + 16);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v27 = v3[2];
  v28 = v6;
  v25 = v4;
  v26 = v5;
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[7];
  v31 = v3[6];
  v32 = v9;
  v29 = v7;
  v30 = v8;
  v10 = v3[8];
  v11 = v3[9];
  v12 = v3[10];
  v36 = *(v3 + 176);
  v34 = v11;
  v35 = v12;
  v33 = v10;
  v13 = *(a1 + 48);
  v37[2] = *(a1 + 32);
  v37[3] = v13;
  v14 = *(a1 + 16);
  v37[0] = *a1;
  v37[1] = v14;
  v15 = *(a1 + 112);
  v37[6] = *(a1 + 96);
  v37[7] = v15;
  v16 = *(a1 + 80);
  v37[4] = *(a1 + 64);
  v37[5] = v16;
  v38 = *(a1 + 176);
  v17 = *(a1 + 160);
  v37[9] = *(a1 + 144);
  v37[10] = v17;
  v37[8] = *(a1 + 128);
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v37, type metadata accessor for LeafLayoutEngine<_ShapeView<CombinedContentShape, ForegroundStyle>>);
  v18 = v34;
  *(a1 + 128) = v33;
  *(a1 + 144) = v18;
  *(a1 + 160) = v35;
  *(a1 + 176) = v36;
  v19 = v30;
  *(a1 + 64) = v29;
  *(a1 + 80) = v19;
  v20 = v32;
  *(a1 + 96) = v31;
  *(a1 + 112) = v20;
  v21 = v26;
  *a1 = v25;
  *(a1 + 16) = v21;
  v22 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v22;
  return outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v25, v24, type metadata accessor for LeafLayoutEngine<_ShapeView<CombinedContentShape, ForegroundStyle>>);
}

{
  v3 = *(v1 + 16);
  v4 = *v3;
  v5 = v3[2];
  v32 = v3[1];
  v33 = v5;
  v31 = v4;
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[6];
  v36 = v3[5];
  v37 = v8;
  v34 = v6;
  v35 = v7;
  v9 = v3[7];
  v10 = v3[8];
  v11 = v3[10];
  v40 = v3[9];
  v41 = v11;
  v38 = v9;
  v39 = v10;
  v12 = v3[11];
  v13 = v3[12];
  v14 = v3[13];
  v45 = *(v3 + 224);
  v43 = v13;
  v44 = v14;
  v42 = v12;
  v15 = *(a1 + 208);
  v46[12] = *(a1 + 192);
  v46[13] = v15;
  v47 = *(a1 + 224);
  v16 = *(a1 + 144);
  v46[8] = *(a1 + 128);
  v46[9] = v16;
  v17 = *(a1 + 176);
  v46[10] = *(a1 + 160);
  v46[11] = v17;
  v18 = *(a1 + 80);
  v46[4] = *(a1 + 64);
  v46[5] = v18;
  v19 = *(a1 + 112);
  v46[6] = *(a1 + 96);
  v46[7] = v19;
  v20 = *(a1 + 16);
  v46[0] = *a1;
  v46[1] = v20;
  v21 = *(a1 + 48);
  v46[2] = *(a1 + 32);
  v46[3] = v21;
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v46, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, MeshGradient>>);
  v22 = v44;
  *(a1 + 192) = v43;
  *(a1 + 208) = v22;
  *(a1 + 224) = v45;
  v23 = v40;
  *(a1 + 128) = v39;
  *(a1 + 144) = v23;
  v24 = v42;
  *(a1 + 160) = v41;
  *(a1 + 176) = v24;
  v25 = v36;
  *(a1 + 64) = v35;
  *(a1 + 80) = v25;
  v26 = v38;
  *(a1 + 96) = v37;
  *(a1 + 112) = v26;
  v27 = v32;
  *a1 = v31;
  *(a1 + 16) = v27;
  v28 = v34;
  *(a1 + 32) = v33;
  *(a1 + 48) = v28;
  return outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v31, v30, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, MeshGradient>>);
}

{
  v3 = *(v1 + 16);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v27 = v3[2];
  v28 = v6;
  v25 = v4;
  v26 = v5;
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[7];
  v31 = v3[6];
  v32 = v9;
  v29 = v7;
  v30 = v8;
  v10 = v3[8];
  v11 = v3[9];
  v12 = v3[10];
  v36 = *(v3 + 176);
  v34 = v11;
  v35 = v12;
  v33 = v10;
  v13 = *(a1 + 48);
  v37[2] = *(a1 + 32);
  v37[3] = v13;
  v14 = *(a1 + 16);
  v37[0] = *a1;
  v37[1] = v14;
  v15 = *(a1 + 112);
  v37[6] = *(a1 + 96);
  v37[7] = v15;
  v16 = *(a1 + 80);
  v37[4] = *(a1 + 64);
  v37[5] = v16;
  v38 = *(a1 + 176);
  v17 = *(a1 + 160);
  v37[9] = *(a1 + 144);
  v37[10] = v17;
  v37[8] = *(a1 + 128);
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v37, type metadata accessor for LeafLayoutEngine<AnimatedShape<AnyShape>>);
  v18 = v34;
  *(a1 + 128) = v33;
  *(a1 + 144) = v18;
  *(a1 + 160) = v35;
  *(a1 + 176) = v36;
  v19 = v30;
  *(a1 + 64) = v29;
  *(a1 + 80) = v19;
  v20 = v32;
  *(a1 + 96) = v31;
  *(a1 + 112) = v20;
  v21 = v26;
  *a1 = v25;
  *(a1 + 16) = v21;
  v22 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v22;
  return outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v25, v24, type metadata accessor for LeafLayoutEngine<AnimatedShape<AnyShape>>);
}

{
  return partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(a1, outlined destroy of LazyLayoutComputer<LazyVStackLayout>.Engine, outlined init with copy of LazyLayoutComputer<LazyVStackLayout>.Engine);
}

{
  return partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(a1, outlined destroy of LazyLayoutComputer<LazyHStackLayout>.Engine, outlined init with copy of LazyLayoutComputer<LazyHStackLayout>.Engine);
}

{
  return partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(a1, outlined destroy of LeafLayoutEngine<_ShapeView<Rectangle, AngularGradient>>, outlined init with copy of LeafLayoutEngine<_ShapeView<Rectangle, AngularGradient>>);
}

{
  return partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(a1, outlined destroy of LeafLayoutEngine<_ShapeView<Rectangle, EllipticalGradient>>, outlined init with copy of LeafLayoutEngine<_ShapeView<Rectangle, EllipticalGradient>>);
}

{
  return partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(a1, outlined destroy of LeafLayoutEngine<_ShapeView<Rectangle, RadialGradient>>, outlined init with copy of LeafLayoutEngine<_ShapeView<Rectangle, RadialGradient>>);
}

{
  v3 = *(v1 + 16);
  v4 = v3[1];
  v28 = *v3;
  v29 = v4;
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[5];
  v32 = v3[4];
  v33 = v7;
  v30 = v5;
  v31 = v6;
  v8 = v3[6];
  v9 = v3[7];
  v10 = v3[9];
  v36 = v3[8];
  v37 = v10;
  v34 = v8;
  v35 = v9;
  v11 = v3[10];
  v12 = v3[11];
  v13 = v3[12];
  v41 = *(v3 + 208);
  v39 = v12;
  v40 = v13;
  v38 = v11;
  v14 = *(a1 + 16);
  v42[0] = *a1;
  v42[1] = v14;
  v15 = *(a1 + 80);
  v42[4] = *(a1 + 64);
  v42[5] = v15;
  v16 = *(a1 + 48);
  v42[2] = *(a1 + 32);
  v42[3] = v16;
  v17 = *(a1 + 144);
  v42[8] = *(a1 + 128);
  v42[9] = v17;
  v18 = *(a1 + 112);
  v42[6] = *(a1 + 96);
  v42[7] = v18;
  v43 = *(a1 + 208);
  v19 = *(a1 + 192);
  v42[11] = *(a1 + 176);
  v42[12] = v19;
  v42[10] = *(a1 + 160);
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v42, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, LinearGradient>>);
  v20 = v39;
  *(a1 + 160) = v38;
  *(a1 + 176) = v20;
  *(a1 + 192) = v40;
  *(a1 + 208) = v41;
  v21 = v35;
  *(a1 + 96) = v34;
  *(a1 + 112) = v21;
  v22 = v37;
  *(a1 + 128) = v36;
  *(a1 + 144) = v22;
  v23 = v31;
  *(a1 + 32) = v30;
  *(a1 + 48) = v23;
  v24 = v33;
  *(a1 + 64) = v32;
  *(a1 + 80) = v24;
  v25 = v29;
  *a1 = v28;
  *(a1 + 16) = v25;
  return outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v28, v27, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, LinearGradient>>);
}

uint64_t partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)@<X0>(uint64_t a1@<X8>)
{
  return outlined init with copy of UnaryLayoutEngine<ConcentricPaddingLayout>(*(v2 + 16), a1);
}

{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v19[2] = v2[2];
  v19[3] = v5;
  v19[0] = v3;
  v19[1] = v4;
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[7];
  v19[6] = v2[6];
  v19[7] = v8;
  v19[4] = v6;
  v19[5] = v7;
  v9 = v2[8];
  v10 = v2[9];
  v11 = v2[10];
  v20 = *(v2 + 176);
  v19[9] = v10;
  v19[10] = v11;
  v19[8] = v9;
  v12 = v2[9];
  *(a1 + 128) = v2[8];
  *(a1 + 144) = v12;
  *(a1 + 160) = v2[10];
  *(a1 + 176) = *(v2 + 176);
  v13 = v2[5];
  *(a1 + 64) = v2[4];
  *(a1 + 80) = v13;
  v14 = v2[7];
  *(a1 + 96) = v2[6];
  *(a1 + 112) = v14;
  v15 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v15;
  v16 = v2[3];
  *(a1 + 32) = v2[2];
  *(a1 + 48) = v16;
  return outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v19, v18, type metadata accessor for LeafLayoutEngine<_ShapeView<CombinedContentShape, ForegroundStyle>>);
}

{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[2];
  v23[1] = v2[1];
  v23[2] = v4;
  v23[0] = v3;
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[6];
  v23[5] = v2[5];
  v23[6] = v7;
  v23[3] = v5;
  v23[4] = v6;
  v8 = v2[7];
  v9 = v2[8];
  v10 = v2[10];
  v23[9] = v2[9];
  v23[10] = v10;
  v23[7] = v8;
  v23[8] = v9;
  v11 = v2[11];
  v12 = v2[12];
  v13 = v2[13];
  v24 = *(v2 + 224);
  v23[12] = v12;
  v23[13] = v13;
  v23[11] = v11;
  v14 = v2[13];
  *(a1 + 192) = v2[12];
  *(a1 + 208) = v14;
  *(a1 + 224) = *(v2 + 224);
  v15 = v2[9];
  *(a1 + 128) = v2[8];
  *(a1 + 144) = v15;
  v16 = v2[11];
  *(a1 + 160) = v2[10];
  *(a1 + 176) = v16;
  v17 = v2[5];
  *(a1 + 64) = v2[4];
  *(a1 + 80) = v17;
  v18 = v2[7];
  *(a1 + 96) = v2[6];
  *(a1 + 112) = v18;
  v19 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v19;
  v20 = v2[3];
  *(a1 + 32) = v2[2];
  *(a1 + 48) = v20;
  return outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v23, v22, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, MeshGradient>>);
}

{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v19[2] = v2[2];
  v19[3] = v5;
  v19[0] = v3;
  v19[1] = v4;
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[7];
  v19[6] = v2[6];
  v19[7] = v8;
  v19[4] = v6;
  v19[5] = v7;
  v9 = v2[8];
  v10 = v2[9];
  v11 = v2[10];
  v20 = *(v2 + 176);
  v19[9] = v10;
  v19[10] = v11;
  v19[8] = v9;
  v12 = v2[9];
  *(a1 + 128) = v2[8];
  *(a1 + 144) = v12;
  *(a1 + 160) = v2[10];
  *(a1 + 176) = *(v2 + 176);
  v13 = v2[5];
  *(a1 + 64) = v2[4];
  *(a1 + 80) = v13;
  v14 = v2[7];
  *(a1 + 96) = v2[6];
  *(a1 + 112) = v14;
  v15 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v15;
  v16 = v2[3];
  *(a1 + 32) = v2[2];
  *(a1 + 48) = v16;
  return outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v19, v18, type metadata accessor for LeafLayoutEngine<AnimatedShape<AnyShape>>);
}

{
  return partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)(outlined init with copy of LazyLayoutComputer<LazyVStackLayout>.Engine, a1);
}

{
  return partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)(outlined init with copy of LazyLayoutComputer<LazyHStackLayout>.Engine, a1);
}

{
  return partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)(outlined init with copy of LeafLayoutEngine<_ShapeView<Rectangle, AngularGradient>>, a1);
}

{
  return partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)(outlined init with copy of LeafLayoutEngine<_ShapeView<Rectangle, EllipticalGradient>>, a1);
}

{
  return partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)(outlined init with copy of LeafLayoutEngine<_ShapeView<Rectangle, RadialGradient>>, a1);
}

uint64_t outlined destroy of UnaryLayoutEngine<ConcentricPaddingLayout>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<ConcentricPaddingLayout>, lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, type metadata accessor for UnaryLayoutEngine);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout()
{
  if (!lazy protocol witness table cache variable for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout);
  }
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<ConcentricPaddingLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<ConcentricPaddingLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<ConcentricPaddingLayout>, lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<ConcentricPaddingLayout>>);
    }
  }
}

uint64_t outlined init with copy of UnaryLayoutEngine<ConcentricPaddingLayout>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<ConcentricPaddingLayout>, lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, type metadata accessor for UnaryLayoutEngine);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<ConcentricPaddingLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<ConcentricPaddingLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<ConcentricPaddingLayout>, lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<ConcentricPaddingLayout>>);
    }
  }
}

uint64_t outlined destroy of (value: VariableBlurStyle, changed: Bool)(uint64_t a1)
{
  type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (value: VariableBlurStyle, changed: Bool), &type metadata for VariableBlurStyle, MEMORY[0x1E69E6370], "value changed ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for ModifiedContent(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>()
{
  if (!lazy cache variable for type metadata for _ForegroundStyleModifier2<AngularGradient, Color>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for AngularGradient;
    v4[1] = &type metadata for Color;
    v4[2] = &protocol witness table for AngularGradient;
    v4[3] = &protocol witness table for Color;
    v2 = type metadata accessor for _ForegroundStyleModifier2(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for _ForegroundStyleModifier2<AngularGradient, Color>);
    }
  }
}

void type metadata accessor for GestureComponentResponder<TapComponent<TouchEvent>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GestureComponentResponder<TapComponent<TouchEvent>>)
  {
    type metadata accessor for TapComponent<TouchEvent>(255);
    v3 = v2;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type TapComponent<TouchEvent> and conformance TapComponent<A>, type metadata accessor for TapComponent<TouchEvent>, MEMORY[0x1E69A2880]);
    v6 = type metadata accessor for GestureComponentResponder(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for GestureComponentResponder<TapComponent<TouchEvent>>);
    }
  }
}

void type metadata accessor for TapComponent<TouchEvent>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TapComponent<TouchEvent>)
  {
    type metadata accessor for TouchEvent();
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent, MEMORY[0x1E69A2870], MEMORY[0x1E69A2860]);
    v1 = type metadata accessor for TapComponent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TapComponent<TouchEvent>);
    }
  }
}

void lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout()
{
  if (!lazy protocol witness table cache variable for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout);
  }
}

void type metadata accessor for LayoutEngineBox<UnaryPositionAwareLayoutEngine<ContainerCornerOffsetLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryPositionAwareLayoutEngine<ContainerCornerOffsetLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareLayoutEngine<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for UnaryPositionAwareLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<UnaryPositionAwareLayoutEngine<ContainerCornerOffsetLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<UnaryPositionAwareLayoutEngine<ContainerCornerOffsetLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryPositionAwareLayoutEngine<ContainerCornerOffsetLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareLayoutEngine<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for UnaryPositionAwareLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryPositionAwareLayoutEngine<ContainerCornerOffsetLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<SpacingLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<SpacingLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<SpacingLayout>>);
    }
  }
}

void type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type Rectangle.AsymmetricalInset and conformance Rectangle.AsymmetricalInset();
    v5[0] = &type metadata for Rectangle.AsymmetricalInset;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>);
    }
  }
}

void lazy protocol witness table accessor for type Rectangle.AsymmetricalInset and conformance Rectangle.AsymmetricalInset()
{
  if (!lazy protocol witness table cache variable for type Rectangle.AsymmetricalInset and conformance Rectangle.AsymmetricalInset)
  {
    swift_getWitnessTable(protocol conformance descriptor for Rectangle.AsymmetricalInset, &type metadata for Rectangle.AsymmetricalInset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Rectangle.AsymmetricalInset and conformance Rectangle.AsymmetricalInset);
  }
}

{
  if (!lazy protocol witness table cache variable for type Rectangle.AsymmetricalInset and conformance Rectangle.AsymmetricalInset)
  {
    swift_getWitnessTable(protocol conformance descriptor for Rectangle.AsymmetricalInset, &type metadata for Rectangle.AsymmetricalInset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Rectangle.AsymmetricalInset and conformance Rectangle.AsymmetricalInset);
  }
}

uint64_t outlined destroy of GlassEntryView?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool))
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(255, &lazy cache variable for type metadata for ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>, &protocol witness table for _ShapeView<A, B>, type metadata accessor for ShapeStyledResponderData);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, changed: Bool));
    }
  }
}

void type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<CombinedContentShape, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type CombinedContentShape and conformance CombinedContentShape();
    v5[0] = &type metadata for CombinedContentShape;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<CombinedContentShape, ForegroundStyle>);
    }
  }
}

void lazy protocol witness table accessor for type CombinedContentShape and conformance CombinedContentShape()
{
  if (!lazy protocol witness table cache variable for type CombinedContentShape and conformance CombinedContentShape)
  {
    swift_getWitnessTable(protocol conformance descriptor for CombinedContentShape, &type metadata for CombinedContentShape, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CombinedContentShape and conformance CombinedContentShape);
  }
}

{
  if (!lazy protocol witness table cache variable for type CombinedContentShape and conformance CombinedContentShape)
  {
    swift_getWitnessTable(protocol conformance descriptor for CombinedContentShape, &type metadata for CombinedContentShape, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CombinedContentShape and conformance CombinedContentShape);
  }
}

void outlined consume of AnyGestureInfo<()>.Value?(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

void lazy protocol witness table accessor for type AnyResetSeed<()> and conformance AnyResetSeed<A>()
{
  if (!lazy protocol witness table cache variable for type AnyResetSeed<()> and conformance AnyResetSeed<A>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for AnyResetSeed<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyResetSeed);
    swift_getWitnessTable(protocol conformance descriptor for AnyResetSeed<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type AnyResetSeed<()> and conformance AnyResetSeed<A>);
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(255);
    v10 = type metadata accessor for ModifiedContent(a1, v7, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata for SafeAreaPaddingModifier, type metadata accessor for _ViewModifier_Content);
    v3 = v2;
    type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>(255);
    v6 = type metadata accessor for ModifiedContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>);
    }
  }
}

void type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for ModifiedContent<Color, _FrameLayout>, &type metadata for Color, &type metadata for _FrameLayout, type metadata accessor for ModifiedContent);
    v3 = v2;
    lazy protocol witness table accessor for type ModifiedContent<Color, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    v6 = type metadata accessor for _InsetViewModifier(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>);
    }
  }
}

void lazy protocol witness table accessor for type ModifiedContent<Color, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<Color, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for ModifiedContent<Color, _FrameLayout>, &type metadata for Color, &type metadata for _FrameLayout, type metadata accessor for ModifiedContent);
    v4[0] = &protocol witness table for Color;
    v4[1] = &protocol witness table for _FrameLayout;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
    atomic_store(v3, &lazy protocol witness table cache variable for type ModifiedContent<Color, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }
}

void type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_FrameLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<_FrameLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<_FrameLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for UnaryPositionAwareLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaRegionsIgnoringLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for UnaryPositionAwareLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>>);
    }
  }
}

void lazy protocol witness table accessor for type EmptyViewList and conformance EmptyViewList()
{
  if (!lazy protocol witness table cache variable for type EmptyViewList and conformance EmptyViewList)
  {
    swift_getWitnessTable(protocol conformance descriptor for EmptyViewList, &type metadata for EmptyViewList, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EmptyViewList and conformance EmptyViewList);
  }
}

{
  if (!lazy protocol witness table cache variable for type EmptyViewList and conformance EmptyViewList)
  {
    swift_getWitnessTable(protocol conformance descriptor for EmptyViewList, &type metadata for EmptyViewList, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EmptyViewList and conformance EmptyViewList);
  }
}

void lazy protocol witness table accessor for type DynamicViewList<AnyView>.WrappedList and conformance DynamicViewList<A>.WrappedList()
{
  if (!lazy protocol witness table cache variable for type DynamicViewList<AnyView>.WrappedList and conformance DynamicViewList<A>.WrappedList)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for DynamicViewList<AnyView>.WrappedList, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewList.WrappedList);
    swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>.WrappedList, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DynamicViewList<AnyView>.WrappedList and conformance DynamicViewList<A>.WrappedList);
  }
}

uint64_t outlined destroy of (value: MeshGradient._Paint, changed: Bool)(uint64_t a1)
{
  type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (value: MeshGradient._Paint, changed: Bool), &type metadata for MeshGradient._Paint, MEMORY[0x1E69E6370], "value changed ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _ShapeView<Rectangle, MeshGradient>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Rectangle, MeshGradient>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v5[0] = &type metadata for Rectangle;
    v5[1] = &type metadata for MeshGradient;
    v5[2] = v2;
    v5[3] = &protocol witness table for MeshGradient;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<Rectangle, MeshGradient>);
    }
  }
}

uint64_t outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for (value: MeshGradient?, changed: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (value: MeshGradient?, changed: Bool))
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for MeshGradient?, &type metadata for MeshGradient, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: MeshGradient?, changed: Bool));
    }
  }
}

void type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape();
    v5[0] = &type metadata for PartialContainerRelativeShape;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>);
    }
  }
}

void lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape()
{
  if (!lazy protocol witness table cache variable for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape)
  {
    swift_getWitnessTable(protocol conformance descriptor for PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape);
  }
}

{
  if (!lazy protocol witness table cache variable for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape)
  {
    swift_getWitnessTable(protocol conformance descriptor for PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape);
  }
}

void type metadata accessor for LeafLayoutEngine<AnimatedShape<PartialContainerRelativeShape>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<PartialContainerRelativeShape>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatedShape);
    v4 = type metadata accessor for LeafLayoutEngine(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<PartialContainerRelativeShape>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatedShape);
    v4 = type metadata accessor for ShapeStyledResponderData(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>);
    }
  }
}

uint64_t _s7SwiftUI24ShapeStyledResponderDataVyAA08AnimatedC0VyAA024PartialContainerRelativeC0VGGSgWOg(uint64_t a1)
{
  v1 = *(a1 + 248);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<ImplicitContainerShape, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type ImplicitContainerShape and conformance ImplicitContainerShape();
    v5[0] = &type metadata for ImplicitContainerShape;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<ImplicitContainerShape, ForegroundStyle>);
    }
  }
}

void lazy protocol witness table accessor for type ImplicitContainerShape and conformance ImplicitContainerShape()
{
  if (!lazy protocol witness table cache variable for type ImplicitContainerShape and conformance ImplicitContainerShape)
  {
    swift_getWitnessTable(protocol conformance descriptor for ImplicitContainerShape, &type metadata for ImplicitContainerShape, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ImplicitContainerShape and conformance ImplicitContainerShape);
  }
}

{
  if (!lazy protocol witness table cache variable for type ImplicitContainerShape and conformance ImplicitContainerShape)
  {
    swift_getWitnessTable(protocol conformance descriptor for ImplicitContainerShape, &type metadata for ImplicitContainerShape, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ImplicitContainerShape and conformance ImplicitContainerShape);
  }
}

void type metadata accessor for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset();
    v5[0] = &type metadata for ContainerRelativeShape._Inset;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>);
    }
  }
}

void lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset()
{
  if (!lazy protocol witness table cache variable for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset);
  }
}

{
  if (!lazy protocol witness table cache variable for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset);
  }
}

{
  if (!lazy protocol witness table cache variable for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset);
  }
}

void type metadata accessor for LeafLayoutEngine<AnimatedShape<ContainerRelativeShape._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<ContainerRelativeShape._Inset>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for AnimatedShape<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset, type metadata accessor for AnimatedShape);
    v4 = type metadata accessor for LeafLayoutEngine(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<ContainerRelativeShape._Inset>>);
    }
  }
}

void type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<ConcentricRectangle, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle();
    v5[0] = &type metadata for ConcentricRectangle;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<ConcentricRectangle, ForegroundStyle>);
    }
  }
}

void lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle()
{
  if (!lazy protocol witness table cache variable for type ConcentricRectangle and conformance ConcentricRectangle)
  {
    swift_getWitnessTable(protocol conformance descriptor for ConcentricRectangle, &type metadata for ConcentricRectangle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ConcentricRectangle and conformance ConcentricRectangle);
  }
}

{
  if (!lazy protocol witness table cache variable for type ConcentricRectangle and conformance ConcentricRectangle)
  {
    swift_getWitnessTable(protocol conformance descriptor for ConcentricRectangle, &type metadata for ConcentricRectangle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ConcentricRectangle and conformance ConcentricRectangle);
  }
}

void type metadata accessor for LeafLayoutEngine<AnimatedShape<ConcentricRectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<ConcentricRectangle>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatedShape);
    v4 = type metadata accessor for LeafLayoutEngine(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<ConcentricRectangle>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatedShape);
    v4 = type metadata accessor for ShapeStyledResponderData(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>);
    }
  }
}

uint64_t _s7SwiftUI24ShapeStyledResponderDataVyAA08AnimatedC0VyAA19ConcentricRectangleVGGSgWOg(uint64_t a1)
{
  v1 = *(a1 + 392);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_FlexFrameLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<_FlexFrameLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_FlexFrameLayout>, lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout, &type metadata for _FlexFrameLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<_FlexFrameLayout>>);
    }
  }
}

void lazy protocol witness table accessor for type _AlignmentLayout and conformance _AlignmentLayout()
{
  if (!lazy protocol witness table cache variable for type _AlignmentLayout and conformance _AlignmentLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _AlignmentLayout, &type metadata for _AlignmentLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _AlignmentLayout and conformance _AlignmentLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type _AlignmentLayout and conformance _AlignmentLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _AlignmentLayout, &type metadata for _AlignmentLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _AlignmentLayout and conformance _AlignmentLayout);
  }
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_AlignmentLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_AlignmentLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_AlignmentLayout>, lazy protocol witness table accessor for type _AlignmentLayout and conformance _AlignmentLayout, &type metadata for _AlignmentLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_AlignmentLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_AlignmentLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<_AlignmentLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_AlignmentLayout>, lazy protocol witness table accessor for type _AlignmentLayout and conformance _AlignmentLayout, &type metadata for _AlignmentLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<_AlignmentLayout>>);
    }
  }
}

void type metadata accessor for _ShapeView<Circle._Inset, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Circle._Inset, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset();
    v5[0] = &type metadata for Circle._Inset;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<Circle._Inset, ForegroundStyle>);
    }
  }
}

void type metadata accessor for LeafLayoutEngine<AnimatedShape<Circle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<Circle._Inset>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for AnimatedShape<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, &type metadata for Circle._Inset, type metadata accessor for AnimatedShape);
    v4 = type metadata accessor for LeafLayoutEngine(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<Circle._Inset>>);
    }
  }
}

void type metadata accessor for _ShapeView<Ellipse._Inset, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Ellipse._Inset, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset();
    v5[0] = &type metadata for Ellipse._Inset;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<Ellipse._Inset, ForegroundStyle>);
    }
  }
}

void lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset()
{
  if (!lazy protocol witness table cache variable for type Ellipse._Inset and conformance Ellipse._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for Ellipse._Inset, &type metadata for Ellipse._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Ellipse._Inset and conformance Ellipse._Inset);
  }
}

{
  if (!lazy protocol witness table cache variable for type Ellipse._Inset and conformance Ellipse._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for Ellipse._Inset, &type metadata for Ellipse._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Ellipse._Inset and conformance Ellipse._Inset);
  }
}

{
  if (!lazy protocol witness table cache variable for type Ellipse._Inset and conformance Ellipse._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for Ellipse._Inset, &type metadata for Ellipse._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Ellipse._Inset and conformance Ellipse._Inset);
  }
}

void type metadata accessor for LeafLayoutEngine<AnimatedShape<Ellipse._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<Ellipse._Inset>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for AnimatedShape<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset, &type metadata for Ellipse._Inset, type metadata accessor for AnimatedShape);
    v4 = type metadata accessor for LeafLayoutEngine(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<Ellipse._Inset>>);
    }
  }
}

void type metadata accessor for _ShapeView<Capsule._Inset, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Capsule._Inset, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset();
    v5[0] = &type metadata for Capsule._Inset;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<Capsule._Inset, ForegroundStyle>);
    }
  }
}

void lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset()
{
  if (!lazy protocol witness table cache variable for type Capsule._Inset and conformance Capsule._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for Capsule._Inset, &type metadata for Capsule._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Capsule._Inset and conformance Capsule._Inset);
  }
}

{
  if (!lazy protocol witness table cache variable for type Capsule._Inset and conformance Capsule._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for Capsule._Inset, &type metadata for Capsule._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Capsule._Inset and conformance Capsule._Inset);
  }
}

{
  if (!lazy protocol witness table cache variable for type Capsule._Inset and conformance Capsule._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for Capsule._Inset, &type metadata for Capsule._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Capsule._Inset and conformance Capsule._Inset);
  }
}

void type metadata accessor for LeafLayoutEngine<AnimatedShape<Capsule._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<Capsule._Inset>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for AnimatedShape<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, &type metadata for Capsule._Inset, type metadata accessor for AnimatedShape);
    v4 = type metadata accessor for LeafLayoutEngine(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<Capsule._Inset>>);
    }
  }
}

void type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset();
    v5[0] = &type metadata for UnevenRoundedRectangle._Inset;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>);
    }
  }
}

void lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset()
{
  if (!lazy protocol witness table cache variable for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset);
  }
}

{
  if (!lazy protocol witness table cache variable for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset);
  }
}

{
  if (!lazy protocol witness table cache variable for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset);
  }
}

void type metadata accessor for LeafLayoutEngine<AnimatedShape<UnevenRoundedRectangle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<UnevenRoundedRectangle._Inset>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatedShape);
    v4 = type metadata accessor for LeafLayoutEngine(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<UnevenRoundedRectangle._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatedShape);
    v4 = type metadata accessor for ShapeStyledResponderData(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>);
    }
  }
}

void type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset();
    v5[0] = &type metadata for RoundedRectangle._Inset;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>);
    }
  }
}

void type metadata accessor for LeafLayoutEngine<AnimatedShape<RoundedRectangle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<RoundedRectangle._Inset>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatedShape);
    v4 = type metadata accessor for LeafLayoutEngine(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<RoundedRectangle._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatedShape);
    v4 = type metadata accessor for ShapeStyledResponderData(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>);
    }
  }
}

void type metadata accessor for _ShapeView<Rectangle._Inset, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Rectangle._Inset, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset();
    v5[0] = &type metadata for Rectangle._Inset;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<Rectangle._Inset, ForegroundStyle>);
    }
  }
}

void type metadata accessor for LeafLayoutEngine<AnimatedShape<Rectangle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<Rectangle._Inset>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for AnimatedShape<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, &type metadata for Rectangle._Inset, type metadata accessor for AnimatedShape);
    v4 = type metadata accessor for LeafLayoutEngine(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<Rectangle._Inset>>);
    }
  }
}

void type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Ellipse, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type Ellipse and conformance Ellipse();
    v5[0] = &type metadata for Ellipse;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<Ellipse, ForegroundStyle>);
    }
  }
}

void lazy protocol witness table accessor for type Ellipse and conformance Ellipse()
{
  if (!lazy protocol witness table cache variable for type Ellipse and conformance Ellipse)
  {
    swift_getWitnessTable(protocol conformance descriptor for Ellipse, &type metadata for Ellipse, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Ellipse and conformance Ellipse);
  }
}

{
  if (!lazy protocol witness table cache variable for type Ellipse and conformance Ellipse)
  {
    swift_getWitnessTable(protocol conformance descriptor for Ellipse, &type metadata for Ellipse, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Ellipse and conformance Ellipse);
  }
}

void type metadata accessor for _ShapeView<Capsule, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Capsule, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type Capsule and conformance Capsule();
    v5[0] = &type metadata for Capsule;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<Capsule, ForegroundStyle>);
    }
  }
}

void type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle();
    v5[0] = &type metadata for UnevenRoundedRectangle;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>);
    }
  }
}

void type metadata accessor for LeafLayoutEngine<AnimatedShape<UnevenRoundedRectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<UnevenRoundedRectangle>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatedShape);
    v4 = type metadata accessor for LeafLayoutEngine(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<UnevenRoundedRectangle>>);
    }
  }
}

void type metadata accessor for (value: _ShapeView<Rectangle, MeshGradient>, changed: Bool)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatedShape);
    v4 = type metadata accessor for ShapeStyledResponderData(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>);
    }
  }
}

void type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool))
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(255, &lazy cache variable for type metadata for ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, type metadata accessor for _ShapeView<Path, ForegroundStyle>, &protocol witness table for _ShapeView<A, B>, type metadata accessor for ShapeStyledResponderData);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, changed: Bool));
    }
  }
}

double outlined consume of ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  if (a6)
  {
    outlined consume of Path.Storage(a1, a2, a3, a4, a5);
  }

  return result;
}

void type metadata accessor for LeafLayoutEngine<AnimatedShape<AnyShape>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<AnyShape>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for AnimatedShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for AnimatedShape);
    v4 = type metadata accessor for LeafLayoutEngine(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LeafLayoutEngine<AnimatedShape<AnyShape>>);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Font?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for Font?, &type metadata for Font, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>);
    }
  }
}

double outlined consume of _EnvironmentKeyWritingModifier<Font?>?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

void type metadata accessor for WritableKeyPath<EnvironmentValues, Font?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for WritableKeyPath<EnvironmentValues, Font?>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for Font?, &type metadata for Font, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for WritableKeyPath();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for WritableKeyPath<EnvironmentValues, Font?>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>(255, &lazy cache variable for type metadata for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, &lazy cache variable for type metadata for _ValueTransactionModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
    v3 = v2;
    type metadata accessor for _EnvironmentKeyWritingModifier<Font?>(255);
    v6 = type metadata accessor for ModifiedContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>)
  {
    type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>(255);
    v3 = v2;
    lazy protocol witness table accessor for type ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>> and conformance <> ForEach<A, B, C>, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
    v7[0] = &type metadata for Text.LayoutKey;
    v7[1] = v3;
    v7[2] = &protocol witness table for Text.LayoutKey;
    v7[3] = v4;
    v5 = type metadata accessor for _OverlayPreferenceModifier(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>);
    }
  }
}

void type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>)
  {
    v2 = MEMORY[0x1E69E6530];
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v4 = v3;
    type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>(255);
    v6 = v5;
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v10[0] = v4;
    v10[1] = v2;
    v10[2] = v6;
    v10[3] = v7;
    v10[4] = MEMORY[0x1E69E6540];
    v8 = type metadata accessor for ForEach(a1, v10);
    if (!v9)
    {
      atomic_store(v8, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>)
  {
    type metadata accessor for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>(255, &lazy cache variable for type metadata for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, &lazy cache variable for type metadata for _ValueTransactionModifier<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63E0]);
    v4 = type metadata accessor for ModifiedContent(a1, v2, &type metadata for _OffsetEffect, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>);
    }
  }
}

void type metadata accessor for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, a3, a4, a5, type metadata accessor for _ValueTransactionModifier);
    v9 = type metadata accessor for ModifiedContent(a1, &type metadata for SummarySymbol, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v3 = v2;
    lazy protocol witness table accessor for type Int and conformance Int();
    v6[0] = MEMORY[0x1E69E6570];
    v6[1] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E66E8], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }
}

void lazy protocol witness table accessor for type ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> ForEach<A, B, C>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  if (!*a1)
  {
    v5 = a2(255);
    v7 = a3();
    swift_getWitnessTable("A}b", v5, &v7);
    atomic_store(v6, a1);
  }
}

void lazy protocol witness table accessor for type ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a1)
  {
    v7 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v9);
    atomic_store(v8, a1);
  }
}

void lazy protocol witness table accessor for type ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>> and conformance <> ModifiedContent<A, B>()
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>(255, &lazy cache variable for type metadata for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, &lazy cache variable for type metadata for _ValueTransactionModifier<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63E0]);
    v3 = v2;
    lazy protocol witness table accessor for type SummarySymbol and conformance SummarySymbol();
    v6[0] = v4;
    v6[1] = &protocol witness table for _ValueTransactionModifier<A>;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>> and conformance <> ModifiedContent<A, B>);
  }
}

void lazy protocol witness table accessor for type SummarySymbol and conformance SummarySymbol()
{
  if (!lazy protocol witness table cache variable for type SummarySymbol and conformance SummarySymbol)
  {
    swift_getWitnessTable(protocol conformance descriptor for SummarySymbol, &type metadata for SummarySymbol, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SummarySymbol and conformance SummarySymbol);
  }
}

void type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Info(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E69E6530];
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v8 = v7;
    type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>(255);
    v10 = v9;
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v12 = v11;
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    v16[0] = v8;
    v16[1] = v6;
    v16[2] = v10;
    v16[3] = v12;
    v16[4] = MEMORY[0x1E69E6540];
    v16[5] = v13;
    v14 = a3(a1, v16);
    if (!v15)
    {
      atomic_store(v14, a2);
    }
  }
}

double specialized closure #1 in ScheduledAnimationModifier.body(content:)(uint64_t a1, __int128 *a2)
{
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  if (*(a2 + 1) != a1)
  {
    v8 = *(a2 + 6);
    v9 = specialized State.wrappedValue.getter(*(a2 + 5), v8);
    if (v9)
    {
      v10 = v9;
      v11 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Error, MEMORY[0x1E69E7280]);
      MEMORY[0x193ABF3F0](v10, MEMORY[0x1E69E7CA8] + 8, v11, MEMORY[0x1E69E7288]);
    }

    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = a2[1];
    v18 = *a2;
    v19 = v13;
    v20 = a2[2];
    v21 = *(a2 + 6);
    type metadata accessor for MainActor();
    swift_retain_n();
    swift_retain_n();

    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    *(v15 + 16) = v14;
    *(v15 + 24) = v16;
    v17 = v19;
    *(v15 + 32) = v18;
    *(v15 + 48) = v17;
    *(v15 + 64) = v20;
    *(v15 + 80) = v21;
    *&v18 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:), v15);
    if (v8)
    {
      (*(*v8 + 128))(&v18, 0);
    }
  }

  return result;
}

uint64_t specialized ScheduledAnimationModifier.animate()(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  v4 = type metadata accessor for ContinuousClock();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 64) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 72) = v6;
  *(v3 + 80) = v5;

  return MEMORY[0x1EEE6DFA0](specialized ScheduledAnimationModifier.animate(), v6, v5);
}

uint64_t specialized ScheduledAnimationModifier.animate()(uint64_t a1)
{
  if (*(v1 + 16) <= 0.0)
  {
    v8 = (*(v1 + 24) + **(v1 + 24));
    v7 = swift_task_alloc();
    *(v1 + 96) = v7;
    *v7 = v1;
    v7[1] = specialized ScheduledAnimationModifier.animate();

    return v8();
  }

  else
  {
    v2 = static Duration.seconds(_:)();
    v4 = v3;
    static Clock<>.continuous.getter();
    v5 = swift_task_alloc();
    *(v1 + 88) = v5;
    *v5 = v1;
    v5[1] = specialized ScheduledAnimationModifier.animate();

    return specialized Clock.sleep(for:tolerance:)(v2, v4, 0, 0, 1);
  }
}

uint64_t specialized ScheduledAnimationModifier.animate()(__n128 a1)
{
  v3 = *v2;
  v4 = *v2;

  if (v1)
  {
    v6 = v3[6];
    v5 = v3[7];
    v7 = v3[5];

    (*(v6 + 8))(v5, v7);
    v8 = v3[9];
    v9 = v3[10];

    return MEMORY[0x1EEE6DFA0](specialized ScheduledAnimationModifier.animate(), v8, v9);
  }

  else
  {
    (*(v3[6] + 8))(v3[7], v3[5]);
    v12 = (v3[3] + *v3[3]);
    v10 = swift_task_alloc();
    v3[12] = v10;
    *v10 = v4;
    v10[1] = specialized ScheduledAnimationModifier.animate();

    return v12();
  }
}

{
  v2 = *v1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](specialized ScheduledAnimationModifier.animate(), v4, v3);
}

uint64_t specialized ScheduledAnimationModifier.animate()()
{
  v3 = (*(v0 + 24) + **(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = specialized ScheduledAnimationModifier.animate();

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t outlined destroy of LazyLayoutComputer<LazyVStackLayout>.Engine(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazyLayoutComputer<LazyVStackLayout>.Engine, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazyLayoutComputer.Engine);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout()
{
  if (!lazy protocol witness table cache variable for type LazyVStackLayout and conformance LazyVStackLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for LazyVStackLayout, &type metadata for LazyVStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyVStackLayout and conformance LazyVStackLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type LazyVStackLayout and conformance LazyVStackLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for LazyVStackLayout, &type metadata for LazyVStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyVStackLayout and conformance LazyVStackLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type LazyVStackLayout and conformance LazyVStackLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for LazyVStackLayout, &type metadata for LazyVStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyVStackLayout and conformance LazyVStackLayout);
  }
}

void type metadata accessor for LayoutEngineBox<LazyLayoutComputer<LazyVStackLayout>.Engine>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<LazyLayoutComputer<LazyVStackLayout>.Engine>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for LazyLayoutComputer<LazyVStackLayout>.Engine, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazyLayoutComputer.Engine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for LazyLayoutComputer<A>.Engine, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<LazyLayoutComputer<LazyVStackLayout>.Engine>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<LazyLayoutComputer<LazyVStackLayout>.Engine>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<LazyLayoutComputer<LazyVStackLayout>.Engine>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for LazyLayoutComputer<LazyVStackLayout>.Engine, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazyLayoutComputer.Engine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for LazyLayoutComputer<A>.Engine, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<LazyLayoutComputer<LazyVStackLayout>.Engine>);
    }
  }
}

uint64_t outlined init with copy of LazyLayoutComputer<LazyVStackLayout>.Engine(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazyLayoutComputer<LazyVStackLayout>.Engine, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazyLayoutComputer.Engine);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of LazySubviewPrefetcher<LazyVStackLayout>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazySubviewPrefetcher<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazySubviewPrefetcher);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of LazySubviewPrefetcher<LazyVStackLayout>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazySubviewPrefetcher<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazySubviewPrefetcher);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of _LazyStack_Cache<LazyVStackLayout>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void lazy protocol witness table accessor for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for EnvironmentFetch<LazySubviewMinorSizingConfiguration>, &type metadata for LazySubviewMinorSizingConfiguration, type metadata accessor for EnvironmentFetch);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentFetch<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>);
  }
}

{
  if (!lazy protocol witness table cache variable for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for EnvironmentFetch<LazySubviewMinorSizingConfiguration>, &type metadata for LazySubviewMinorSizingConfiguration, type metadata accessor for EnvironmentFetch);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentFetch<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>);
  }
}

uint64_t partial apply for specialized closure #1 in LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:)(uint64_t a1)
{
  return specialized closure #1 in LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), outlined init with copy of LazySubviewPlacements<LazyVStackLayout>, &type metadata for LazyVStackLayout, outlined destroy of LazySubviewPlacements<LazyVStackLayout>, specialized LazyStack<>.place(subviews:context:cache:in:));
}

{
  return specialized closure #1 in LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), outlined init with copy of LazySubviewPlacements<LazyHStackLayout>, &type metadata for LazyHStackLayout, outlined destroy of LazySubviewPlacements<LazyHStackLayout>, specialized LazyStack<>.place(subviews:context:cache:in:));
}

uint64_t outlined init with copy of LazySubviewPlacements<LazyVStackLayout>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazySubviewPlacements<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazySubviewPlacements);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of LazySubviewPlacements<LazyVStackLayout>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazySubviewPlacements<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazySubviewPlacements);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (offset: Int, element: _LazyLayout_PlacedSubview)?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (offset: Int, element: _LazyLayout_PlacedSubview)?)
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(255, &lazy cache variable for type metadata for (offset: Int, element: _LazyLayout_PlacedSubview), MEMORY[0x1E69E6530], &type metadata for _LazyLayout_PlacedSubview, "offset element ");
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (offset: Int, element: _LazyLayout_PlacedSubview)?);
    }
  }
}

uint64_t outlined destroy of (offset: Int, element: _LazyLayout_PlacedSubview)(uint64_t a1)
{
  type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (offset: Int, element: _LazyLayout_PlacedSubview), MEMORY[0x1E69E6530], &type metadata for _LazyLayout_PlacedSubview, "offset element ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of _LazyStack_Cache<LazyVStackLayout>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)(void *a1, uint64_t a2, _BYTE *a3)
{
  return specialized closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)(a1, a2, a3, *(v3 + 16), specialized StackPlacement.placeSection(_:from:), partial apply for specialized closure #1 in closure #1 in StackPlacement.place(subviews:from:position:stopping:style:), specialized StackPlacement.shouldStop());
}

{
  return specialized closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)(a1, a2, a3, *(v3 + 16), specialized StackPlacement.placeSection(_:from:), partial apply for specialized closure #1 in closure #1 in StackPlacement.place(subviews:from:position:stopping:style:), specialized StackPlacement.shouldStop());
}

uint64_t outlined destroy of StackPlacement<LazyVStackLayout>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void partial apply for specialized closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(uint64_t a1, BOOL *a2)
{
  partial apply for specialized closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(a1, a2, specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:), closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply);
}

{
  partial apply for specialized closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(a1, a2, specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:), closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply);
}

uint64_t partial apply for specialized closure #1 in StackPlacement.placeSection(_:from:)(uint64_t a1, BOOL *a2)
{
  return partial apply for specialized closure #1 in StackPlacement.placeSection(_:from:)(a1, a2, specialized StackPlacement.placeHeaderOrFooter(start:subview:kind:));
}

{
  return partial apply for specialized closure #1 in StackPlacement.placeSection(_:from:)(a1, a2, specialized StackPlacement.placeHeaderOrFooter(start:subview:kind:));
}

uint64_t partial apply for specialized closure #2 in StackPlacement.placeSection(_:from:)(uint64_t a1, _BYTE *a2)
{
  return partial apply for specialized closure #1 in closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)(a1, a2, specialized StackPlacement.flushMinorGroup(), specialized StackPlacement.shouldStop());
}

{
  return partial apply for specialized closure #1 in closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)(a1, a2, specialized StackPlacement.flushMinorGroup(), specialized StackPlacement.shouldStop());
}

uint64_t partial apply for specialized closure #1 in closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)(uint64_t a1, _BYTE *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v6 = specialized StackPlacement.placeBody(subview:)(a1, a3);
  result = a4(v6);
  *a2 = result & 1;
  return result;
}

void partial apply for specialized closure #3 in StackPlacement.placeSection(_:from:)(uint64_t a1, __n128 a2)
{
  specialized StackPlacement.placeHeaderOrFooter(start:subview:kind:)(*(v2 + 24), a1, 2u, a2);
}

{
  specialized StackPlacement.placeHeaderOrFooter(start:subview:kind:)(*(v2 + 24), a1, 2u, a2);
}

void type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>))
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for PlacementProperties<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for PlacementProperties);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
    }
  }
}

uint64_t outlined init with take of StackPlacement<LazyHStackLayout>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, a3, a4, a5, type metadata accessor for StackPlacement);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void lazy protocol witness table accessor for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for EnvironmentFetch<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for EnvironmentFetch);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentFetch<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>);
  }
}

{
  if (!lazy protocol witness table cache variable for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for EnvironmentFetch<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for EnvironmentFetch);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentFetch<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>);
  }
}

void type metadata accessor for StackPlacement<LazyVStackLayout>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>?)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>?);
    }
  }
}

uint64_t outlined assign with take of EstimationCache(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EstimationCache(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<AnyLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<AnyLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<AnyLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_AspectRatioLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<_AspectRatioLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_AspectRatioLayout>, lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout, &type metadata for _AspectRatioLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<_AspectRatioLayout>>);
    }
  }
}

void type metadata accessor for StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>()
{
  if (!lazy cache variable for type metadata for StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for DistanceGesture.StateType;
    v4[1] = &type metadata for SpatialEvent;
    v4[2] = MEMORY[0x1E69E7DE0];
    v4[3] = &protocol witness table for DistanceGesture.StateType;
    v2 = type metadata accessor for StateContainerGesture(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>);
    }
  }
}

uint64_t outlined init with copy of Scrollable?(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for TappableEventType?(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void type metadata accessor for GesturePhase<SpatialEvent>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GesturePhase<SpatialEvent>?)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for GesturePhase<SpatialEvent>, &type metadata for SpatialEvent, type metadata accessor for GesturePhase);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for GesturePhase<SpatialEvent>?);
    }
  }
}

uint64_t outlined destroy of EventListenerPhase<SpatialEvent>.Value(uint64_t a1)
{
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<SpatialEvent>.Value, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListenerPhase.Value);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (EventID, EventType)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (EventID, EventType))
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (EventID, EventType));
    }
  }
}

void type metadata accessor for ModifierGesture<StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>, EventListener<SpatialEvent>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>, EventListener<SpatialEvent>>)
  {
    type metadata accessor for StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>();
    v3 = v2;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for EventListener<SpatialEvent>, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListener);
    v5 = v4;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat> and conformance StateContainerGesture<A, B, C>, type metadata accessor for StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>, protocol conformance descriptor for StateContainerGesture<A, B, C>);
    v7 = v6;
    lazy protocol witness table accessor for type EventListener<SpatialEvent> and conformance EventListener<A>();
    v11[0] = v3;
    v11[1] = v5;
    v11[2] = v7;
    v11[3] = v8;
    v9 = type metadata accessor for ModifierGesture(a1, v11);
    if (!v10)
    {
      atomic_store(v9, &lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>, EventListener<SpatialEvent>>);
    }
  }
}

void lazy protocol witness table accessor for type EventListener<SpatialEvent> and conformance EventListener<A>()
{
  if (!lazy protocol witness table cache variable for type EventListener<SpatialEvent> and conformance EventListener<A>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for EventListener<SpatialEvent>, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListener);
    swift_getWitnessTable(protocol conformance descriptor for EventListener<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EventListener<SpatialEvent> and conformance EventListener<A>);
  }
}

uint64_t outlined destroy of (value: _ShapeStyle_Pack.Effect, changed: Bool)(uint64_t a1)
{
  type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (value: _ShapeStyle_Pack.Effect, changed: Bool), &type metadata for _ShapeStyle_Pack.Effect, MEMORY[0x1E69E6370], "value changed ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of (value: _ShapeStyle_Pack.Fill, changed: Bool)(uint64_t a1)
{
  type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (value: _ShapeStyle_Pack.Fill, changed: Bool), &type metadata for _ShapeStyle_Pack.Fill, MEMORY[0x1E69E6370], "value changed ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of (value: _ShapeStyle_Pack.Style, changed: Bool)(uint64_t a1)
{
  type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (value: _ShapeStyle_Pack.Style, changed: Bool), &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6370], "value changed ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void lazy protocol witness table accessor for type _PositionLayout and conformance _PositionLayout()
{
  if (!lazy protocol witness table cache variable for type _PositionLayout and conformance _PositionLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _PositionLayout, &type metadata for _PositionLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _PositionLayout and conformance _PositionLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type _PositionLayout and conformance _PositionLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _PositionLayout, &type metadata for _PositionLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _PositionLayout and conformance _PositionLayout);
  }
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_PositionLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_PositionLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_PositionLayout>, lazy protocol witness table accessor for type _PositionLayout and conformance _PositionLayout, &type metadata for _PositionLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_PositionLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_PositionLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<_PositionLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_PositionLayout>, lazy protocol witness table accessor for type _PositionLayout and conformance _PositionLayout, &type metadata for _PositionLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<_PositionLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<HStackLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<HStackLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<HStackLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<_HStackLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<_HStackLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<_HStackLayout>>);
    }
  }
}

void lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout()
{
  if (!lazy protocol witness table cache variable for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout);
  }
}

void type metadata accessor for LayoutEngineBox<ViewLayoutEngine<FlexibleButtonFrameLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<FlexibleButtonFrameLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<FlexibleButtonFrameLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<FlexibleButtonFrameLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<FlexibleButtonFrameLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<FlexibleButtonFrameLayout>>);
    }
  }
}

void partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)()
{
  specialized ViewLayoutEngine.update(layout:context:children:)(**(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
}

{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v2 + 48);
  v8[2] = *(v2 + 32);
  v8[3] = v6;
  v8[4] = *(v2 + 64);
  v9 = *(v2 + 80);
  v7 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v7;
  specialized ViewLayoutEngine.update(layout:context:children:)(v8, v1, v3, v4, v5);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  memcpy(__dst, v1, sizeof(__dst));
  specialized ViewLayoutEngine.update(layout:context:children:)(__dst, v2, v3, v4, v5);
}

void type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for _LayoutRoot<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for _LayoutRoot);
    v3 = v2;
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for _ViewModifier_Content<FlexibleButtonFrameModifier>, lazy protocol witness table accessor for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier, &type metadata for FlexibleButtonFrameModifier, type metadata accessor for _ViewModifier_Content);
    v5 = type metadata accessor for _VariadicView.Tree(a1, v3, v4, &protocol witness table for _LayoutRoot<A>);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>);
    }
  }
}

uint64_t partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(uint64_t a1, void (*a2)(_OWORD *), uint64_t (*a3)(__int128 *, _BYTE *))
{
  v6 = *(v3 + 16);
  v7 = *v6;
  v8 = v6[2];
  v35 = v6[1];
  v36 = v8;
  v34 = v7;
  v9 = v6[3];
  v10 = v6[4];
  v11 = v6[6];
  v39 = v6[5];
  v40 = v11;
  v37 = v9;
  v38 = v10;
  v12 = v6[7];
  v13 = v6[8];
  v14 = v6[10];
  v43 = v6[9];
  v44 = v14;
  v41 = v12;
  v42 = v13;
  v15 = v6[11];
  v16 = v6[12];
  v17 = v6[13];
  v48 = *(v6 + 224);
  v46 = v16;
  v47 = v17;
  v45 = v15;
  v18 = *(a1 + 208);
  v49[12] = *(a1 + 192);
  v49[13] = v18;
  v50 = *(a1 + 224);
  v19 = *(a1 + 144);
  v49[8] = *(a1 + 128);
  v49[9] = v19;
  v20 = *(a1 + 176);
  v49[10] = *(a1 + 160);
  v49[11] = v20;
  v21 = *(a1 + 80);
  v49[4] = *(a1 + 64);
  v49[5] = v21;
  v22 = *(a1 + 112);
  v49[6] = *(a1 + 96);
  v49[7] = v22;
  v23 = *(a1 + 16);
  v49[0] = *a1;
  v49[1] = v23;
  v24 = *(a1 + 48);
  v49[2] = *(a1 + 32);
  v49[3] = v24;
  a2(v49);
  v25 = v47;
  *(a1 + 192) = v46;
  *(a1 + 208) = v25;
  *(a1 + 224) = v48;
  v26 = v43;
  *(a1 + 128) = v42;
  *(a1 + 144) = v26;
  v27 = v45;
  *(a1 + 160) = v44;
  *(a1 + 176) = v27;
  v28 = v39;
  *(a1 + 64) = v38;
  *(a1 + 80) = v28;
  v29 = v41;
  *(a1 + 96) = v40;
  *(a1 + 112) = v29;
  v30 = v35;
  *a1 = v34;
  *(a1 + 16) = v30;
  v31 = v37;
  *(a1 + 32) = v36;
  *(a1 + 48) = v31;
  return a3(&v34, v33);
}

{
  v6 = *(v3 + 16);
  v7 = v6[1];
  v31 = *v6;
  v32 = v7;
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[5];
  v35 = v6[4];
  v36 = v10;
  v33 = v8;
  v34 = v9;
  v11 = v6[6];
  v12 = v6[7];
  v13 = v6[9];
  v39 = v6[8];
  v40 = v13;
  v37 = v11;
  v38 = v12;
  v14 = v6[10];
  v15 = v6[11];
  v16 = v6[12];
  v44 = *(v6 + 208);
  v42 = v15;
  v43 = v16;
  v41 = v14;
  v17 = *(a1 + 16);
  v45[0] = *a1;
  v45[1] = v17;
  v18 = *(a1 + 80);
  v45[4] = *(a1 + 64);
  v45[5] = v18;
  v19 = *(a1 + 48);
  v45[2] = *(a1 + 32);
  v45[3] = v19;
  v20 = *(a1 + 144);
  v45[8] = *(a1 + 128);
  v45[9] = v20;
  v21 = *(a1 + 112);
  v45[6] = *(a1 + 96);
  v45[7] = v21;
  v46 = *(a1 + 208);
  v22 = *(a1 + 192);
  v45[11] = *(a1 + 176);
  v45[12] = v22;
  v45[10] = *(a1 + 160);
  a2(v45);
  v23 = v42;
  *(a1 + 160) = v41;
  *(a1 + 176) = v23;
  *(a1 + 192) = v43;
  *(a1 + 208) = v44;
  v24 = v38;
  *(a1 + 96) = v37;
  *(a1 + 112) = v24;
  v25 = v40;
  *(a1 + 128) = v39;
  *(a1 + 144) = v25;
  v26 = v34;
  *(a1 + 32) = v33;
  *(a1 + 48) = v26;
  v27 = v36;
  *(a1 + 64) = v35;
  *(a1 + 80) = v27;
  v28 = v32;
  *a1 = v31;
  *(a1 + 16) = v28;
  return a3(&v31, v30);
}

uint64_t partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)@<X0>(uint64_t (*a1)(_OWORD *, _BYTE *)@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *v3;
  v5 = v3[2];
  v24[1] = v3[1];
  v24[2] = v5;
  v24[0] = v4;
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[6];
  v24[5] = v3[5];
  v24[6] = v8;
  v24[3] = v6;
  v24[4] = v7;
  v9 = v3[7];
  v10 = v3[8];
  v11 = v3[10];
  v24[9] = v3[9];
  v24[10] = v11;
  v24[7] = v9;
  v24[8] = v10;
  v12 = v3[11];
  v13 = v3[12];
  v14 = v3[13];
  v25 = *(v3 + 224);
  v24[12] = v13;
  v24[13] = v14;
  v24[11] = v12;
  v15 = v3[13];
  *(a2 + 192) = v3[12];
  *(a2 + 208) = v15;
  *(a2 + 224) = *(v3 + 224);
  v16 = v3[9];
  *(a2 + 128) = v3[8];
  *(a2 + 144) = v16;
  v17 = v3[11];
  *(a2 + 160) = v3[10];
  *(a2 + 176) = v17;
  v18 = v3[5];
  *(a2 + 64) = v3[4];
  *(a2 + 80) = v18;
  v19 = v3[7];
  *(a2 + 96) = v3[6];
  *(a2 + 112) = v19;
  v20 = v3[1];
  *a2 = *v3;
  *(a2 + 16) = v20;
  v21 = v3[3];
  *(a2 + 32) = v3[2];
  *(a2 + 48) = v21;
  return a1(v24, v23);
}

{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  v22[0] = *v3;
  v22[1] = v4;
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v7 = *(v3 + 80);
  v22[4] = *(v3 + 64);
  v22[5] = v7;
  v22[2] = v5;
  v22[3] = v6;
  v8 = *(v3 + 96);
  v9 = *(v3 + 112);
  v10 = *(v3 + 144);
  v22[8] = *(v3 + 128);
  v22[9] = v10;
  v22[6] = v8;
  v22[7] = v9;
  v11 = *(v3 + 160);
  v12 = *(v3 + 176);
  v13 = *(v3 + 192);
  v23 = *(v3 + 208);
  v22[11] = v12;
  v22[12] = v13;
  v22[10] = v11;
  v14 = *(v3 + 176);
  *(a2 + 160) = *(v3 + 160);
  *(a2 + 176) = v14;
  *(a2 + 192) = *(v3 + 192);
  *(a2 + 208) = *(v3 + 208);
  v15 = *(v3 + 112);
  *(a2 + 96) = *(v3 + 96);
  *(a2 + 112) = v15;
  v16 = *(v3 + 144);
  *(a2 + 128) = *(v3 + 128);
  *(a2 + 144) = v16;
  v17 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v17;
  v18 = *(v3 + 80);
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = v18;
  v19 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v19;
  return a1(v22, v21);
}

uint64_t outlined destroy of LazyLayoutComputer<LazyHStackLayout>.Engine(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazyLayoutComputer<LazyHStackLayout>.Engine, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazyLayoutComputer.Engine);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout()
{
  if (!lazy protocol witness table cache variable for type LazyHStackLayout and conformance LazyHStackLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for LazyHStackLayout, &type metadata for LazyHStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyHStackLayout and conformance LazyHStackLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type LazyHStackLayout and conformance LazyHStackLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for LazyHStackLayout, &type metadata for LazyHStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyHStackLayout and conformance LazyHStackLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type LazyHStackLayout and conformance LazyHStackLayout)
  {
    swift_getWitnessTable("]\x1B(bdT\a", &type metadata for LazyHStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyHStackLayout and conformance LazyHStackLayout);
  }
}

void type metadata accessor for LayoutEngineBox<LazyLayoutComputer<LazyHStackLayout>.Engine>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<LazyLayoutComputer<LazyHStackLayout>.Engine>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for LazyLayoutComputer<LazyHStackLayout>.Engine, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazyLayoutComputer.Engine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for LazyLayoutComputer<A>.Engine, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<LazyLayoutComputer<LazyHStackLayout>.Engine>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<LazyLayoutComputer<LazyHStackLayout>.Engine>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<LazyLayoutComputer<LazyHStackLayout>.Engine>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for LazyLayoutComputer<LazyHStackLayout>.Engine, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazyLayoutComputer.Engine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for LazyLayoutComputer<A>.Engine, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<LazyLayoutComputer<LazyHStackLayout>.Engine>);
    }
  }
}

uint64_t outlined init with copy of LazyLayoutComputer<LazyHStackLayout>.Engine(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazyLayoutComputer<LazyHStackLayout>.Engine, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazyLayoutComputer.Engine);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of LazySubviewPrefetcher<LazyHStackLayout>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazySubviewPrefetcher<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazySubviewPrefetcher);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of LazySubviewPrefetcher<LazyHStackLayout>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazySubviewPrefetcher<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazySubviewPrefetcher);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of _LazyStack_Cache<LazyHStackLayout>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of LazySubviewPlacements<LazyHStackLayout>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazySubviewPlacements<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazySubviewPlacements);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of LazySubviewPlacements<LazyHStackLayout>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazySubviewPlacements<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazySubviewPlacements);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of _LazyStack_Cache<LazyHStackLayout>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of StackPlacement<LazyHStackLayout>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #1 in StackPlacement.placeSection(_:from:)(uint64_t a1, BOOL *a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  result = a3(*(v3 + 24), a1, 1);
  *a2 = (*(a1 + 101) & 1) == 0;
  return result;
}

void type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>))
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for PlacementProperties<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for PlacementProperties);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
    }
  }
}

uint64_t outlined init with take of (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for StackPlacement<LazyHStackLayout>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>?)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>?);
    }
  }
}

void type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type DefaultGlassEffectShape and conformance DefaultGlassEffectShape();
    v5[0] = &type metadata for DefaultGlassEffectShape;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>);
    }
  }
}

void lazy protocol witness table accessor for type DefaultGlassEffectShape and conformance DefaultGlassEffectShape()
{
  if (!lazy protocol witness table cache variable for type DefaultGlassEffectShape and conformance DefaultGlassEffectShape)
  {
    swift_getWitnessTable(protocol conformance descriptor for DefaultGlassEffectShape, &type metadata for DefaultGlassEffectShape, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DefaultGlassEffectShape and conformance DefaultGlassEffectShape);
  }
}

{
  if (!lazy protocol witness table cache variable for type DefaultGlassEffectShape and conformance DefaultGlassEffectShape)
  {
    swift_getWitnessTable(protocol conformance descriptor for DefaultGlassEffectShape, &type metadata for DefaultGlassEffectShape, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DefaultGlassEffectShape and conformance DefaultGlassEffectShape);
  }
}

void type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_PaddingLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<_PaddingLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_PaddingLayout>, lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout, &type metadata for _PaddingLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<_PaddingLayout>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ContentCaptureProtectionViewModifier>, lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier, &type metadata for ContentCaptureProtectionViewModifier, type metadata accessor for _ViewModifier_Content);
    v4 = type metadata accessor for ModifiedContent(a1, v2, &type metadata for ContentCaptureProtectionPreferenceWriter, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_FixedSizeLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<_FixedSizeLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_FixedSizeLayout>, lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout, &type metadata for _FixedSizeLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<_FixedSizeLayout>>);
    }
  }
}

uint64_t outlined destroy of (value: ViewGeometry, changed: Bool)(uint64_t a1)
{
  type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (value: ViewGeometry, changed: Bool), &type metadata for ViewGeometry, MEMORY[0x1E69E6370], "value changed ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout()
{
  if (!lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for VStackLayout, &type metadata for VStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for VStackLayout, &type metadata for VStackLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout);
  }
}

void type metadata accessor for LayoutEngineBox<ViewLayoutEngine<VStackLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<VStackLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<VStackLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<VStackLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<VStackLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<VStackLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<_VStackLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<_VStackLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<_VStackLayout>>);
    }
  }
}

void type metadata accessor for _ShapeView<Rectangle, AngularGradient>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Rectangle, AngularGradient>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v5[0] = &type metadata for Rectangle;
    v5[1] = &type metadata for AngularGradient;
    v5[2] = v2;
    v5[3] = &protocol witness table for AngularGradient;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<Rectangle, AngularGradient>);
    }
  }
}

void type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, AngularGradient>>, changed: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, AngularGradient>>, changed: Bool))
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(255, &lazy cache variable for type metadata for ShapeStyledResponderData<_ShapeView<Rectangle, AngularGradient>>, type metadata accessor for _ShapeView<Rectangle, AngularGradient>, &protocol witness table for _ShapeView<A, B>, type metadata accessor for ShapeStyledResponderData);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, AngularGradient>>, changed: Bool));
    }
  }
}

uint64_t outlined destroy of (value: AngularGradient._Paint, changed: Bool)(uint64_t a1)
{
  type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (value: AngularGradient._Paint, changed: Bool), &type metadata for AngularGradient._Paint, MEMORY[0x1E69E6370], "value changed ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Rectangle, EllipticalGradient>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v5[0] = &type metadata for Rectangle;
    v5[1] = &type metadata for EllipticalGradient;
    v5[2] = v2;
    v5[3] = &protocol witness table for EllipticalGradient;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<Rectangle, EllipticalGradient>);
    }
  }
}

void type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, EllipticalGradient>>, changed: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, EllipticalGradient>>, changed: Bool))
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(255, &lazy cache variable for type metadata for ShapeStyledResponderData<_ShapeView<Rectangle, EllipticalGradient>>, type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>, &protocol witness table for _ShapeView<A, B>, type metadata accessor for ShapeStyledResponderData);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, EllipticalGradient>>, changed: Bool));
    }
  }
}

uint64_t outlined destroy of (value: EllipticalGradient._Paint, changed: Bool)(uint64_t a1)
{
  type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (value: EllipticalGradient._Paint, changed: Bool), &type metadata for EllipticalGradient._Paint, MEMORY[0x1E69E6370], "value changed ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _ShapeView<Rectangle, RadialGradient>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Rectangle, RadialGradient>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v5[0] = &type metadata for Rectangle;
    v5[1] = &type metadata for RadialGradient;
    v5[2] = v2;
    v5[3] = &protocol witness table for RadialGradient;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<Rectangle, RadialGradient>);
    }
  }
}

void type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, RadialGradient>>, changed: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, RadialGradient>>, changed: Bool))
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(255, &lazy cache variable for type metadata for ShapeStyledResponderData<_ShapeView<Rectangle, RadialGradient>>, type metadata accessor for _ShapeView<Rectangle, RadialGradient>, &protocol witness table for _ShapeView<A, B>, type metadata accessor for ShapeStyledResponderData);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, RadialGradient>>, changed: Bool));
    }
  }
}

uint64_t outlined destroy of (value: RadialGradient._Paint, changed: Bool)(uint64_t a1)
{
  type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (value: RadialGradient._Paint, changed: Bool), &type metadata for RadialGradient._Paint, MEMORY[0x1E69E6370], "value changed ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool))
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(255, &lazy cache variable for type metadata for ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, type metadata accessor for _ShapeView<Rectangle, LinearGradient>, &protocol witness table for _ShapeView<A, B>, type metadata accessor for ShapeStyledResponderData);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, changed: Bool));
    }
  }
}

double outlined consume of ShapeStyledResponderData<_ShapeView<Rectangle, AngularGradient>>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
  }

  return result;
}

uint64_t outlined destroy of (value: LinearGradient.AbsolutePaint, changed: Bool)(uint64_t a1)
{
  type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (value: LinearGradient.AbsolutePaint, changed: Bool), &type metadata for LinearGradient.AbsolutePaint, MEMORY[0x1E69E6370], "value changed ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of (value: LinearGradient._Paint, changed: Bool)(uint64_t a1)
{
  type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (value: LinearGradient._Paint, changed: Bool), &type metadata for LinearGradient._Paint, MEMORY[0x1E69E6370], "value changed ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for LayoutEngineBox<ViewLayoutEngine<ZStackLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<ZStackLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<ZStackLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<ZStackLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<ZStackLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<ZStackLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<_ZStackLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<_ZStackLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<_ZStackLayout>>);
    }
  }
}

uint64_t outlined init with copy of SizeThatFitsRule<SizeThatFitsMeasurer>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for SizeThatFitsRule<SizeThatFitsMeasurer>, lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer, &type metadata for SizeThatFitsMeasurer, type metadata accessor for SizeThatFitsRule);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SizeThatFitsRule<SizeThatFitsMeasurer>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for SizeThatFitsRule<SizeThatFitsMeasurer>, lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer, &type metadata for SizeThatFitsMeasurer, type metadata accessor for SizeThatFitsRule);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, int a4, void *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v44 = v6;
  while (v9)
  {
    v62 = a4;
    v13 = v11;
LABEL_14:
    v47 = v9;
    v16 = __clz(__rbit64(v9)) | (v13 << 6);
    v17 = *(a1 + 56);
    v18 = *(a1 + 48) + 32 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    LOBYTE(v18) = *(v18 + 24);
    v49 = v19;
    v50 = v20;
    v51 = v21;
    v52 = v18;
    v53 = *(v17 + 16 * v16);
    a2(&v54, &v49);
    v60 = 0;
    v22 = v54;
    v23 = v55;
    v24 = v56;
    v25 = v57;
    v27 = v58;
    v26 = v59;
    v28 = *a5;
    LOBYTE(v49) = v55;
    v61 = v57;
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v55, v56, v57);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_25;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      v37 = v47;
      if ((v62 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v37 = v47;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v62 & 1);
      LOBYTE(v49) = v23;
      v61 = v25;
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23, v24, v25);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_27;
      }

      v30 = v35;
      v37 = v47;
    }

    v9 = (v37 - 1) & v37;
    v38 = *a5;
    if (v34)
    {
      v12 = (v38[7] + 16 * v30);
      *v12 = v27;
      v12[1] = v26;
    }

    else
    {
      v38[(v30 >> 6) + 8] |= 1 << v30;
      v39 = v38[6] + 32 * v30;
      *v39 = v22;
      *(v39 + 8) = v23;
      *(v39 + 16) = v24;
      *(v39 + 24) = v25;
      v40 = (v38[7] + 16 * v30);
      *v40 = v27;
      v40[1] = v26;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v11 = v13;
    v6 = v44;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      outlined consume of Set<EventID>.Iterator._Variant(a1);

      return;
    }

    v15 = *(v6 + 8 * v13);
    ++v14;
    if (v15)
    {
      v62 = a4;
      v9 = v15;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void lazy protocol witness table accessor for type ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element> and conformance ForEachList<A, B, C>(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2)))
{
  if (!*a1)
  {
    v4 = a3(255, a2, type metadata accessor for ForEachList);
    swift_getWitnessTable(protocol conformance descriptor for ForEachList<A, B, C>, v4);
    atomic_store(v5, a1);
  }
}

double outlined copy of GesturePhase<TappableEvent>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2 || a6 == 1)
  {
  }

  else if (!a6)
  {
    return outlined copy of TappableEvent?(a1, a2, a3);
  }

  return result;
}

double outlined copy of TappableEvent?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

double outlined consume of GesturePhase<TappableEvent>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2 || a6 == 1)
  {
  }

  else if (!a6)
  {
    return outlined consume of PhysicalButtonEvent?(a1, a2, a3);
  }

  return result;
}

uint64_t type metadata accessor for (_:_:)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a2;
  if (!*a2)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, a3, a4, type metadata accessor for GesturePhase);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, a2);
  }

  return result;
}

double outlined consume of GesturePhase<TappableEvent>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return outlined consume of GesturePhase<TappableEvent>(a1, a2, a3, a4, a5, SBYTE1(a5));
  }

  return result;
}

uint64_t outlined destroy of EventListenerPhase<TappableEvent>.Value(uint64_t a1)
{
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<TappableEvent>.Value, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListenerPhase.Value);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ModifierGesture<EventFilter<TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for EventFilter<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for EventFilter);
    v3 = v2;
    type metadata accessor for ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>(255);
    v5 = v4;
    lazy protocol witness table accessor for type EventFilter<TappableEvent> and conformance EventFilter<A>();
    v7 = v6;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>, protocol conformance descriptor for ModifierGesture<A, B>);
    v11[0] = v3;
    v11[1] = v5;
    v11[2] = v7;
    v11[3] = v8;
    v9 = type metadata accessor for ModifierGesture(a1, v11);
    if (!v10)
    {
      atomic_store(v9, &lazy cache variable for type metadata for ModifierGesture<EventFilter<TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>>);
    }
  }
}

void type metadata accessor for ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>)
  {
    type metadata accessor for Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>(255);
    v3 = v2;
    type metadata accessor for ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>(255);
    v5 = v4;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent> and conformance Map2Gesture<A, B, C>, type metadata accessor for Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, protocol conformance descriptor for Map2Gesture<A, B, C>);
    v7 = v6;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>, protocol conformance descriptor for ModifierGesture<A, B>);
    v11[0] = v3;
    v11[1] = v5;
    v11[2] = v7;
    v11[3] = v8;
    v9 = type metadata accessor for ModifierGesture(a1, v11);
    if (!v10)
    {
      atomic_store(v9, &lazy cache variable for type metadata for ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>);
    }
  }
}

void type metadata accessor for Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(a4, a5, protocol conformance descriptor for ModifierGesture<A, B>);
    v13[0] = &type metadata for TappableEvent;
    v13[1] = v9;
    v13[2] = &type metadata for TappableEvent;
    v13[3] = v10;
    v11 = type metadata accessor for Map2Gesture(a1, v13);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for CoordinateSpaceGesture<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for CoordinateSpaceGesture);
    v3 = v2;
    lazy protocol witness table accessor for type CoordinateSpaceGesture<CGFloat> and conformance CoordinateSpaceGesture<A>();
    v5 = v4;
    lazy protocol witness table accessor for type DistanceGesture and conformance DistanceGesture();
    v9[0] = v3;
    v9[1] = &type metadata for DistanceGesture;
    v9[2] = v5;
    v9[3] = v6;
    v7 = type metadata accessor for ModifierGesture(a1, v9);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>);
    }
  }
}

void lazy protocol witness table accessor for type CoordinateSpaceGesture<CGFloat> and conformance CoordinateSpaceGesture<A>()
{
  if (!lazy protocol witness table cache variable for type CoordinateSpaceGesture<CGFloat> and conformance CoordinateSpaceGesture<A>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for CoordinateSpaceGesture<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for CoordinateSpaceGesture);
    swift_getWitnessTable(protocol conformance descriptor for CoordinateSpaceGesture<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type CoordinateSpaceGesture<CGFloat> and conformance CoordinateSpaceGesture<A>);
  }
}

void lazy protocol witness table accessor for type DistanceGesture and conformance DistanceGesture()
{
  if (!lazy protocol witness table cache variable for type DistanceGesture and conformance DistanceGesture)
  {
    swift_getWitnessTable(protocol conformance descriptor for DistanceGesture, &type metadata for DistanceGesture, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DistanceGesture and conformance DistanceGesture);
  }
}

void type metadata accessor for ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>)
  {
    type metadata accessor for Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>(255);
    v3 = v2;
    type metadata accessor for ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>(255);
    v5 = v4;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent> and conformance Map2Gesture<A, B, C>, type metadata accessor for Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, protocol conformance descriptor for Map2Gesture<A, B, C>);
    v7 = v6;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>, protocol conformance descriptor for ModifierGesture<A, B>);
    v11[0] = v3;
    v11[1] = v5;
    v11[2] = v7;
    v11[3] = v8;
    v9 = type metadata accessor for ModifierGesture(a1, v11);
    if (!v10)
    {
      atomic_store(v9, &lazy cache variable for type metadata for ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>);
    }
  }
}

void type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for DurationGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for DurationGesture);
    v3 = v2;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for EventListener<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListener);
    v5 = v4;
    lazy protocol witness table accessor for type DurationGesture<TappableEvent> and conformance DurationGesture<A>();
    v7 = v6;
    lazy protocol witness table accessor for type EventListener<TappableEvent> and conformance EventListener<A>();
    v11[0] = v3;
    v11[1] = v5;
    v11[2] = v7;
    v11[3] = v8;
    v9 = type metadata accessor for ModifierGesture(a1, v11);
    if (!v10)
    {
      atomic_store(v9, &lazy cache variable for type metadata for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>);
    }
  }
}

void lazy protocol witness table accessor for type DurationGesture<TappableEvent> and conformance DurationGesture<A>()
{
  if (!lazy protocol witness table cache variable for type DurationGesture<TappableEvent> and conformance DurationGesture<A>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for DurationGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for DurationGesture);
    swift_getWitnessTable(protocol conformance descriptor for DurationGesture<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DurationGesture<TappableEvent> and conformance DurationGesture<A>);
  }
}

void lazy protocol witness table accessor for type EventListener<TappableEvent> and conformance EventListener<A>()
{
  if (!lazy protocol witness table cache variable for type EventListener<TappableEvent> and conformance EventListener<A>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for EventListener<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListener);
    swift_getWitnessTable(protocol conformance descriptor for EventListener<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EventListener<TappableEvent> and conformance EventListener<A>);
  }
}

void type metadata accessor for ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for DependentGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for DependentGesture);
    v3 = v2;
    type metadata accessor for ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>(255);
    v5 = v4;
    lazy protocol witness table accessor for type DependentGesture<TappableEvent> and conformance DependentGesture<A>();
    v7 = v6;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>, protocol conformance descriptor for ModifierGesture<A, B>);
    v11[0] = v3;
    v11[1] = v5;
    v11[2] = v7;
    v11[3] = v8;
    v9 = type metadata accessor for ModifierGesture(a1, v11);
    if (!v10)
    {
      atomic_store(v9, &lazy cache variable for type metadata for ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>);
    }
  }
}

void type metadata accessor for ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for MapGesture<TappableEvent, TappableEvent>, &type metadata for TappableEvent, &type metadata for TappableEvent, type metadata accessor for MapGesture);
    v3 = v2;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for EventListener<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListener);
    v5 = v4;
    lazy protocol witness table accessor for type MapGesture<TappableEvent, TappableEvent> and conformance MapGesture<A, B>();
    v7 = v6;
    lazy protocol witness table accessor for type EventListener<TappableEvent> and conformance EventListener<A>();
    v11[0] = v3;
    v11[1] = v5;
    v11[2] = v7;
    v11[3] = v8;
    v9 = type metadata accessor for ModifierGesture(a1, v11);
    if (!v10)
    {
      atomic_store(v9, &lazy cache variable for type metadata for ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>);
    }
  }
}

void lazy protocol witness table accessor for type MapGesture<TappableEvent, TappableEvent> and conformance MapGesture<A, B>()
{
  if (!lazy protocol witness table cache variable for type MapGesture<TappableEvent, TappableEvent> and conformance MapGesture<A, B>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for MapGesture<TappableEvent, TappableEvent>, &type metadata for TappableEvent, &type metadata for TappableEvent, type metadata accessor for MapGesture);
    swift_getWitnessTable(protocol conformance descriptor for MapGesture<A, B>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type MapGesture<TappableEvent, TappableEvent> and conformance MapGesture<A, B>);
  }
}

void lazy protocol witness table accessor for type DependentGesture<TappableEvent> and conformance DependentGesture<A>()
{
  if (!lazy protocol witness table cache variable for type DependentGesture<TappableEvent> and conformance DependentGesture<A>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for DependentGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for DependentGesture);
    swift_getWitnessTable(protocol conformance descriptor for DependentGesture<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DependentGesture<TappableEvent> and conformance DependentGesture<A>);
  }
}

void lazy protocol witness table accessor for type EventFilter<TappableEvent> and conformance EventFilter<A>()
{
  if (!lazy protocol witness table cache variable for type EventFilter<TappableEvent> and conformance EventFilter<A>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for EventFilter<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for EventFilter);
    swift_getWitnessTable(protocol conformance descriptor for EventFilter<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EventFilter<TappableEvent> and conformance EventFilter<A>);
  }
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for TracingLayoutEngineBox<SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, _UNKNOWN **))
{
  if (!*a2)
  {
    type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>(255, &lazy cache variable for type metadata for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>, type metadata accessor for SizeFittingTextLayoutComputer.Engine);
    v7 = a3(a1, v6, &protocol witness table for SizeFittingTextLayoutComputer.Engine<A, B>);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for ResolvedTextHelper(255);
    v8[1] = &type metadata for StickyTextSizeFittingLogic;
    v8[2] = &protocol witness table for ResolvedTextHelper;
    v8[3] = &protocol witness table for StickyTextSizeFittingLogic;
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

double outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t outlined init with take of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double outlined copy of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t outlined init with copy of DynamicViewList<DebugReplaceableView>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for DynamicViewList<DebugReplaceableView>, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewList);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DynamicViewList<DebugReplaceableView>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for DynamicViewList<DebugReplaceableView>, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewList);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void lazy protocol witness table accessor for type DynamicViewList<DebugReplaceableView>.WrappedList and conformance DynamicViewList<A>.WrappedList()
{
  if (!lazy protocol witness table cache variable for type DynamicViewList<DebugReplaceableView>.WrappedList and conformance DynamicViewList<A>.WrappedList)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for DynamicViewList<DebugReplaceableView>.WrappedList, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewList.WrappedList);
    swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>.WrappedList, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DynamicViewList<DebugReplaceableView>.WrappedList and conformance DynamicViewList<A>.WrappedList);
  }
}

uint64_t objectdestroy_20Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t outlined init with copy of DynamicViewContainer<DebugReplaceableView>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for DynamicViewContainer<DebugReplaceableView>, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewContainer);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DynamicViewContainer<DebugReplaceableView>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for DynamicViewContainer<DebugReplaceableView>, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewContainer);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<LayoutPriorityLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<LayoutPriorityLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<UnaryLayoutEngine<LayoutPriorityLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<SpacerLayoutComputer<ConditionalSpacer>.Engine>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<SpacerLayoutComputer<ConditionalSpacer>.Engine>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for SpacerLayoutComputer<ConditionalSpacer>.Engine, &type metadata for ConditionalSpacer, &protocol witness table for ConditionalSpacer, type metadata accessor for SpacerLayoutComputer.Engine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for SpacerLayoutComputer<A>.Engine, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<SpacerLayoutComputer<ConditionalSpacer>.Engine>);
    }
  }
}

void type metadata accessor for LayoutEngineBox<SpacerLayoutComputer<_VSpacer>.Engine>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<SpacerLayoutComputer<_VSpacer>.Engine>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for SpacerLayoutComputer<_VSpacer>.Engine, &type metadata for _VSpacer, &protocol witness table for _VSpacer, type metadata accessor for SpacerLayoutComputer.Engine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for SpacerLayoutComputer<A>.Engine, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<SpacerLayoutComputer<_VSpacer>.Engine>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<SpacerLayoutComputer<_VSpacer>.Engine>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<SpacerLayoutComputer<_VSpacer>.Engine>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for SpacerLayoutComputer<_VSpacer>.Engine, &type metadata for _VSpacer, &protocol witness table for _VSpacer, type metadata accessor for SpacerLayoutComputer.Engine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for SpacerLayoutComputer<A>.Engine, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<SpacerLayoutComputer<_VSpacer>.Engine>);
    }
  }
}

void type metadata accessor for LayoutEngineBox<SpacerLayoutComputer<_HSpacer>.Engine>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<SpacerLayoutComputer<_HSpacer>.Engine>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for SpacerLayoutComputer<_HSpacer>.Engine, &type metadata for _HSpacer, &protocol witness table for _HSpacer, type metadata accessor for SpacerLayoutComputer.Engine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for SpacerLayoutComputer<A>.Engine, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<SpacerLayoutComputer<_HSpacer>.Engine>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<SpacerLayoutComputer<_HSpacer>.Engine>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<SpacerLayoutComputer<_HSpacer>.Engine>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for SpacerLayoutComputer<_HSpacer>.Engine, &type metadata for _HSpacer, &protocol witness table for _HSpacer, type metadata accessor for SpacerLayoutComputer.Engine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for SpacerLayoutComputer<A>.Engine, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<SpacerLayoutComputer<_HSpacer>.Engine>);
    }
  }
}

void type metadata accessor for LayoutEngineBox<SpacerLayoutComputer<_TextBaselineRelativeSpacer>.Engine>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<SpacerLayoutComputer<_TextBaselineRelativeSpacer>.Engine>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for SpacerLayoutComputer<_TextBaselineRelativeSpacer>.Engine, &type metadata for _TextBaselineRelativeSpacer, &protocol witness table for _TextBaselineRelativeSpacer, type metadata accessor for SpacerLayoutComputer.Engine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for SpacerLayoutComputer<A>.Engine, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<SpacerLayoutComputer<_TextBaselineRelativeSpacer>.Engine>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<SpacerLayoutComputer<_TextBaselineRelativeSpacer>.Engine>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<SpacerLayoutComputer<_TextBaselineRelativeSpacer>.Engine>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for SpacerLayoutComputer<_TextBaselineRelativeSpacer>.Engine, &type metadata for _TextBaselineRelativeSpacer, &protocol witness table for _TextBaselineRelativeSpacer, type metadata accessor for SpacerLayoutComputer.Engine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for SpacerLayoutComputer<A>.Engine, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<SpacerLayoutComputer<_TextBaselineRelativeSpacer>.Engine>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<SpacerLayoutComputer<Spacer>.Engine>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<SpacerLayoutComputer<Spacer>.Engine>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for SpacerLayoutComputer<Spacer>.Engine, &type metadata for Spacer, &protocol witness table for Spacer, type metadata accessor for SpacerLayoutComputer.Engine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for SpacerLayoutComputer<A>.Engine, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<SpacerLayoutComputer<Spacer>.Engine>);
    }
  }
}

double outlined consume of ShapeStyledResponderData<_ShapeView<CombinedContentShape, ForegroundStyle>>?(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a1)
  {
    a4(a1, a2);
  }

  return result;
}

uint64_t outlined destroy of (value: Image.Resolved, changed: Bool)(uint64_t a1)
{
  type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (value: Image.Resolved, changed: Bool), &type metadata for Image.Resolved, MEMORY[0x1E69E6370], "value changed ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of (value: Image.Resolved, changed: Bool)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (value: Image.Resolved, changed: Bool), &type metadata for Image.Resolved, MEMORY[0x1E69E6370], "value changed ");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of LeafLayoutEngine<Image.Resolved>(uint64_t a1)
{
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for LeafLayoutEngine<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for LeafLayoutEngine);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for LayoutEngineBox<LeafLayoutEngine<Image.Resolved>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<Image.Resolved>>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for LeafLayoutEngine<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for LeafLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for LeafLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<Image.Resolved>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<LeafLayoutEngine<Image.Resolved>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<Image.Resolved>>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for LeafLayoutEngine<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for LeafLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for LeafLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<Image.Resolved>>);
    }
  }
}

uint64_t outlined init with copy of LeafLayoutEngine<Image.Resolved>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for LeafLayoutEngine<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for LeafLayoutEngine);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (regions: SafeAreaRegions, spacing: CGFloat?, edge: Edge, alignmentKey: AlignmentKey)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (regions: SafeAreaRegions, spacing: CGFloat?, edge: Edge, alignmentKey: AlignmentKey))
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (regions: SafeAreaRegions, spacing: CGFloat?, edge: Edge, alignmentKey: AlignmentKey));
    }
  }
}

void lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout()
{
  if (!lazy protocol witness table cache variable for type GlassEffectLayout and conformance GlassEffectLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectLayout, &type metadata for GlassEffectLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectLayout and conformance GlassEffectLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type GlassEffectLayout and conformance GlassEffectLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectLayout, &type metadata for GlassEffectLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectLayout and conformance GlassEffectLayout);
  }
}

void type metadata accessor for LayoutEngineBox<ViewLayoutEngine<GlassEffectLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<GlassEffectLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<GlassEffectLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<GlassEffectLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<GlassEffectLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<GlassEffectLayout>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>)
  {
    type metadata accessor for ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>(255);
    v3 = v2;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, type metadata accessor for _TraitWritingModifier);
    v6 = type metadata accessor for ModifiedContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ZStack<GlassEntryContainerView>, lazy protocol witness table accessor for type GlassEntryContainerView and conformance GlassEntryContainerView, &type metadata for GlassEntryContainerView, type metadata accessor for ZStack);
    v3 = v2;
    type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>(255);
    v6 = type metadata accessor for ModifiedContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>);
    }
  }
}

void lazy protocol witness table accessor for type GlassEntryContainerView and conformance GlassEntryContainerView()
{
  if (!lazy protocol witness table cache variable for type GlassEntryContainerView and conformance GlassEntryContainerView)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEntryContainerView, &type metadata for GlassEntryContainerView, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEntryContainerView and conformance GlassEntryContainerView);
  }
}

void type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for _LayoutTrait<GlassEffectLayout.Key>, &type metadata for GlassEffectLayout.Key, &protocol witness table for GlassEffectLayout.Key, type metadata accessor for _LayoutTrait);
    v3 = v2;
    lazy protocol witness table accessor for type _LayoutTrait<GlassEffectLayout.Key> and conformance _LayoutTrait<A>();
    v6 = type metadata accessor for _TraitWritingModifier(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>);
    }
  }
}

void lazy protocol witness table accessor for type _LayoutTrait<GlassEffectLayout.Key> and conformance _LayoutTrait<A>()
{
  if (!lazy protocol witness table cache variable for type _LayoutTrait<GlassEffectLayout.Key> and conformance _LayoutTrait<A>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for _LayoutTrait<GlassEffectLayout.Key>, &type metadata for GlassEffectLayout.Key, &protocol witness table for GlassEffectLayout.Key, type metadata accessor for _LayoutTrait);
    swift_getWitnessTable(protocol conformance descriptor for _LayoutTrait<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type _LayoutTrait<GlassEffectLayout.Key> and conformance _LayoutTrait<A>);
  }
}

void lazy protocol witness table accessor for type [GlassContainer.Entry] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [GlassContainer.Entry] and conformance [A])
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry, MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(MEMORY[0x1E69E6338], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [GlassContainer.Entry] and conformance [A]);
  }
}

void lazy protocol witness table accessor for type ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (!*a1)
  {
    v7 = a2(255);
    v9[0] = a3;
    v9[1] = a4;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v9);
    atomic_store(v8, a1);
  }
}

void type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry, MEMORY[0x1E69E62F8]);
    v7 = v6;
    type metadata accessor for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>(255);
    v9 = v8;
    lazy protocol witness table accessor for type [GlassContainer.Entry] and conformance [A]();
    v11 = v10;
    lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v13 = v12;
    lazy protocol witness table accessor for type ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>, lazy protocol witness table accessor for type ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>> and conformance <> ModifiedContent<A, B>, &protocol witness table for _TraitWritingModifier<A>);
    v17[0] = v7;
    v17[1] = &type metadata for GlassContainer.Entry.StableID;
    v17[2] = v9;
    v17[3] = v11;
    v17[4] = v13;
    v17[5] = v14;
    v15 = a3(a1, v17);
    if (!v16)
    {
      atomic_store(v15, a2);
    }
  }
}

void type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for _LayoutRoot<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for _LayoutRoot);
    v3 = v2;
    type metadata accessor for ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(255);
    v5 = type metadata accessor for _VariadicView.Tree(a1, v3, v4, &protocol witness table for _LayoutRoot<A>);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>);
    }
  }
}

void type metadata accessor for ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry, MEMORY[0x1E69E62F8]);
    v3 = v2;
    type metadata accessor for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>(255);
    v5 = v4;
    lazy protocol witness table accessor for type [GlassContainer.Entry] and conformance [A]();
    v7 = v6;
    lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v11[0] = v3;
    v11[1] = &type metadata for GlassContainer.Entry.StableID;
    v11[2] = v5;
    v11[3] = v7;
    v11[4] = v8;
    v9 = type metadata accessor for ForEach(a1, v11);
    if (!v10)
    {
      atomic_store(v9, &lazy cache variable for type metadata for ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>);
    }
  }
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t partial apply for specialized closure #2 in SizeFittingTextCache.suggestedVariant(for:)@<X0>(_BYTE *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  return partial apply for specialized closure #2 in SizeFittingTextCache.suggestedVariant(for:)(a1, a2, a3);
}

{
  result = specialized SizeFittingTextCacheValue.fits(_:)(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), a2, a3);
  *a1 = result & 1;
  return result;
}

void lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView()
{
  if (!lazy protocol witness table cache variable for type GlassEntryView and conformance GlassEntryView)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEntryView, &type metadata for GlassEntryView, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEntryView and conformance GlassEntryView);
  }
}

double outlined consume of _ValueActionModifier2<Int>?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

double outlined copy of _ValueActionModifier2<Int>?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

double partial apply for specialized closure #1 in ScheduledAnimationModifier.body(content:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(v2 + 32);
  v6[0] = *(v2 + 16);
  v6[1] = v4;
  v6[2] = *(v2 + 48);
  v7 = *(v2 + 64);
  return specialized closure #1 in ScheduledAnimationModifier.body(content:)(v3, v6);
}

void type metadata accessor for Task<(), Error>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Task<(), Error>)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for Error, MEMORY[0x1E69E7280]);
    v1 = type metadata accessor for Task();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Task<(), Error>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ScheduledAnimationModifier<Int>>, _ValueActionModifier2<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ScheduledAnimationModifier<Int>>, _ValueActionModifier2<Int>>)
  {
    type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>(255);
    v3 = v2;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for _ValueActionModifier2<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for _ValueActionModifier2);
    v6 = type metadata accessor for ModifiedContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ScheduledAnimationModifier<Int>>, _ValueActionModifier2<Int>>);
    }
  }
}

uint64_t partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:)(v7, a1, v4, v5, (v1 + 32));
}

uint64_t partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:)(__n128 a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for _ViewModifier_Content<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for _ViewModifier_Content);
    v4 = type metadata accessor for ModifiedContent(a1, v2, &type metadata for _TransformEffect, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>);
    }
  }
}

uint64_t outlined init with copy of TranslationKickModifier<Int>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TranslationKickModifier<Int>(uint64_t a1)
{
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, type metadata accessor for _ViewModifier_Content<TranslationKickModifier<Int>>, &type metadata for KickModifier, type metadata accessor for ModifiedContent);
    v3 = v2;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
    v6 = type metadata accessor for ModifiedContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>);
    }
  }
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:)()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:);

  return specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:)((v0 + 16));
}

uint64_t partial apply for specialized closure #1 in TranslationKickModifier.animate()()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  v4 = *(v1 + 16);
  if (v2)
  {
    return (*(*v2 + 128))(&v4, 0);
  }

  return result;
}

uint64_t partial apply for specialized closure #2 in TranslationKickModifier.animate()()
{
  v1 = *(*(v0 + 16) + 120);
  v3[0] = 0;
  v3[1] = 0;
  if (v1)
  {
    return (*(*v1 + 128))(v3, 0);
  }

  return result;
}

uint64_t outlined init with copy of ScalePulseModifier<Int>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ScalePulseModifier<Int>(uint64_t a1)
{
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, &type metadata for _BlurEffect, type metadata accessor for ModifiedContent);
    v3 = v2;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
    v6 = type metadata accessor for ModifiedContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>);
    }
  }
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in ScalePulseModifier.body(content:)()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return specialized implicit closure #2 in implicit closure #1 in ScalePulseModifier.body(content:)(v0 + 16);
}

uint64_t partial apply for specialized closure #1 in ScalePulseModifier.animate()()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 208);
  v10[12] = *(v1 + 192);
  v10[13] = v2;
  v10[14] = *(v1 + 224);
  v11 = *(v1 + 240);
  v3 = *(v1 + 144);
  v10[8] = *(v1 + 128);
  v10[9] = v3;
  v4 = *(v1 + 176);
  v10[10] = *(v1 + 160);
  v10[11] = v4;
  v5 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v5;
  v6 = *(v1 + 112);
  v10[6] = *(v1 + 96);
  v10[7] = v6;
  v7 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v7;
  v8 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v8;
  return specialized closure #1 in ScalePulseModifier.animate()(v10);
}

uint64_t partial apply for specialized closure #3 in ScalePulseModifier.animate()()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 208);
  v10[12] = *(v1 + 192);
  v10[13] = v2;
  v10[14] = *(v1 + 224);
  v11 = *(v1 + 240);
  v3 = *(v1 + 144);
  v10[8] = *(v1 + 128);
  v10[9] = v3;
  v4 = *(v1 + 176);
  v10[10] = *(v1 + 160);
  v10[11] = v4;
  v5 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v5;
  v6 = *(v1 + 112);
  v10[6] = *(v1 + 96);
  v10[7] = v6;
  v7 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v7;
  v8 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v8;
  return specialized closure #3 in ScalePulseModifier.animate()(v10);
}

uint64_t partial apply for specialized closure #4 in ScalePulseModifier.animate()()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 208);
  v10[12] = *(v1 + 192);
  v10[13] = v2;
  v10[14] = *(v1 + 224);
  v11 = *(v1 + 240);
  v3 = *(v1 + 144);
  v10[8] = *(v1 + 128);
  v10[9] = v3;
  v4 = *(v1 + 176);
  v10[10] = *(v1 + 160);
  v10[11] = v4;
  v5 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v5;
  v6 = *(v1 + 112);
  v10[6] = *(v1 + 96);
  v10[7] = v6;
  v7 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v7;
  v8 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v8;
  return specialized closure #4 in ScalePulseModifier.animate()(v10);
}

uint64_t partial apply for specialized closure #5 in ScalePulseModifier.animate()()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 208);
  v10[12] = *(v1 + 192);
  v10[13] = v2;
  v10[14] = *(v1 + 224);
  v11 = *(v1 + 240);
  v3 = *(v1 + 144);
  v10[8] = *(v1 + 128);
  v10[9] = v3;
  v4 = *(v1 + 176);
  v10[10] = *(v1 + 160);
  v10[11] = v4;
  v5 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v5;
  v6 = *(v1 + 112);
  v10[6] = *(v1 + 96);
  v10[7] = v6;
  v7 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v7;
  v8 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v8;
  return specialized closure #2 in ScalePulseModifier.animate()(v10, 0.0);
}

uint64_t partial apply for specialized closure #2 in ScalePulseModifier.animate()()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 208);
  v10[12] = *(v1 + 192);
  v10[13] = v2;
  v10[14] = *(v1 + 224);
  v11 = *(v1 + 240);
  v3 = *(v1 + 144);
  v10[8] = *(v1 + 128);
  v10[9] = v3;
  v4 = *(v1 + 176);
  v10[10] = *(v1 + 160);
  v10[11] = v4;
  v5 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v5;
  v6 = *(v1 + 112);
  v10[6] = *(v1 + 96);
  v10[7] = v6;
  v7 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v7;
  v8 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v8;
  return specialized closure #2 in ScalePulseModifier.animate()(v10, 1.0);
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>(255);
    v3 = v2;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
    v6 = type metadata accessor for ModifiedContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for ModifiedContent);
    v3 = v2;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
    v6 = type metadata accessor for ModifiedContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for _ViewModifier_Content<GlassTransitionStateModifier>, lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier, &type metadata for GlassTransitionStateModifier, type metadata accessor for _ViewModifier_Content);
    v4 = type metadata accessor for ModifiedContent(a1, v2, &type metadata for _OpacityEffect, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier, &type metadata for GlassEffectShapeModifier, type metadata accessor for _ViewModifier_Content);
    v3 = v2;
    type metadata accessor for _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>(255);
    v6 = type metadata accessor for ModifiedContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>);
    }
  }
}

void type metadata accessor for _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>)
  {
    type metadata accessor for CGRect(255);
    v3 = type metadata accessor for _AnchorWritingModifier(a1, v2, &type metadata for GlassMaterialShapeKey, &protocol witness table for GlassMaterialShapeKey);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>);
    }
  }
}

uint64_t outlined destroy of (value: GlassEffectShapeModifier, changed: Bool)(uint64_t a1)
{
  type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (value: GlassEffectShapeModifier, changed: Bool), &type metadata for GlassEffectShapeModifier, MEMORY[0x1E69E6370], "value changed ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout()
{
  if (!lazy protocol witness table cache variable for type GlassEntryLayout and conformance GlassEntryLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEntryLayout, &type metadata for GlassEntryLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEntryLayout and conformance GlassEntryLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type GlassEntryLayout and conformance GlassEntryLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEntryLayout, &type metadata for GlassEntryLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEntryLayout and conformance GlassEntryLayout);
  }
}

void type metadata accessor for LayoutEngineBox<ViewLayoutEngine<GlassEntryLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<GlassEntryLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<GlassEntryLayout>>);
    }
  }
}

void type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<GlassEntryLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<GlassEntryLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for TracingLayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TracingLayoutEngineBox<ViewLayoutEngine<GlassEntryLayout>>);
    }
  }
}

void lazy protocol witness table accessor for type [GlassContainer.Item] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [GlassContainer.Item] and conformance [A])
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(MEMORY[0x1E69E6338], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [GlassContainer.Item] and conformance [A]);
  }
}

void lazy protocol witness table accessor for type GlassItemView and conformance GlassItemView()
{
  if (!lazy protocol witness table cache variable for type GlassItemView and conformance GlassItemView)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassItemView, &type metadata for GlassItemView, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassItemView and conformance GlassItemView);
  }
}

void type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Info(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
    v7 = v6;
    lazy protocol witness table accessor for type [GlassContainer.Item] and conformance [A]();
    v9 = v8;
    lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID();
    v11 = v10;
    lazy protocol witness table accessor for type GlassItemView and conformance GlassItemView();
    v15[0] = v7;
    v15[1] = &type metadata for GlassContainer.Item.ID;
    v15[2] = &type metadata for GlassItemView;
    v15[3] = v9;
    v15[4] = v11;
    v15[5] = v12;
    v13 = a3(a1, v15);
    if (!v14)
    {
      atomic_store(v13, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, &type metadata for GlassTransitionStateModifier, type metadata accessor for ModifiedContent);
    v3 = v2;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
    v6 = type metadata accessor for ModifiedContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>);
    }
  }
}

void type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for _LayoutRoot<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for _LayoutRoot);
    v3 = v2;
    type metadata accessor for ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>(255);
    v5 = type metadata accessor for _VariadicView.Tree(a1, v3, v4, &protocol witness table for _LayoutRoot<A>);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>);
    }
  }
}

void type metadata accessor for ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
    v3 = v2;
    lazy protocol witness table accessor for type [GlassContainer.Item] and conformance [A]();
    v5 = v4;
    lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID();
    v9[0] = v3;
    v9[1] = &type metadata for GlassContainer.Item.ID;
    v9[2] = &type metadata for GlassItemView;
    v9[3] = v5;
    v9[4] = v6;
    v7 = type metadata accessor for ForEach(a1, v9);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>);
    }
  }
}

void type metadata accessor for _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, GlassEntryView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, GlassEntryView>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for _LayoutRoot<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for _LayoutRoot);
    v3 = type metadata accessor for _VariadicView.Tree(a1, v2, &type metadata for GlassEntryView, &protocol witness table for _LayoutRoot<A>);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, GlassEntryView>);
    }
  }
}

uint64_t outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for _ViewModifier_Content<FlexInteractionModifier>, lazy protocol witness table accessor for type FlexInteractionModifier and conformance FlexInteractionModifier, &type metadata for FlexInteractionModifier, type metadata accessor for _ViewModifier_Content);
    v4 = type metadata accessor for ModifiedContent(a1, v2, &type metadata for FlexStateModifier, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>(255);
    v3 = v2;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, type metadata accessor for _TraitWritingModifier);
    v6 = type metadata accessor for ModifiedContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, &type metadata for PrimitiveGlassItemView, &type metadata for GlassTransitionStateModifier, type metadata accessor for ModifiedContent);
    v4 = type metadata accessor for ModifiedContent(a1, v2, &type metadata for _GeometryGroupEffect, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>);
    }
  }
}

void type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for _LayoutTrait<GlassEntryLayout.Key>, &type metadata for GlassEntryLayout.Key, &protocol witness table for GlassEntryLayout.Key, type metadata accessor for _LayoutTrait);
    v3 = v2;
    lazy protocol witness table accessor for type _LayoutTrait<GlassEntryLayout.Key> and conformance _LayoutTrait<A>();
    v6 = type metadata accessor for _TraitWritingModifier(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>);
    }
  }
}

void lazy protocol witness table accessor for type _LayoutTrait<GlassEntryLayout.Key> and conformance _LayoutTrait<A>()
{
  if (!lazy protocol witness table cache variable for type _LayoutTrait<GlassEntryLayout.Key> and conformance _LayoutTrait<A>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for _LayoutTrait<GlassEntryLayout.Key>, &type metadata for GlassEntryLayout.Key, &protocol witness table for GlassEntryLayout.Key, type metadata accessor for _LayoutTrait);
    swift_getWitnessTable(protocol conformance descriptor for _LayoutTrait<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type _LayoutTrait<GlassEntryLayout.Key> and conformance _LayoutTrait<A>);
  }
}

Swift::Int DisplayList.PlatformEffect.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](0);
  return Hasher._finalize()();
}

void lazy protocol witness table accessor for type DisplayList.PlatformEffect and conformance DisplayList.PlatformEffect()
{
  if (!lazy protocol witness table cache variable for type DisplayList.PlatformEffect and conformance DisplayList.PlatformEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for DisplayList.PlatformEffect, &type metadata for DisplayList.PlatformEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DisplayList.PlatformEffect and conformance DisplayList.PlatformEffect);
  }
}

void _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI9AnimationV_s5NeverOytTg503_s7c95UI11DisplayListV4ItemV5print33_11125C146A81D1913BFBD53B89D010C6LL4intoyAA11SExpPrinterVz_tFyAA9E7VXEfU0_AD0wX0VTf1cn_n(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    closure #2 in DisplayList.Item.print(into:)(&v3, a2);
    if (v2)
    {
      __break(1u);
    }
  }
}

void DisplayList.description.getter()
{
  v1 = *v0;
  strcpy(&v9, "(display-list");
  HIWORD(v9._object) = -4864;
  v2 = xmmword_18DDAB890;
  v10 = xmmword_18DDAB890;
  v11 = 0xE200000000000000;
  v3 = *(v1 + 16);
  if (v3)
  {
    DisplayList.Item.print(into:)(&v9);
    v4 = v3 - 1;
    if (v4)
    {
      v5 = v1 + 112;
      do
      {
        v5 += 80;
        DisplayList.Item.print(into:)(&v9);
        --v4;
      }

      while (v4);
    }

    v6 = v10;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 1;
  }

  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (!v7)
  {
    *&v10 = v8;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v2);
LABEL_10:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);

    return;
  }

  __break(1u);
}

void DisplayList.print(into:)(Swift::String *result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    DisplayList.Item.print(into:)(result);
    v5 = v3 - 1;
    if (v5)
    {
      v6 = v2 + 112;
      do
      {
        v6 += 80;
        DisplayList.Item.print(into:)(result);
        --v5;
      }

      while (v5);
    }
  }
}

void DisplayList.minimalDescription.getter()
{
  v1 = *v0;
  v6[0] = 4998184;
  v6[1] = 0xE300000000000000;
  v7 = 0;
  v8 = 0;
  v9 = 0xE000000000000000;
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_8;
  }

  DisplayList.Item.printMinimally(into:)(v6);
  v4 = v2 - 1;
  if (v4)
  {
    v5 = v1 + 112;
    do
    {
      v5 += 80;
      DisplayList.Item.printMinimally(into:)(v6);
      --v4;
    }

    while (v4);
  }

  if (!v7)
  {
    goto LABEL_8;
  }

  if (!__OFSUB__(v7, 1))
  {
    --v7;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v3);
LABEL_8:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);

    return;
  }

  __break(1u);
}

void DisplayList.Item.print(into:)(Swift::String *a1)
{
  v4 = type metadata accessor for DisplayList.ArchiveIDs(0);
  v337 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v336 = &v331[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for DisplayList.ArchiveIDs?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v331[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v338 = &v331[-v10];
  v11 = v1[3];
  v356 = v1[2];
  *v357 = v11;
  *&v357[12] = *(v1 + 60);
  v12 = v1[1];
  v354 = *v1;
  v355 = v12;
  v13._countAndFlagsBits = 1835365481;
  v13._object = 0xE400000000000000;
  SExpPrinter.push(_:)(v13);
  if (*&v357[24])
  {
    *&v347 = 0x69746E6564693A23;
    *(&v347 + 1) = 0xEB00000000207974;
    LODWORD(v343) = *&v357[24];
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v14);

    v15 = v347;
    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    MEMORY[0x193ABEDD0](v15._countAndFlagsBits, v15._object);
  }

  *&v347 = 0x6F69737265763A23;
  *(&v347 + 1) = 0xEA0000000000206ELL;
  *&v343 = v356;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v16);

  v17 = v347;
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](v17._countAndFlagsBits, v17._object);

  v349 = v356;
  v350[0] = *v357;
  *(v350 + 12) = *&v357[12];
  v347 = v354;
  v348 = v355;
  DisplayList.Item.features.getter(&v343);
  if (v343)
  {
    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x7269757165723A23, 0xEF65757274206465);
  }

  v349 = v356;
  v350[0] = *v357;
  *(v350 + 12) = *&v357[12];
  v347 = v354;
  v348 = v355;
  DisplayList.Item.features.getter(&v343);
  if ((v343 & 2) != 0)
  {
    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x2073776569763A23, 0xEC00000065757274);
  }

  *&v347 = 0x2820656D61726628;
  *(&v347 + 1) = 0xE800000000000000;
  object = v354._object;
  v19 = *(&v355 + 1);
  v20 = *&v355;
  v21 = Double.description.getter();
  MEMORY[0x193ABEDD0](v21);

  v22 = 32;
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  v23 = Double.description.getter();
  MEMORY[0x193ABEDD0](v23);

  MEMORY[0x193ABEDD0](59, 0xE100000000000000);
  v25 = *(&v347 + 1);
  v24 = v347;
  *&v347 = 32;
  *(&v347 + 1) = 0xE100000000000000;
  v26 = Double.description.getter();
  MEMORY[0x193ABEDD0](v26);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  v27 = Double.description.getter();
  MEMORY[0x193ABEDD0](v27);

  MEMORY[0x193ABEDD0](10537, 0xE200000000000000);
  v29 = *(&v347 + 1);
  v28 = v347;
  v347 = __PAIR128__(v25, v24);

  MEMORY[0x193ABEDD0](v28, v29);

  v30 = *(&v347 + 1);
  v31 = v347;
  if (a1[1]._countAndFlagsBits)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    v32 = a1[1]._object;
    countAndFlagsBits = a1[2]._countAndFlagsBits;
  }

  else
  {
    v32 = 32;
    countAndFlagsBits = 0xE100000000000000;
  }

  MEMORY[0x193ABEDD0](v32, countAndFlagsBits);
  MEMORY[0x193ABEDD0](v31, v30);

  v339 = a1;
  v340 = *(&v356 + 1);
  v35 = *&v357[16];
  v36 = *&v357[16] >> 30;
  if (*&v357[16] >> 30 <= 1u)
  {
    v31 = *v357;
    if (!v36)
    {
      strcpy(&v343, "(content-seed ");
      HIBYTE(v343) = -18;
      LOWORD(v352[0]._countAndFlagsBits) = *v357;
      outlined init with copy of DisplayList.Item(&v354, &v347);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v37);

      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      v38 = *(&v343 + 1);
      v39 = v343;
      if (a1[1]._countAndFlagsBits)
      {
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v40 = a1[1]._object;
        v41 = a1[2]._countAndFlagsBits;
      }

      else
      {
        v40 = 32;
        v41 = 0xE100000000000000;
      }

      MEMORY[0x193ABEDD0](v40, v41);
      v75 = &v347;
      MEMORY[0x193ABEDD0](v39, v38);

      switch(v340 >> 60)
      {
        case 1uLL:
          v343 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          LODWORD(v344) = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v352[0]._countAndFlagsBits = 0x20726F6C6F6328;
          v352[0]._object = 0xE700000000000000;
          outlined init with copy of DisplayList.Item(&v354, &v347);
          v137 = Color.ResolvedHDR.description.getter();
          MEMORY[0x193ABEDD0](v137);

          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v138 = v352[0]._object;
          v139 = v352[0]._countAndFlagsBits;
          goto LABEL_90;
        case 2uLL:
          goto LABEL_75;
        case 3uLL:
          v123 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v350[0] = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v350[1] = v123;
          v351[0] = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
          *(v351 + 12) = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
          v124 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v347 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v348 = v124;
          v349 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          outlined init with copy of DisplayList.Item(&v354, &v343);
          outlined init with copy of GraphicsImage(&v347, &v343);
          v125._countAndFlagsBits = 0x6567616D69;
          v125._object = 0xE500000000000000;
          SExpPrinter.push(_:)(v125);
          strcpy(&v343, "#:size (");
          BYTE9(v343) = 0;
          WORD5(v343) = 0;
          HIDWORD(v343) = -402653184;
          v325 = Double.description.getter();
          MEMORY[0x193ABEDD0](v325);

          MEMORY[0x193ABEDD0](32, 0xE100000000000000);
          v326 = Double.description.getter();
          MEMORY[0x193ABEDD0](v326);

          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v327 = v343;
          MEMORY[0x193ABEDD0](32, 0xE100000000000000);
          MEMORY[0x193ABEDD0](v327._countAndFlagsBits, v327._object);

          v329 = a1[1]._countAndFlagsBits;
          if (!v329)
          {
            goto LABEL_306;
          }

          v59 = __OFSUB__(v329, 1);
          v330 = v329 - 1;
          if (v59)
          {
            goto LABEL_313;
          }

          a1[1]._countAndFlagsBits = v330;
          specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v328);
LABEL_306:
          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          outlined destroy of DisplayList.Item(&v354);
          outlined destroy of GraphicsImage(&v347);
          goto LABEL_218;
        case 4uLL:
          goto LABEL_63;
        case 5uLL:
          v140 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v141 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v35 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          outlined init with copy of DisplayList.Item(&v354, &v347);

          v142._countAndFlagsBits = 0x706168732D666473;
          v142._object = 0xE900000000000065;
          SExpPrinter.push(_:)(v142);
          *&v347 = 0;
          *(&v347 + 1) = 0xE000000000000000;
          MEMORY[0x193ABEDD0](0x206874617028, 0xE600000000000000);
          *&v343 = v140;
          *(&v343 + 1) = v141;
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v143 = *(&v347 + 1);
          v8 = v347;
          if (!a1[1]._countAndFlagsBits)
          {
            goto LABEL_204;
          }

          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v144 = a1[1]._object;
          v145 = a1[2]._countAndFlagsBits;
          goto LABEL_205;
        case 6uLL:
          v150 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v151 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v152 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
          v153 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v154 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v155 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x2C);
          outlined init with copy of DisplayList.Item(&v354, &v347);
          v156._countAndFlagsBits = 0x6B73616D2D666473;
          v156._object = 0xE800000000000000;
          SExpPrinter.push(_:)(v156);
          *&v347 = 0;
          *(&v347 + 1) = 0xE000000000000000;
          MEMORY[0x193ABEDD0](0x20656C79747328, 0xE700000000000000);
          *&v343 = v153;
          *(&v343 + 1) = __PAIR64__(v155, v154);
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v157 = v347;
          if (a1[1]._countAndFlagsBits)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v158 = a1[1]._object;
            v159 = a1[2]._countAndFlagsBits;
          }

          else
          {
            v158 = 32;
            v159 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v158, v159);
          MEMORY[0x193ABEDD0](v157._countAndFlagsBits, v157._object);

          *&v347 = v150;
          WORD4(v347) = v151;
          HIDWORD(v347) = v152;
          DisplayList.print(into:)(a1);
          v285 = a1[1]._countAndFlagsBits;
          if (!v285)
          {
            goto LABEL_217;
          }

          v59 = __OFSUB__(v285, 1);
          v95 = v285 - 1;
          if (!v59)
          {
            goto LABEL_216;
          }

          goto LABEL_317;
        case 7uLL:
          v126 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v352[0] = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v352[1] = v126;
          v353 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v127 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x48);
          v343 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
          v344 = v127;
          v345[0] = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x58);
          *(v345 + 13) = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x65);
          outlined init with copy of DisplayList.Item(&v354, &v347);
          v128._countAndFlagsBits = 0x776F64616873;
          v128._object = 0xE600000000000000;
          SExpPrinter.push(_:)(v128);
          *&v347 = 0x206874617028;
          *(&v347 + 1) = 0xE600000000000000;
          v129 = Path.cgPath.getter();
          v130 = _CGPathCopyDescription(v129, 0.0);

          v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v79 = v132;

          MEMORY[0x193ABEDD0](v131, v79);

          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v133 = *(&v347 + 1);
          v134 = v347;
          if (!a1[1]._countAndFlagsBits)
          {
            goto LABEL_185;
          }

          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v135 = a1[1]._object;
          v136 = a1[2]._countAndFlagsBits;
          goto LABEL_186;
        case 8uLL:
          v166._countAndFlagsBits = 0x6D726F6674616C70;
          v166._object = 0xED0000776569762DLL;
          SExpPrinter.push(_:)(v166);
          v167 = a1[1]._countAndFlagsBits;
          if (!v167)
          {
            goto LABEL_95;
          }

          v59 = __OFSUB__(v167, 1);
          v115 = v167 - 1;
          if (!v59)
          {
            goto LABEL_94;
          }

          goto LABEL_316;
        case 9uLL:
          v112._countAndFlagsBits = 0x6D726F6674616C70;
          v112._object = 0xEE00726579616C2DLL;
          SExpPrinter.push(_:)(v112);
          v114 = a1[1]._countAndFlagsBits;
          if (!v114)
          {
            goto LABEL_95;
          }

          v59 = __OFSUB__(v114, 1);
          v115 = v114 - 1;
          if (!v59)
          {
LABEL_94:
            a1[1]._countAndFlagsBits = v115;
            specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v113);
LABEL_95:
            MEMORY[0x193ABEDD0](41, 0xE100000000000000);
            goto LABEL_218;
          }

          __break(1u);
LABEL_75:
          v116 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v117 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v20 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          object = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          outlined init with copy of DisplayList.Item(&v354, &v347);

          v118._countAndFlagsBits = 0x6F656C656D616863;
          v118._object = 0xEF726F6C6F632D6ELL;
          SExpPrinter.push(_:)(v118);
          strcpy(&v343, "(color ");
          *(&v343 + 1) = 0xE700000000000000;
          *&v347 = v20;
          *(&v347 + 1) = object;
          LODWORD(v348) = v116;
          v119 = Color.ResolvedHDR.description.getter();
          MEMORY[0x193ABEDD0](v119);

          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v120 = *(&v343 + 1);
          v103 = v343;
          if (a1[1]._countAndFlagsBits)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v121 = a1[1]._object;
            v122 = a1[2]._countAndFlagsBits;
          }

          else
          {
LABEL_177:
            v121 = 32;
            v122 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v121, v122);
          MEMORY[0x193ABEDD0](v103, v120);

          strcpy(&v343, "(filters ");
          WORD5(v343) = 0;
          HIDWORD(v343) = -385875968;
          v261 = MEMORY[0x193ABF1C0](v117, &type metadata for GraphicsFilter);
          v79 = v262;

          MEMORY[0x193ABEDD0](v261, v79);

          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v133 = *(&v343 + 1);
          v134 = v343;
          if (a1[1]._countAndFlagsBits)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v263 = a1[1]._object;
            v264 = a1[2]._countAndFlagsBits;
          }

          else
          {
            v263 = 32;
            v264 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v263, v264);
          MEMORY[0x193ABEDD0](v134, v133);

          v265 = a1[1]._countAndFlagsBits;
          if (!v265)
          {
            goto LABEL_217;
          }

          v59 = __OFSUB__(v265, 1);
          v95 = v265 - 1;
          if (!v59)
          {
            goto LABEL_216;
          }

          __break(1u);
LABEL_185:
          v135 = 32;
          v136 = 0xE100000000000000;
LABEL_186:
          MEMORY[0x193ABEDD0](v135, v136);
          MEMORY[0x193ABEDD0](v134, v133);

          v341 = 0;
          v342 = 0xE000000000000000;
          MEMORY[0x193ABEDD0](0x20776F6461687328, 0xE800000000000000);
          v347 = v343;
          v348 = v344;
          v349 = v345[0];
          *(&v75[2]._object + 5) = *(v345 + 13);
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v78 = v341;
          v76 = v342;
          if (a1[1]._countAndFlagsBits)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v266 = a1[1]._object;
            v267 = a1[2]._countAndFlagsBits;
          }

          else
          {
            v266 = 32;
            v267 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v266, v267);
          MEMORY[0x193ABEDD0](v78, v76);

          v268 = a1[1]._countAndFlagsBits;
          if (!v268)
          {
            goto LABEL_217;
          }

          v59 = __OFSUB__(v268, 1);
          v95 = v268 - 1;
          if (!v59)
          {
            goto LABEL_216;
          }

          __break(1u);
LABEL_193:
          v80 = 32;
          v81 = 0xE100000000000000;
LABEL_194:
          MEMORY[0x193ABEDD0](v80, v81);
          MEMORY[0x193ABEDD0](v79, v78);

          strcpy(&v343, "(color ");
          *(&v343 + 1) = 0xE700000000000000;
          *&v347 = v20;
          *(&v347 + 1) = object;
          LODWORD(v348) = v2;
          v269 = Color.ResolvedHDR.description.getter();
          MEMORY[0x193ABEDD0](v269);

          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v270 = v343;
          if (a1[1]._countAndFlagsBits)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v271 = a1[1]._object;
            v272 = a1[2]._countAndFlagsBits;
          }

          else
          {
            v271 = 32;
            v272 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v271, v272);
          MEMORY[0x193ABEDD0](v270._countAndFlagsBits, v270._object);

          strcpy(&v343, "(filters ");
          WORD5(v343) = 0;
          HIDWORD(v343) = -385875968;
          v273 = MEMORY[0x193ABF1C0](v76, &type metadata for GraphicsFilter);
          v143 = v274;

          MEMORY[0x193ABEDD0](v273, v143);

          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v275 = v343;
          if (a1[1]._countAndFlagsBits)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v276 = a1[1]._object;
            v277 = a1[2]._countAndFlagsBits;
          }

          else
          {
            v276 = 32;
            v277 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v276, v277);
          MEMORY[0x193ABEDD0](v275._countAndFlagsBits, v275._object);

          v278 = a1[1]._countAndFlagsBits;
          if (!v278)
          {
            goto LABEL_217;
          }

          v59 = __OFSUB__(v278, 1);
          v95 = v278 - 1;
          if (!v59)
          {
            goto LABEL_216;
          }

          __break(1u);
LABEL_204:
          v144 = 32;
          v145 = 0xE100000000000000;
LABEL_205:
          MEMORY[0x193ABEDD0](v144, v145);
          MEMORY[0x193ABEDD0](v8, v143);

          *&v347 = 0;
          *(&v347 + 1) = 0xE000000000000000;
          MEMORY[0x193ABEDD0](0x20656C79747328, 0xE700000000000000);
          *&v343 = v35;
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v279 = v347;
          if (a1[1]._countAndFlagsBits)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v280 = a1[1]._object;
            v281 = a1[2]._countAndFlagsBits;
          }

          else
          {
            v280 = 32;
            v281 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v280, v281);
          MEMORY[0x193ABEDD0](v279._countAndFlagsBits, v279._object);

          v283 = a1[1]._countAndFlagsBits;
          if (v283)
          {
            v59 = __OFSUB__(v283, 1);
            v284 = v283 - 1;
            if (v59)
            {
              goto LABEL_314;
            }

            a1[1]._countAndFlagsBits = v284;
            specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v282);
          }

          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          outlined destroy of DisplayList.Item(&v354);

LABEL_212:

          goto LABEL_218;
        case 0xAuLL:
          v160 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v161 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v162 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          *&v343 = 0;
          *(&v343 + 1) = 0xE000000000000000;
          outlined init with copy of DisplayList.Item(&v354, &v347);
          _StringGuts.grow(_:)(21);
          v347 = v343;
          MEMORY[0x193ABEDD0](0x22207478657428, 0xE700000000000000);
          v163 = specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v160);
          MEMORY[0x193ABEDD0](0x657A69733A232022, 0xE900000000000020, v163);
          *&v343 = v161;
          *(&v343 + 1) = v162;
          type metadata accessor for CGSize(0);
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v138 = *(&v347 + 1);
          v139 = v347;
LABEL_90:
          if (a1[1]._countAndFlagsBits)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v164 = a1[1]._object;
            v165 = a1[2]._countAndFlagsBits;
          }

          else
          {
            v164 = 32;
            v165 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v164, v165);
          MEMORY[0x193ABEDD0](v139, v138);
          outlined destroy of DisplayList.Item(&v354);
          goto LABEL_212;
        case 0xBuLL:
          v85 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v86 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v87 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
          v20 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v88 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          outlined init with copy of DisplayList.Item(&v354, &v347);
          v89._countAndFlagsBits = 0x656E657474616C66;
          v89._object = 0xE900000000000064;
          SExpPrinter.push(_:)(v89);
          if (*&v20 != 0.0 || v88 != 0.0)
          {
            *&v347 = 0x6E696769726F3A23;
            *(&v347 + 1) = 0xEA00000000002820;
            v90 = Double.description.getter();
            MEMORY[0x193ABEDD0](v90);

            MEMORY[0x193ABEDD0](32, 0xE100000000000000);
            v91 = Double.description.getter();
            MEMORY[0x193ABEDD0](v91);

            MEMORY[0x193ABEDD0](41, 0xE100000000000000);
            v92 = v347;
            MEMORY[0x193ABEDD0](32, 0xE100000000000000);
            MEMORY[0x193ABEDD0](v92._countAndFlagsBits, v92._object);
          }

          *&v347 = v85;
          WORD4(v347) = v86;
          HIDWORD(v347) = v87;
          DisplayList.print(into:)(a1);
          v94 = a1[1]._countAndFlagsBits;
          if (!v94)
          {
            goto LABEL_217;
          }

          v59 = __OFSUB__(v94, 1);
          v95 = v94 - 1;
          if (!v59)
          {
            goto LABEL_216;
          }

          __break(1u);
LABEL_63:
          v96 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v343 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v344 = v96;
          LOBYTE(v345[0]) = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v75 = a1;
          v97 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
          v8 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v35 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x41);
          outlined init with copy of DisplayList.Item(&v354, &v347);
          v98._countAndFlagsBits = 0x6570616873;
          v98._object = 0xE500000000000000;
          SExpPrinter.push(_:)(v98);
          *&v347 = 0x206874617028;
          *(&v347 + 1) = 0xE600000000000000;
          v99 = Path.cgPath.getter();
          v100 = _CGPathCopyDescription(v99, 0.0);

          v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v103 = v102;

          MEMORY[0x193ABEDD0](v101, v103);

          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v104 = v347;
          if (v75[1]._countAndFlagsBits)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v105 = v75[1]._object;
            v106 = v75[2]._countAndFlagsBits;
          }

          else
          {
            v105 = 32;
            v106 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v105, v106);
          MEMORY[0x193ABEDD0](v104._countAndFlagsBits, v104._object);

          *&v347 = 0;
          *(&v347 + 1) = 0xE000000000000000;
          MEMORY[0x193ABEDD0](0x20746E69617028, 0xE700000000000000);
          v352[0]._countAndFlagsBits = v97;
          type metadata accessor for AnyResolvedPaint();
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v255 = v347;
          a1 = v75;
          if (v75[1]._countAndFlagsBits)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v256 = v75[1]._object;
            v257 = v75[2]._countAndFlagsBits;
          }

          else
          {
            v256 = 32;
            v257 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v256, v257);
          MEMORY[0x193ABEDD0](v255._countAndFlagsBits, v255._object);

          *&v347 = 0;
          *(&v347 + 1) = 0xE000000000000000;
          MEMORY[0x193ABEDD0](0x20656C79747328, 0xE700000000000000);
          LOBYTE(v352[0]._countAndFlagsBits) = v8;
          BYTE1(v352[0]._countAndFlagsBits) = v35;
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v117 = *(&v347 + 1);
          v120 = v347;
          if (v75[1]._countAndFlagsBits)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v258 = v75[1]._object;
            v259 = v75[2]._countAndFlagsBits;
          }

          else
          {
            v258 = 32;
            v259 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v258, v259);
          MEMORY[0x193ABEDD0](v120, v117);

          v260 = v75[1]._countAndFlagsBits;
          if (!v260)
          {
            goto LABEL_217;
          }

          v59 = __OFSUB__(v260, 1);
          v95 = v260 - 1;
          if (!v59)
          {
            goto LABEL_216;
          }

          __break(1u);
          goto LABEL_177;
        case 0xCuLL:
          v108 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v107 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v109 = *((v340 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          outlined init with copy of DisplayList.Item(&v354, &v347);
          v110._countAndFlagsBits = 0x676E6977617264;
          v110._object = 0xE700000000000000;
          SExpPrinter.push(_:)(v110);
          if (v108 == 0.0 && v107 == 0.0)
          {
            if ((v109 & 1) == 0)
            {
              goto LABEL_68;
            }
          }

          else
          {
            *&v347 = 0x74657366666F3A23;
            *(&v347 + 1) = 0xEA00000000002820;
            v253 = Double.description.getter();
            MEMORY[0x193ABEDD0](v253);

            MEMORY[0x193ABEDD0](32, 0xE100000000000000);
            v254 = Double.description.getter();
            MEMORY[0x193ABEDD0](v254);

            MEMORY[0x193ABEDD0](41, 0xE100000000000000);
            v30 = *(&v347 + 1);
            v38 = v347;
            MEMORY[0x193ABEDD0](32, 0xE100000000000000);
            MEMORY[0x193ABEDD0](v38, v30);

            if ((v109 & 1) == 0)
            {
LABEL_68:
              if ((v109 & 0x40) == 0)
              {
                goto LABEL_69;
              }

              goto LABEL_159;
            }
          }

          MEMORY[0x193ABEDD0](32, 0xE100000000000000);
          MEMORY[0x193ABEDD0](0x656C656363613A23, 0xED00006465746172);
          if ((v109 & 0x40) == 0)
          {
LABEL_69:
            v111 = a1[1]._countAndFlagsBits;
            if (!v111)
            {
LABEL_217:
              MEMORY[0x193ABEDD0](41, 0xE100000000000000);
              outlined destroy of DisplayList.Item(&v354);
LABEL_218:
              outlined destroy of DisplayList.Item(&v354);
              goto LABEL_219;
            }

            goto LABEL_160;
          }

LABEL_159:
          MEMORY[0x193ABEDD0](32, 0xE100000000000000);
          MEMORY[0x193ABEDD0](0x2D6168706C613A23, 0xEC000000796C6E6FLL);
          v111 = a1[1]._countAndFlagsBits;
          if (!v111)
          {
            goto LABEL_217;
          }

LABEL_160:
          v59 = __OFSUB__(v111, 1);
          v95 = v111 - 1;
          if (!v59)
          {
LABEL_216:
            a1[1]._countAndFlagsBits = v95;
            specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v93);
            goto LABEL_217;
          }

          __break(1u);
LABEL_163:
          v83 = 32;
          v84 = 0xE100000000000000;
LABEL_164:
          MEMORY[0x193ABEDD0](v83, v84);
          MEMORY[0x193ABEDD0](v30, v38);
          outlined destroy of DisplayList.Item(&v354);

          v74 = a1[1]._countAndFlagsBits;
          if (v74)
          {
            goto LABEL_300;
          }

LABEL_302:
          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          return;
        case 0xDuLL:
          outlined init with copy of AnyTrackedValue((v340 & 0xFFFFFFFFFFFFFFFLL) + 16, &v343);
          strcpy(v352, "view #:type ");
          BYTE5(v352[0]._object) = 0;
          HIWORD(v352[0]._object) = -5120;
          __swift_project_boxed_opaque_existential_1(&v343, *(&v344 + 1));
          swift_getDynamicType();
          outlined init with copy of DisplayList.Item(&v354, &v347);
          v146 = _typeName(_:qualified:)();
          MEMORY[0x193ABEDD0](v146);

          SExpPrinter.push(_:)(v352[0]);

          v148 = a1[1]._countAndFlagsBits;
          if (!v148)
          {
            goto LABEL_86;
          }

          v59 = __OFSUB__(v148, 1);
          v149 = v148 - 1;
          if (v59)
          {
            goto LABEL_315;
          }

          a1[1]._countAndFlagsBits = v149;
          specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v147);
LABEL_86:
          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          outlined destroy of DisplayList.Item(&v354);
          __swift_destroy_boxed_opaque_existential_1(&v343);
          goto LABEL_218;
        case 0xEuLL:
          *&v347 = 0;
          *(&v347 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(16);
          MEMORY[0x193ABEDD0](0x6F686563616C7028, 0xED0000207265646CLL);
          v82 = specialized DefaultStringInterpolation.appendInterpolation<A>(_:)();
          MEMORY[0x193ABEDD0](41, 0xE100000000000000, v82);
          v38 = *(&v347 + 1);
          v30 = v347;
          if (!a1[1]._countAndFlagsBits)
          {
            goto LABEL_163;
          }

          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v83 = a1[1]._object;
          v84 = a1[2]._countAndFlagsBits;
          goto LABEL_164;
        default:
          v20 = *(v340 + 20);
          object = *(v340 + 28);
          v2 = *(v340 + 36);
          v76 = *(v340 + 40);
          outlined init with copy of DisplayList.Item(&v354, &v347);

          v77._countAndFlagsBits = 0x706F72646B636162;
          v77._object = 0xE800000000000000;
          SExpPrinter.push(_:)(v77);
          *&v347 = 0;
          *(&v347 + 1) = 0xE000000000000000;
          MEMORY[0x193ABEDD0](0x20656C61637328, 0xE700000000000000);
          Float.write<A>(to:)();
          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v78 = *(&v347 + 1);
          v79 = v347;
          if (!a1[1]._countAndFlagsBits)
          {
            goto LABEL_193;
          }

          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v80 = a1[1]._object;
          v81 = a1[2]._countAndFlagsBits;
          goto LABEL_194;
      }
    }

    v22 = *&v357[8];
    v43 = HIDWORD(*v357);
    *&v335 = HIDWORD(*&v357[16]);
    outlined init with copy of DisplayList.Item(&v354, &v347);
    v67._countAndFlagsBits = 0x746365666665;
    v67._object = 0xE600000000000000;
    SExpPrinter.push(_:)(v67);
    switch(BYTE4(v31))
    {
      case 1:
        v198 = swift_projectBox();
        v199 = v338;
        outlined init with copy of DisplayList.ArchiveIDs?(v198, v338);
        outlined init with copy of DisplayList.ArchiveIDs?(v199, v8);
        if ((*(v337 + 6))(v8, 1, v4) == 1)
        {
          v200 = 0xE300000000000000;
          v201 = 7104878;
        }

        else
        {
          v286 = v336;
          outlined init with take of DisplayList.ArchiveIDs(v8, v336);
          type metadata accessor for UUID();
          lazy protocol witness table accessor for type UUID and conformance UUID();
          v287 = dispatch thunk of CustomStringConvertible.description.getter();
          v200 = v288;
          outlined destroy of DisplayList.ArchiveIDs?(v286, type metadata accessor for DisplayList.ArchiveIDs);
          v201 = v287;
        }

        *&v347 = 0x7669686372613A23;
        *(&v347 + 1) = 0xEA00000000002065;
        MEMORY[0x193ABEDD0](v201, v200);

        v290 = *(&v347 + 1);
        v289 = v347;
        v291 = v339;
        MEMORY[0x193ABEDD0](32, 0xE100000000000000);
        MEMORY[0x193ABEDD0](v289, v290);
        a1 = v291;

        outlined destroy of DisplayList.ArchiveIDs?(v338, type metadata accessor for DisplayList.ArchiveIDs?);
        goto LABEL_296;
      case 2:
        goto LABEL_121;
      case 3:
        v186 = "#:platform-group";
        goto LABEL_139;
      case 4:
        *&v347 = 0;
        *(&v347 + 1) = 0xE000000000000000;
        MEMORY[0x193ABEDD0](0x74696361706F3A23, 0xEA00000000002079);
        Float.write<A>(to:)();
        goto LABEL_144;
      case 5:
        *&v347 = 0;
        *(&v347 + 1) = 0xE000000000000000;
        MEMORY[0x193ABEDD0](0x2D646E656C623A23, 0xED00002065646F6DLL);
        *&v343 = v340;
        BYTE8(v343) = v31 & 1;
        _print_unlocked<A, B>(_:_:)();
        goto LABEL_144;
      case 6:
        v338 = v22;
        v204 = *(v340 + 32);
        v347 = *(v340 + 16);
        v348 = v204;
        LOBYTE(v349) = *(v340 + 48);
        v205 = *(v340 + 49);
        v206 = *(v340 + 50);
        LODWORD(v337) = *(v340 + 52);
        v207._countAndFlagsBits = 1885957219;
        v207._object = 0xE400000000000000;
        SExpPrinter.push(_:)(v207);
        *&v343 = 0x206874617028;
        *(&v343 + 1) = 0xE600000000000000;
        v208 = Path.cgPath.getter();
        v209 = _CGPathCopyDescription(v208, 0.0);

        v210 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v212 = v211;

        MEMORY[0x193ABEDD0](v210, v212);
        a1 = v339;

        MEMORY[0x193ABEDD0](41, 0xE100000000000000);
        v213 = v343;
        if (a1[1]._countAndFlagsBits)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v214 = a1[1]._object;
          v215 = a1[2]._countAndFlagsBits;
        }

        else
        {
          v214 = 32;
          v215 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v214, v215);
        MEMORY[0x193ABEDD0](v213._countAndFlagsBits, v213._object);

        *&v343 = 0;
        *(&v343 + 1) = 0xE000000000000000;
        MEMORY[0x193ABEDD0](0x20656C79747328, 0xE700000000000000);
        LOBYTE(v352[0]._countAndFlagsBits) = v205;
        BYTE1(v352[0]._countAndFlagsBits) = v206;
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x193ABEDD0](41, 0xE100000000000000);
        v299 = *(&v343 + 1);
        v8 = v343;
        if (a1[1]._countAndFlagsBits)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v300 = a1[1]._object;
          v301 = a1[2]._countAndFlagsBits;
        }

        else
        {
          v300 = 32;
          v301 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v300, v301);
        v43 = HIDWORD(v31);
        MEMORY[0x193ABEDD0](v8, v299);

        v22 = v338;
        v24 = v337;
        if (v337)
        {
          *&v343 = 0;
          *(&v343 + 1) = 0xE000000000000000;
          MEMORY[0x193ABEDD0](0x736E6F6974706F28, 0xE900000000000020);
          LODWORD(v352[0]._countAndFlagsBits) = v24;
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v24 = *(&v343 + 1);
          v8 = v343;
          if (a1[1]._countAndFlagsBits)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v302 = a1[1]._object;
            v303 = a1[2]._countAndFlagsBits;
          }

          else
          {
            v302 = 32;
            v303 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v302, v303);
          MEMORY[0x193ABEDD0](v8, v24);
        }

        v308 = a1[1]._countAndFlagsBits;
        if (!v308)
        {
          goto LABEL_283;
        }

        v59 = __OFSUB__(v308, 1);
        v174 = v308 - 1;
        if (!v59)
        {
          goto LABEL_282;
        }

        __break(1u);
        goto LABEL_265;
      case 7:
        v337 = HIDWORD(v31);
        v338 = v22;
        v43 = *(v340 + 16);
        v22 = a1;
        LOWORD(a1) = *(v340 + 24);
        v205 = *(v340 + 28);
        v24 = *(v340 + 32);
        v237._countAndFlagsBits = 1802723693;
        v237._object = 0xE400000000000000;
        SExpPrinter.push(_:)(v237);
        if (!v24)
        {
          goto LABEL_267;
        }

        *&v347 = 0;
        *(&v347 + 1) = 0xE000000000000000;
        MEMORY[0x193ABEDD0](0x736E6F6974706F28, 0xE900000000000020);
        LODWORD(v343) = v24;
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x193ABEDD0](41, 0xE100000000000000);
        v24 = *(&v347 + 1);
        v8 = v347;
        if (*(v22 + 16))
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v238 = *(v22 + 24);
          v239 = *(v22 + 32);
        }

        else
        {
LABEL_265:
          v238 = 32;
          v239 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v238, v239);
        MEMORY[0x193ABEDD0](v8, v24);

LABEL_267:
        *&v347 = v43;
        WORD4(v347) = a1;
        HIDWORD(v347) = v205;
        DisplayList.print(into:)(v22);
        v309 = *(v22 + 16);
        a1 = v22;
        LOBYTE(v43) = v337;
        v22 = v338;
        if (!v309)
        {
          goto LABEL_283;
        }

        v59 = __OFSUB__(v309, 1);
        v174 = v309 - 1;
        if (!v59)
        {
          goto LABEL_282;
        }

        __break(1u);
        goto LABEL_271;
      case 8:
        v337 = HIDWORD(v31);
        v338 = v22;
        v191 = *(v340 + 32);
        v192 = *(v340 + 40);
        v193 = *(v340 + 48);

        v194._countAndFlagsBits = 0x706168732D666473;
        v194._object = 0xE900000000000065;
        SExpPrinter.push(_:)(v194);
        *&v347 = 0;
        *(&v347 + 1) = 0xE000000000000000;
        MEMORY[0x193ABEDD0](0x206874617028, 0xE600000000000000);
        *&v343 = v191;
        *(&v343 + 1) = v192;
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x193ABEDD0](41, 0xE100000000000000);
        v195 = v347;
        if (a1[1]._countAndFlagsBits)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v196 = a1[1]._object;
          v197 = a1[2]._countAndFlagsBits;
        }

        else
        {
          v196 = 32;
          v197 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v196, v197);
        MEMORY[0x193ABEDD0](v195._countAndFlagsBits, v195._object);

        *&v347 = 0;
        *(&v347 + 1) = 0xE000000000000000;
        MEMORY[0x193ABEDD0](0x20656C79747328, 0xE700000000000000);
        *&v343 = v193;
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x193ABEDD0](41, 0xE100000000000000);
        v293 = v347;
        if (a1[1]._countAndFlagsBits)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v294 = a1[1]._object;
          v295 = a1[2]._countAndFlagsBits;
        }

        else
        {
          v294 = 32;
          v295 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v294, v295);
        MEMORY[0x193ABEDD0](v293._countAndFlagsBits, v293._object);

        v297 = a1[1]._countAndFlagsBits;
        v22 = v338;
        if (!v297)
        {
          goto LABEL_243;
        }

        v59 = __OFSUB__(v297, 1);
        v298 = v297 - 1;
        if (v59)
        {
          goto LABEL_320;
        }

        a1[1]._countAndFlagsBits = v298;
        specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v296);
LABEL_243:
        MEMORY[0x193ABEDD0](41, 0xE100000000000000);

        LOBYTE(v43) = v337;
        goto LABEL_296;
      case 9:
        goto LABEL_149;
      case 0xA:
        goto LABEL_106;
      case 0xB:
        outlined init with copy of AnyTrackedValue(v340 + 16, &v347);
        v187._countAndFlagsBits = 0x6F6974616D696E61;
        v187._object = 0xE90000000000006ELL;
        SExpPrinter.push(_:)(v187);
        *&v343 = 0;
        *(&v343 + 1) = 0xE000000000000000;
        MEMORY[0x193ABEDD0](0x6974616D696E6128, 0xEB00000000206E6FLL);
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation, &protocol descriptor for _DisplayList_AnyEffectAnimation);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x193ABEDD0](41, 0xE100000000000000);
        v188 = v343;
        if (a1[1]._countAndFlagsBits)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v189 = a1[1]._object;
          v190 = a1[2]._countAndFlagsBits;
        }

        else
        {
          v189 = 32;
          v190 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v189, v190);
        MEMORY[0x193ABEDD0](v188._countAndFlagsBits, v188._object);

        v292 = a1[1]._countAndFlagsBits;
        if (!v292)
        {
          goto LABEL_235;
        }

        v59 = __OFSUB__(v292, 1);
        v178 = v292 - 1;
        if (!v59)
        {
          goto LABEL_234;
        }

        goto LABEL_319;
      case 0xC:
        v337 = HIDWORD(v31);
        v338 = v22;
        v222 = *(v340 + 16);
        v223 = *(v340 + 28);
        v224 = *(v340 + 24);
        v225 = *(v340 + 29);
        LODWORD(v336) = *(v340 + 30);
        v333 = v224 | (v223 << 32);
        outlined copy of ContentTransition.Storage(v222, v333, v225);

        v226._countAndFlagsBits = 0xD000000000000011;
        v226._object = 0x800000018DD75CA0;
        SExpPrinter.push(_:)(v226);
        *&v347 = 0;
        *(&v347 + 1) = 0xE000000000000000;
        MEMORY[0x193ABEDD0](0x7469736E61727428, 0xEC000000206E6F69);
        v334 = v222;
        *&v343 = v222;
        BYTE12(v343) = v223;
        DWORD2(v343) = v224;
        v332 = v225;
        BYTE13(v343) = v225;
        BYTE14(v343) = v336;
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x193ABEDD0](41, 0xE100000000000000);
        v227 = v347;
        if (a1[1]._countAndFlagsBits)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v228 = a1[1]._object;
          v229 = a1[2]._countAndFlagsBits;
        }

        else
        {
          v228 = 32;
          v229 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v228, v229);
        MEMORY[0x193ABEDD0](v227._countAndFlagsBits, v227._object);

        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI9AnimationV_s5NeverOytTg503_s7c95UI11DisplayListV4ItemV5print33_11125C146A81D1913BFBD53B89D010C64intoyAA11SExpPrinterVz_tFyAA9E7VXEfU0_AD0wX0VTf1cn_n(v304, a1);

        v306 = a1[1]._countAndFlagsBits;
        LOBYTE(v43) = v337;
        v22 = v338;
        if (!v306)
        {
          goto LABEL_255;
        }

        v59 = __OFSUB__(v306, 1);
        v307 = v306 - 1;
        if (v59)
        {
          goto LABEL_321;
        }

        a1 = v339;
        v339[1]._countAndFlagsBits = v307;
        specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v305);
LABEL_255:
        MEMORY[0x193ABEDD0](41, 0xE100000000000000);
        outlined consume of ContentTransition.Storage(v334, v333, v332);
        goto LABEL_295;
      case 0xD:
        goto LABEL_102;
      case 0xE:
        v202._countAndFlagsBits = 0x6269737365636361;
        v202._object = 0xED00007974696C69;
        SExpPrinter.push(_:)(v202);
        v203 = a1[1]._countAndFlagsBits;
        if (!v203)
        {
          goto LABEL_283;
        }

        v59 = __OFSUB__(v203, 1);
        v174 = v203 - 1;
        if (!v59)
        {
          goto LABEL_282;
        }

        __break(1u);
LABEL_121:
        if (v340)
        {
          MEMORY[0x193ABEDD0](32, 0xE100000000000000);
          MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD75DA0);
          if ((v340 & 0x10) == 0)
          {
LABEL_123:
            if ((v340 & 0x20) == 0)
            {
              goto LABEL_124;
            }

            goto LABEL_225;
          }
        }

        else if ((v340 & 0x10) == 0)
        {
          goto LABEL_123;
        }

        MEMORY[0x193ABEDD0](32, 0xE100000000000000);
        MEMORY[0x193ABEDD0](0xD000000000000014, 0x800000018DD75D80);
        if ((v340 & 0x20) == 0)
        {
LABEL_124:
          if ((v340 & 0x40) == 0)
          {
            goto LABEL_125;
          }

          goto LABEL_226;
        }

LABEL_225:
        MEMORY[0x193ABEDD0](32, 0xE100000000000000);
        MEMORY[0x193ABEDD0](0xD000000000000013, 0x800000018DD75D60);
        if ((v340 & 0x40) == 0)
        {
LABEL_125:
          if ((v340 & 2) == 0)
          {
            goto LABEL_126;
          }

          goto LABEL_227;
        }

LABEL_226:
        MEMORY[0x193ABEDD0](32, 0xE100000000000000);
        MEMORY[0x193ABEDD0](0xD000000000000015, 0x800000018DD75D40);
        if ((v340 & 2) == 0)
        {
LABEL_126:
          if ((v340 & 4) == 0)
          {
            goto LABEL_127;
          }

          goto LABEL_228;
        }

LABEL_227:
        MEMORY[0x193ABEDD0](32, 0xE100000000000000);
        MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD75D20);
        if ((v340 & 4) == 0)
        {
LABEL_127:
          if ((v340 & 8) == 0)
          {
            goto LABEL_128;
          }

          goto LABEL_229;
        }

LABEL_228:
        MEMORY[0x193ABEDD0](32, 0xE100000000000000);
        MEMORY[0x193ABEDD0](0xD000000000000013, 0x800000018DD75D00);
        if ((v340 & 8) == 0)
        {
LABEL_128:
          if ((v340 & 0x80) == 0)
          {
            goto LABEL_296;
          }

          goto LABEL_230;
        }

LABEL_229:
        MEMORY[0x193ABEDD0](32, 0xE100000000000000);
        MEMORY[0x193ABEDD0](0xD00000000000001FLL, 0x800000018DD75CE0);
        if ((v340 & 0x80) == 0)
        {
          goto LABEL_296;
        }

LABEL_230:
        MEMORY[0x193ABEDD0](32, 0xE100000000000000);
        MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD75CC0);
        goto LABEL_296;
      case 0xF:
        goto LABEL_296;
      case 0x10:
        v168 = *(v340 + 16);
        v169 = *(v340 + 24);
        v170 = *(v340 + 32);
        *&v347 = 0;
        *(&v347 + 1) = 0xE000000000000000;
        MEMORY[0x193ABEDD0](0x206574617473, 0xE600000000000000);
        v171 = v170;
        a1 = v339;
        specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v168, v169, v171);
        SExpPrinter.push(_:)(v347);

        v173 = a1[1]._countAndFlagsBits;
        if (!v173)
        {
          goto LABEL_283;
        }

        v59 = __OFSUB__(v173, 1);
        v174 = v173 - 1;
        if (!v59)
        {
          goto LABEL_282;
        }

        __break(1u);
LABEL_102:
        outlined init with copy of AnyTrackedValue(v340 + 16, &v347);
        strcpy(&v343, "view #:type ");
        BYTE13(v343) = 0;
        HIWORD(v343) = -5120;
        __swift_project_boxed_opaque_existential_1(&v347, *(&v348 + 1));
        swift_getDynamicType();
        v175 = _typeName(_:qualified:)();
        MEMORY[0x193ABEDD0](v175);

        SExpPrinter.push(_:)(v343);

        v177 = a1[1]._countAndFlagsBits;
        if (!v177)
        {
          goto LABEL_235;
        }

        v59 = __OFSUB__(v177, 1);
        v178 = v177 - 1;
        if (v59)
        {
          __break(1u);
LABEL_106:
          v179 = *(v340 + 96);
          v350[1] = *(v340 + 80);
          v351[0] = v179;
          v351[1] = *(v340 + 112);
          *(&v351[1] + 12) = *(v340 + 124);
          v180 = *(v340 + 32);
          v347 = *(v340 + 16);
          v348 = v180;
          v181 = *(v340 + 64);
          v349 = *(v340 + 48);
          v350[0] = v181;
          outlined init with copy of GraphicsFilter(&v347, &v343);
          v182._countAndFlagsBits = 0x7265746C6966;
          v182._object = 0xE600000000000000;
          SExpPrinter.push(_:)(v182);
          v345[2] = v350[1];
          v345[3] = v351[0];
          v346[0] = v351[1];
          *(v346 + 12) = *(&v351[1] + 12);
          v343 = v347;
          v344 = v348;
          v345[0] = v349;
          v345[1] = v350[0];
          GraphicsFilter.print(into:)(a1);
          v184 = a1[1]._countAndFlagsBits;
          if (v184)
          {
            v59 = __OFSUB__(v184, 1);
            v185 = v184 - 1;
            if (v59)
            {
              goto LABEL_318;
            }

            a1[1]._countAndFlagsBits = v185;
            specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v183);
          }

          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          outlined destroy of GraphicsFilter(&v347);
        }

        else
        {
LABEL_234:
          a1[1]._countAndFlagsBits = v178;
          specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v176);
LABEL_235:
          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          __swift_destroy_boxed_opaque_existential_1(&v347);
        }

        goto LABEL_296;
      case 0x11:
        v216 = *(v340 + 24);
        v217 = *(v340 + 32);
        v19 = *(v340 + 40);
        v20 = *(v340 + 48);
        v218._object = 0x800000018DD75C40;
        v218._countAndFlagsBits = 0xD000000000000010;
        SExpPrinter.push(_:)(v218);
        if (*&v216 == 0.0 && v217 == 0.0)
        {
          goto LABEL_274;
        }

        *&v347 = 0;
        *(&v347 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(19);
        MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD75C60);
        *&v343 = v216;
        *(&v343 + 1) = v217;
        type metadata accessor for CGPoint(0);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x193ABEDD0](41, 0xE100000000000000);
        v24 = *(&v347 + 1);
        v8 = v347;
        if (!a1[1]._countAndFlagsBits)
        {
          goto LABEL_272;
        }

        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v219 = a1[1]._object;
        v220 = a1[2]._countAndFlagsBits;
        goto LABEL_273;
      case 0x12:
        *&v347 = 0xD00000000000001BLL;
        *(&v347 + 1) = 0x800000018DD75C20;
        LODWORD(v343) = v31;
        v231 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ABEDD0](v231);

        SExpPrinter.push(_:)(v347);

        v232 = a1[1]._countAndFlagsBits;
        if (!v232)
        {
          goto LABEL_283;
        }

        v59 = __OFSUB__(v232, 1);
        v174 = v232 - 1;
        if (!v59)
        {
          goto LABEL_282;
        }

        __break(1u);
LABEL_149:
        v233 = *(v340 + 48);
        v348 = *(v340 + 32);
        v349 = v233;
        v350[0] = *(v340 + 64);
        *(v350 + 9) = *(v340 + 73);
        v347 = *(v340 + 16);
        v352[0]._countAndFlagsBits = 0;
        v352[0]._object = 0xE000000000000000;
        MEMORY[0x193ABEDD0](0x6F66736E61727428, 0xEB00000000206D72);
        v345[0] = v349;
        v345[1] = v350[0];
        *(&v345[1] + 9) = *(v350 + 9);
        v343 = v347;
        v344 = v348;
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x193ABEDD0](41, 0xE100000000000000);
        v234 = v352[0];
        if (a1[1]._countAndFlagsBits)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v235 = a1[1]._object;
          v236 = a1[2]._countAndFlagsBits;
        }

        else
        {
          v235 = 32;
          v236 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v235, v236);
        MEMORY[0x193ABEDD0](v234._countAndFlagsBits, v234._object);

        goto LABEL_296;
      case 0x13:
        v337 = HIDWORD(v31);
        v338 = v22;
        v240 = *(v340 + 16);
        v241 = *(v340 + 24);
        v242 = *(v340 + 32);
        v243 = *(v340 + 36);
        v244 = *(v340 + 40);

        v245._countAndFlagsBits = 0xD000000000000016;
        v245._object = 0x800000018DD75C00;
        SExpPrinter.push(_:)(v245);
        if ((v243 & 1) == 0)
        {
          *&v347 = 0;
          *(&v347 + 1) = 0xE000000000000000;
          MEMORY[0x193ABEDD0](0x2065756C617628, 0xE700000000000000);
          v248 = specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v240, v241, v242);
          MEMORY[0x193ABEDD0](41, 0xE100000000000000, v248);
          v249 = v347;
          v250 = v339;
          if (v339[1]._countAndFlagsBits)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v251 = v250[1]._object;
            v252 = v250[2]._countAndFlagsBits;
          }

          else
          {
            v251 = 32;
            v252 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v251, v252);
          MEMORY[0x193ABEDD0](v249._countAndFlagsBits, v249._object);
        }

        v314 = v339;
        LOBYTE(v43) = v337;
        if (v244)
        {
          strcpy(&v343, "(animation ");
          HIDWORD(v343) = -352321536;
          (*(*v244 + 88))(&v347, v246);
          type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CustomAnimation, &protocol descriptor for CustomAnimation);

          v315 = String.init<A>(describing:)();
          MEMORY[0x193ABEDD0](v315);

          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v316 = v343;
          if (v314[1]._countAndFlagsBits)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v317 = v314[1]._object;
            v318 = v314[2]._countAndFlagsBits;
          }

          else
          {
            v317 = 32;
            v318 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v317, v318);
          MEMORY[0x193ABEDD0](v316._countAndFlagsBits, v316._object);
        }

        v319 = v314[1]._countAndFlagsBits;
        a1 = v314;
        v22 = v338;
        if (!v319)
        {
          goto LABEL_294;
        }

        v59 = __OFSUB__(v319, 1);
        v320 = v319 - 1;
        if (v59)
        {
          goto LABEL_323;
        }

        a1[1]._countAndFlagsBits = v320;
        specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v247);
LABEL_294:
        MEMORY[0x193ABEDD0](41, 0xE100000000000000);
LABEL_295:

        goto LABEL_296;
      case 0x14:
        if (!(v340 | v31))
        {
          goto LABEL_296;
        }

        if (v340 ^ 1 | v31)
        {
          MEMORY[0x193ABEDD0](32, 0xE100000000000000);
          MEMORY[0x193ABEDD0](0xD000000000000013, 0x800000018DD75E00);
        }

        else
        {
          v186 = "#:geometry-group";
LABEL_139:
          v221 = v186 - 32;
          MEMORY[0x193ABEDD0](32, 0xE100000000000000);
          MEMORY[0x193ABEDD0](0xD000000000000010, v221 | 0x8000000000000000);
        }

        goto LABEL_296;
      default:
        v68 = *(v340 + 16);
        *&v347 = 0xD000000000000011;
        *(&v347 + 1) = 0x800000018DD75DC0;
        if (v68)
        {
          v69 = 1702195828;
        }

        else
        {
          v69 = 0x65736C6166;
        }

        if (v68)
        {
          v70 = 0xE400000000000000;
        }

        else
        {
          v70 = 0xE500000000000000;
        }

        MEMORY[0x193ABEDD0](v69, v70);

LABEL_144:
        v230 = v347;
        MEMORY[0x193ABEDD0](32, 0xE100000000000000);
        MEMORY[0x193ABEDD0](v230._countAndFlagsBits, v230._object);

        goto LABEL_296;
    }
  }

  if (v36 != 2)
  {
LABEL_219:
    v74 = a1[1]._countAndFlagsBits;
    if (!v74)
    {
      goto LABEL_302;
    }

    goto LABEL_300;
  }

  outlined init with copy of DisplayList.Item(&v354, &v347);
  v42._countAndFlagsBits = 0x736574617473;
  v42._object = 0xE600000000000000;
  SExpPrinter.push(_:)(v42);
  v338 = *(v340 + 16);
  if (!v338)
  {
LABEL_45:
    outlined destroy of DisplayList.Item(&v354);
    v72 = a1[1]._countAndFlagsBits;
    if (v72)
    {
      v59 = __OFSUB__(v72, 1);
      v73 = v72 - 1;
      if (v59)
      {
        goto LABEL_312;
      }

      a1[1]._countAndFlagsBits = v73;
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v71);
    }

    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    v74 = a1[1]._countAndFlagsBits;
    if (!v74)
    {
      goto LABEL_302;
    }

    goto LABEL_300;
  }

  v43 = 0;
  v336 = (v340 + 32);
  v337 = "(display-list-item";
  v335 = xmmword_18DDAB8A0;
  v44 = MEMORY[0x1E69E76D0];
  while (v43 < *(v340 + 16))
  {
    v45 = &v336[40 * v43];
    v24 = *(v45 + 3);
    v47 = *(v45 + 3);
    v46 = *(v45 + 4);
    v49 = *(v45 + 1);
    v48 = *(v45 + 2);
    LODWORD(v35) = *v45;
    *&v347 = 0x206574617473;
    *(&v347 + 1) = 0xE600000000000000;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v50 = swift_allocObject();
    *(v50 + 16) = v335;
    v51 = MEMORY[0x1E69E7668];
    *(v50 + 56) = MEMORY[0x1E69E7668];
    *(v50 + 64) = v44;
    *(v50 + 32) = v46;
    *(v50 + 96) = v51;
    *(v50 + 104) = v44;
    *(v50 + 72) = v47;
    *(v50 + 136) = v51;
    *(v50 + 144) = v44;
    *(v50 + 112) = v48;
    *(v50 + 176) = v51;
    *(v50 + 184) = v44;
    *(v50 + 152) = v49;
    a1 = v339;
    *(v50 + 216) = v51;
    *(v50 + 224) = v44;
    *(v50 + 192) = v35;

    v52 = String.init(format:_:)();
    MEMORY[0x193ABEDD0](v52);

    v31 = *(&v347 + 1);
    v53 = v347;
    v54 = a1[1]._countAndFlagsBits;
    if (!v54)
    {
      MEMORY[0x193ABEDD0](40, 0xE100000000000000);
      MEMORY[0x193ABEDD0](v53, v31);

      v8 = &v347;
      v22 = *(v24 + 16);
      if (!v22)
      {
        goto LABEL_27;
      }

LABEL_24:
      v55 = *(v24 + 48);
      v56 = *(v24 + 80);
      v349 = *(v24 + 64);
      v350[0] = v56;
      *(v350 + 12) = *(v24 + 92);
      v347 = *(v24 + 32);
      v348 = v55;
      DisplayList.Item.print(into:)(a1);
      v31 = v22 - 1;
      if (v22 != 1)
      {
        v22 = v24 + 112;
        do
        {
          v348 = *(v22 + 16);
          v349 = *(v22 + 32);
          v350[0] = *(v22 + 48);
          *(v350 + 12) = *(v22 + 60);
          v57 = *v22;
          v22 += 80;
          v347 = v57;
          DisplayList.Item.print(into:)(a1);
          --v31;
        }

        while (v31);
      }

      goto LABEL_27;
    }

    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](a1[1]._object, a1[2]._countAndFlagsBits);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](v53, v31);

    v8 = &v347;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
      goto LABEL_310;
    }

    a1[1]._countAndFlagsBits = v54 + 1;
    MEMORY[0x193ABEDD0](8224, 0xE200000000000000);
    v22 = *(v24 + 16);
    if (v22)
    {
      goto LABEL_24;
    }

LABEL_27:

    v58 = a1[1]._countAndFlagsBits;
    if (v58)
    {
      v59 = __OFSUB__(v58, 1);
      v60 = v58 - 1;
      if (v59)
      {
        goto LABEL_308;
      }

      a1[1]._countAndFlagsBits = v60;
      v61 = a1[1]._object;
      v62 = a1[2]._countAndFlagsBits;
      if ((v62 & 0x2000000000000000) != 0)
      {
        v63 = HIBYTE(v62) & 0xF;
      }

      else
      {
        v63 = v61 & 0xFFFFFFFFFFFFLL;
      }

      v64 = 7;
      if (((v62 >> 60) & ((v61 & 0x800000000000000) == 0)) != 0)
      {
        v64 = 11;
      }

      v24 = v64 | (v63 << 16);
      v65 = String.index(_:offsetBy:limitedBy:)();
      if (v66)
      {
        goto LABEL_324;
      }

      if (4 * v63 < v65 >> 14)
      {
        goto LABEL_309;
      }

      String.removeSubrange(_:)();
    }

    ++v43;
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    if (v43 == v338)
    {
      goto LABEL_45;
    }
  }

LABEL_271:
  __break(1u);
LABEL_272:
  v219 = 32;
  v220 = 0xE100000000000000;
LABEL_273:
  MEMORY[0x193ABEDD0](v219, v220);
  MEMORY[0x193ABEDD0](v8, v24);

LABEL_274:
  if (*&v19 != 0.0 || *&v20 != 0.0)
  {
    *&v347 = 0;
    *(&v347 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(19);
    MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD75C80);
    *&v343 = v19;
    *(&v343 + 1) = v20;
    type metadata accessor for CGSize(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    v310 = v347;
    if (a1[1]._countAndFlagsBits)
    {
      MEMORY[0x193ABEDD0](10, 0xE100000000000000);
      v311 = a1[1]._object;
      v312 = a1[2]._countAndFlagsBits;
    }

    else
    {
      v311 = 32;
      v312 = 0xE100000000000000;
    }

    MEMORY[0x193ABEDD0](v311, v312);
    MEMORY[0x193ABEDD0](v310._countAndFlagsBits, v310._object);
  }

  v313 = a1[1]._countAndFlagsBits;
  if (v313)
  {
    v59 = __OFSUB__(v313, 1);
    v174 = v313 - 1;
    if (v59)
    {
      goto LABEL_322;
    }

LABEL_282:
    a1[1]._countAndFlagsBits = v174;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v172);
  }

LABEL_283:
  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
LABEL_296:
  *&v343 = v22;
  WORD4(v343) = v35;
  HIDWORD(v343) = v335;
  DisplayList.print(into:)(a1);

  v322 = a1[1]._countAndFlagsBits;
  if (!v322)
  {
LABEL_299:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    outlined consume of DisplayList.Effect(v340, v31, v43);
    v74 = a1[1]._countAndFlagsBits;
    if (!v74)
    {
      goto LABEL_302;
    }

LABEL_300:
    v59 = __OFSUB__(v74, 1);
    v324 = v74 - 1;
    if (v59)
    {
LABEL_310:
      __break(1u);
      goto LABEL_311;
    }

    a1[1]._countAndFlagsBits = v324;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v34);
    goto LABEL_302;
  }

  v59 = __OFSUB__(v322, 1);
  v323 = v322 - 1;
  if (!v59)
  {
    a1[1]._countAndFlagsBits = v323;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v321);
    goto LABEL_299;
  }

LABEL_311:
  __break(1u);
LABEL_312:
  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
LABEL_324:
  __break(1u);
}

void DisplayList.Item.printMinimally(into:)(void *a1)
{
  v3 = type metadata accessor for DisplayList.ArchiveIDs(0);
  v186 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DisplayList.ArchiveIDs?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v187 = &v180 - v10;
  v12 = *(v1 + 40);
  v11 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = *(v1 + 64);
  v15 = *(v1 + 72);
  *&v192 = 14921;
  *(&v192 + 1) = 0xE200000000000000;
  LODWORD(v190) = v15;
  v182 = v11;
  v181 = v13;
  v183 = v14;
  outlined copy of DisplayList.Item.Value(v12, v11, v13, v14);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v16);

  v17 = v192;
  v18 = a1[2];
  if (v18)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](a1[3], a1[4]);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](v17, *(&v17 + 1));
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_244:
      __break(1u);
      goto LABEL_245;
    }

    a1[2] = v19;
    MEMORY[0x193ABEDD0](8224, 0xE200000000000000);
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](v17, *(&v17 + 1));
    v19 = 0;
  }

  v21 = v183 >> 30;
  v188 = v12;
  if (v183 >> 30 > 1)
  {
    if (v21 != 2)
    {
LABEL_172:
      if (!v19)
      {
        goto LABEL_242;
      }

LABEL_240:
      if (!__OFSUB__(v19, 1))
      {
        a1[2] = v19 - 1;
        specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v20);
        goto LABEL_242;
      }

      goto LABEL_244;
    }

    if (v19)
    {
      MEMORY[0x193ABEDD0](10, 0xE100000000000000);
      MEMORY[0x193ABEDD0](a1[3], a1[4]);
      MEMORY[0x193ABEDD0](40, 0xE100000000000000);
      MEMORY[0x193ABEDD0](0x736574617473, 0xE600000000000000);
      v25 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
LABEL_245:
        __break(1u);
        goto LABEL_246;
      }

      a1[2] = v25;
      MEMORY[0x193ABEDD0](8224, 0xE200000000000000);
    }

    else
    {
      MEMORY[0x193ABEDD0](40, 0xE100000000000000);
      MEMORY[0x193ABEDD0](0x736574617473, 0xE600000000000000);
      v25 = 0;
    }

    v187 = *(v12 + 16);
    if (!v187)
    {
LABEL_39:
      outlined consume of DisplayList.Item.Value(v12, v182, v181, v183);
      if (v25)
      {
        v19 = v25 - 1;
        if (__OFSUB__(v25, 1))
        {
          goto LABEL_248;
        }

        a1[2] = v19;
        specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v55);
      }

      else
      {
        v19 = 0;
      }

      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      if (!v19)
      {
        goto LABEL_242;
      }

      goto LABEL_240;
    }

    v29 = 0;
    v185 = "(display-list-item";
    v186 = v12 + 32;
    v184 = xmmword_18DDAB8A0;
    while (v29 < *(v12 + 16))
    {
      v30 = a1;
      v31 = v186 + 40 * v29;
      v32 = *(v31 + 24);
      v34 = *(v31 + 12);
      v33 = *(v31 + 16);
      LODWORD(v12) = *(v31 + 4);
      v35 = *(v31 + 8);
      v36 = *v31;
      *&v192 = 0;
      *(&v192 + 1) = 0xE000000000000000;
      type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
      v37 = swift_allocObject();
      *(v37 + 16) = v184;
      v38 = MEMORY[0x1E69E7668];
      *(v37 + 56) = MEMORY[0x1E69E7668];
      v39 = MEMORY[0x1E69E76D0];
      *(v37 + 64) = MEMORY[0x1E69E76D0];
      *(v37 + 32) = v33;
      *(v37 + 96) = v38;
      *(v37 + 104) = v39;
      *(v37 + 72) = v34;
      *(v37 + 136) = v38;
      *(v37 + 144) = v39;
      *(v37 + 112) = v35;
      *(v37 + 176) = v38;
      *(v37 + 184) = v39;
      *(v37 + 152) = v12;
      *(v37 + 216) = v38;
      *(v37 + 224) = v39;
      *(v37 + 192) = v36;

      v40 = String.init(format:_:)();
      MEMORY[0x193ABEDD0](v40);

      v41 = v192;
      if (v25)
      {
        a1 = v30;
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        MEMORY[0x193ABEDD0](v30[3], v30[4]);
        MEMORY[0x193ABEDD0](40, 0xE100000000000000);
        MEMORY[0x193ABEDD0](v41, *(&v41 + 1));
        if (__OFADD__(v25, 1))
        {
          goto LABEL_222;
        }

        v30[2] = v25 + 1;
        v42 = 8224;
        v43 = 0xE200000000000000;
      }

      else
      {
        a1 = v30;
        MEMORY[0x193ABEDD0](40, 0xE100000000000000);
        v43 = *(&v41 + 1);
        v42 = v41;
      }

      MEMORY[0x193ABEDD0](v42, v43);

      v44 = *(v32 + 16);
      v12 = v188;
      if (v44)
      {
        v45 = *(v32 + 48);
        v46 = *(v32 + 80);
        v194 = *(v32 + 64);
        v195[0] = v46;
        *(v195 + 12) = *(v32 + 92);
        v192 = *(v32 + 32);
        v193 = v45;
        DisplayList.Item.printMinimally(into:)(a1);
        v47 = v44 - 1;
        if (v47)
        {
          v48 = (v32 + 112);
          do
          {
            v193 = v48[1];
            v194 = v48[2];
            v195[0] = v48[3];
            *(v195 + 12) = *(v48 + 60);
            v49 = *v48;
            v48 += 5;
            v192 = v49;
            DisplayList.Item.printMinimally(into:)(a1);
            --v47;
          }

          while (v47);
        }
      }

      v50 = a1[2];
      if (v50)
      {
        v25 = v50 - 1;
        if (__OFSUB__(v50, 1))
        {
          goto LABEL_223;
        }

        a1[2] = v25;
        v51 = a1[4];
        if ((v51 & 0x2000000000000000) != 0)
        {
          v52 = HIBYTE(v51) & 0xF;
        }

        else
        {
          v52 = a1[3] & 0xFFFFFFFFFFFFLL;
        }

        v53 = String.index(_:offsetBy:limitedBy:)();
        if (v54)
        {
          goto LABEL_253;
        }

        if (4 * v52 < v53 >> 14)
        {
          goto LABEL_224;
        }

        String.removeSubrange(_:)();
      }

      else
      {
        v25 = 0;
      }

      ++v29;
      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      if (v29 == v187)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    v125 = 32;
    v126 = 0xE100000000000000;
  }

  else
  {
    if (!v21)
    {
      v22 = v181;
      switch(v12 >> 60)
      {
        case 1uLL:
          if (v19)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v78 = a1[3];
            v79 = a1[4];
          }

          else
          {
            v78 = 32;
            v79 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v78, v79);
          v152 = 67;
          goto LABEL_170;
        case 2uLL:
          if (v19)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v72 = a1[3];
            v73 = a1[4];
          }

          else
          {
            v72 = 32;
            v73 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v72, v73);
          v152 = 18499;
          v153 = 0xE200000000000000;
          goto LABEL_171;
        case 3uLL:
          if (v19)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v74 = a1[3];
            v75 = a1[4];
          }

          else
          {
            v74 = 32;
            v75 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v74, v75);
          v152 = 19785;
          v153 = 0xE200000000000000;
          goto LABEL_171;
        case 4uLL:
          if (!v19)
          {
            goto LABEL_136;
          }

          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v66 = a1[3];
          v67 = a1[4];
          goto LABEL_137;
        case 5uLL:
          if (v19)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v80 = a1[3];
            v81 = a1[4];
          }

          else
          {
            v80 = 32;
            v81 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v80, v81);
          v152 = 17491;
          v153 = 0xE200000000000000;
          goto LABEL_171;
        case 6uLL:
          v87 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v88 = outlined copy of DisplayList.Item.Value(v12, v182, v181, v183);
          if (v19)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000, v88);
            MEMORY[0x193ABEDD0](a1[3], a1[4]);
            MEMORY[0x193ABEDD0](40, 0xE100000000000000);
            MEMORY[0x193ABEDD0](19795, 0xE200000000000000);
            if (__OFADD__(v19, 1))
            {
              goto LABEL_250;
            }

            a1[2] = v19 + 1;
            v89 = 8224;
          }

          else
          {
            MEMORY[0x193ABEDD0](40, 0xE100000000000000, v88);
            v89 = 19795;
          }

          MEMORY[0x193ABEDD0](v89, 0xE200000000000000);
          v156 = *(v87 + 16);
          if (v156)
          {
            v157 = *(v87 + 48);
            v158 = *(v87 + 80);
            v194 = *(v87 + 64);
            v195[0] = v158;
            *(v195 + 12) = *(v87 + 92);
            v192 = *(v87 + 32);
            v193 = v157;
            DisplayList.Item.printMinimally(into:)(a1);
            v159 = v156 - 1;
            if (v159)
            {
              v160 = (v87 + 112);
              do
              {
                v193 = v160[1];
                v194 = v160[2];
                v195[0] = v160[3];
                *(v195 + 12) = *(v160 + 60);
                v161 = *v160;
                v160 += 5;
                v192 = v161;
                DisplayList.Item.printMinimally(into:)(a1);
                --v159;
              }

              while (v159);
            }
          }

          v162 = a1[2];
          if (!v162)
          {
            goto LABEL_164;
          }

          v19 = v162 - 1;
          if (!__OFSUB__(v162, 1))
          {
            goto LABEL_163;
          }

          goto LABEL_251;
        case 7uLL:
          if (v19)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v76 = a1[3];
            v77 = a1[4];
          }

          else
          {
            v76 = 32;
            v77 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v76, v77);
          v152 = 18515;
          v153 = 0xE200000000000000;
          goto LABEL_171;
        case 8uLL:
          if (v19)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v92 = a1[3];
            v93 = a1[4];
          }

          else
          {
            v92 = 32;
            v93 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v92, v93);
          v152 = 22096;
          v153 = 0xE200000000000000;
          goto LABEL_171;
        case 9uLL:
          if (v19)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v70 = a1[3];
            v71 = a1[4];
          }

          else
          {
            v70 = 32;
            v71 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v70, v71);
          v152 = 19536;
          v153 = 0xE200000000000000;
          goto LABEL_171;
        case 0xAuLL:
          if (v19)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v90 = a1[3];
            v91 = a1[4];
          }

          else
          {
            v90 = 32;
            v91 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v90, v91);
          v152 = 84;
          goto LABEL_170;
        case 0xBuLL:
          v62 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v63 = outlined copy of DisplayList.Item.Value(v12, v182, v181, v183);
          if (v19)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000, v63);
            MEMORY[0x193ABEDD0](a1[3], a1[4]);
            MEMORY[0x193ABEDD0](40, 0xE100000000000000);
            MEMORY[0x193ABEDD0](70, 0xE100000000000000);
            if (__OFADD__(v19, 1))
            {
              goto LABEL_249;
            }

            a1[2] = v19 + 1;
            v64 = 8224;
            v65 = 0xE200000000000000;
          }

          else
          {
            MEMORY[0x193ABEDD0](40, 0xE100000000000000, v63);
            v64 = 70;
            v65 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v64, v65);
          v145 = *(v62 + 16);
          if (v145)
          {
            v146 = *(v62 + 48);
            v147 = *(v62 + 80);
            v194 = *(v62 + 64);
            v195[0] = v147;
            *(v195 + 12) = *(v62 + 92);
            v192 = *(v62 + 32);
            v193 = v146;
            DisplayList.Item.printMinimally(into:)(a1);
            v148 = v145 - 1;
            if (v148)
            {
              v149 = (v62 + 112);
              do
              {
                v193 = v149[1];
                v194 = v149[2];
                v195[0] = v149[3];
                *(v195 + 12) = *(v149 + 60);
                v150 = *v149;
                v149 += 5;
                v192 = v150;
                DisplayList.Item.printMinimally(into:)(a1);
                --v148;
              }

              while (v148);
            }
          }

          v151 = a1[2];
          if (v151)
          {
            v19 = v151 - 1;
            if (__OFSUB__(v151, 1))
            {
              __break(1u);
LABEL_136:
              v66 = 32;
              v67 = 0xE100000000000000;
LABEL_137:
              MEMORY[0x193ABEDD0](v66, v67);
              v152 = 83;
LABEL_170:
              v153 = 0xE100000000000000;
LABEL_171:
              MEMORY[0x193ABEDD0](v152, v153);
              outlined consume of DisplayList.Item.Value(v12, v182, v22, v183);
              goto LABEL_172;
            }

LABEL_163:
            a1[2] = v19;
            specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v144);
          }

          else
          {
LABEL_164:
            v19 = 0;
          }

          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v154 = v182;
          v155 = v183;
          outlined consume of DisplayList.Item.Value(v12, v182, v22, v183);
LABEL_166:
          outlined consume of DisplayList.Item.Value(v12, v154, v22, v155);
          if (v19)
          {
            goto LABEL_240;
          }

          break;
        case 0xCuLL:
          if (v19)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v68 = a1[3];
            v69 = a1[4];
          }

          else
          {
            v68 = 32;
            v69 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v68, v69);
          v152 = 68;
          goto LABEL_170;
        case 0xDuLL:
          outlined init with copy of AnyTrackedValue((v12 & 0xFFFFFFFFFFFFFFFLL) + 16, &v192);
          v190 = 14934;
          v191 = 0xE200000000000000;
          __swift_project_boxed_opaque_existential_1(&v192, *(&v193 + 1));
          swift_getDynamicType();
          outlined copy of DisplayList.Item.Value(v12, v182, v22, v183);
          v82 = _typeName(_:qualified:)();
          MEMORY[0x193ABEDD0](v82);

          v84 = v190;
          v83 = v191;
          if (v19)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v85 = a1[3];
            v86 = a1[4];
          }

          else
          {
            v85 = 32;
            v86 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v85, v86);
          MEMORY[0x193ABEDD0](v84, v83);

          v154 = v182;
          v155 = v183;
          outlined consume of DisplayList.Item.Value(v12, v182, v22, v183);
          __swift_destroy_boxed_opaque_existential_1(&v192);
          goto LABEL_166;
        case 0xEuLL:
          *&v192 = 64;
          *(&v192 + 1) = 0xE100000000000000;
          v190 = 35;
          v191 = 0xE100000000000000;
          v189 = v12;
          v58 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x193ABEDD0](v58);

          MEMORY[0x193ABEDD0](v190, v191);

          v59 = v192;
          if (v19)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v60 = a1[3];
            v61 = a1[4];
          }

          else
          {
            v60 = 32;
            v61 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v60, v61);
          MEMORY[0x193ABEDD0](v59, *(&v59 + 1));
          outlined consume of DisplayList.Item.Value(v12, v182, v22, v183);

          if (!v19)
          {
            goto LABEL_242;
          }

          goto LABEL_240;
        default:
          if (v19)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v23 = a1[3];
            v24 = a1[4];
          }

          else
          {
            v23 = 32;
            v24 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v23, v24);
          v152 = 66;
          goto LABEL_170;
      }

      goto LABEL_242;
    }

    if (v19)
    {
      MEMORY[0x193ABEDD0](10, 0xE100000000000000);
      MEMORY[0x193ABEDD0](a1[3], a1[4]);
      MEMORY[0x193ABEDD0](40, 0xE100000000000000);
      MEMORY[0x193ABEDD0](69, 0xE100000000000000);
      if (__OFADD__(v19++, 1))
      {
LABEL_246:
        __break(1u);
        goto LABEL_247;
      }

      a1[2] = v19;
      v27 = 8224;
      v28 = 0xE200000000000000;
    }

    else
    {
      MEMORY[0x193ABEDD0](40, 0xE100000000000000);
      v27 = 69;
      v28 = 0xE100000000000000;
    }

    MEMORY[0x193ABEDD0](v27, v28);
    v12 = HIDWORD(v182);
    switch(BYTE4(v182))
    {
      case 1:
        v119 = swift_projectBox();
        v120 = v187;
        outlined init with copy of DisplayList.ArchiveIDs?(v119, v187);
        outlined init with copy of DisplayList.ArchiveIDs?(v120, v8);
        if ((*(v186 + 48))(v8, 1, v3) == 1)
        {
          v121 = 0xE300000000000000;
          v122 = 7104878;
        }

        else
        {
          outlined init with take of DisplayList.ArchiveIDs(v8, v5);
          type metadata accessor for UUID();
          lazy protocol witness table accessor for type UUID and conformance UUID();
          v163 = dispatch thunk of CustomStringConvertible.description.getter();
          v121 = v164;
          outlined destroy of DisplayList.ArchiveIDs?(v5, type metadata accessor for DisplayList.ArchiveIDs);
          v122 = v163;
        }

        *&v192 = 14913;
        *(&v192 + 1) = 0xE200000000000000;
        MEMORY[0x193ABEDD0](v122, v121);

        v165 = v192;
        v25 = v181;
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v166 = a1[3];
          v167 = a1[4];
        }

        else
        {
          v166 = 32;
          v167 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v166, v167);
        MEMORY[0x193ABEDD0](v165, *(&v165 + 1));

        outlined destroy of DisplayList.ArchiveIDs?(v187, type metadata accessor for DisplayList.ArchiveIDs?);
        goto LABEL_231;
      case 2:
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v111 = a1[3];
          v112 = a1[4];
        }

        else
        {
          v111 = 32;
          v112 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v111, v112);
        v25 = v181;
        v168 = 21072;
        goto LABEL_229;
      case 3:
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v115 = a1[3];
          v116 = a1[4];
        }

        else
        {
          v115 = 32;
          v116 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v115, v116);
        v25 = v181;
        v168 = 18256;
        goto LABEL_229;
      case 4:
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v105 = a1[3];
          v106 = a1[4];
        }

        else
        {
          v105 = 32;
          v106 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v105, v106);
        v25 = v181;
        v168 = 79;
        v169 = 0xE100000000000000;
        goto LABEL_230;
      case 5:
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v127 = a1[3];
          v128 = a1[4];
        }

        else
        {
          v127 = 32;
          v128 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v127, v128);
        v25 = v181;
        v168 = 66;
        v169 = 0xE100000000000000;
        goto LABEL_230;
      case 6:
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v134 = a1[3];
          v135 = a1[4];
        }

        else
        {
          v134 = 32;
          v135 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v134, v135);
        v25 = v181;
        v168 = 67;
        v169 = 0xE100000000000000;
        goto LABEL_230;
      case 7:
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v117 = a1[3];
          v118 = a1[4];
        }

        else
        {
          v117 = 32;
          v118 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v117, v118);
        v25 = v181;
        v168 = 77;
        v169 = 0xE100000000000000;
        goto LABEL_230;
      case 8:
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v140 = a1[3];
          v141 = a1[4];
        }

        else
        {
          v140 = 32;
          v141 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v140, v141);
        v25 = v181;
        v168 = 17491;
        goto LABEL_229;
      case 9:
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v109 = a1[3];
          v110 = a1[4];
        }

        else
        {
          v109 = 32;
          v110 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v109, v110);
        v25 = v181;
        v168 = 84;
        v169 = 0xE100000000000000;
        goto LABEL_230;
      case 0xA:
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v138 = a1[3];
          v139 = a1[4];
        }

        else
        {
          v138 = 32;
          v139 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v138, v139);
        v25 = v181;
        v168 = 70;
        v169 = 0xE100000000000000;
        goto LABEL_230;
      case 0xB:
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v103 = a1[3];
          v104 = a1[4];
        }

        else
        {
          v103 = 32;
          v104 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v103, v104);
        v25 = v181;
        v168 = 20033;
        goto LABEL_229;
      case 0xC:
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v107 = a1[3];
          v108 = a1[4];
        }

        else
        {
          v107 = 32;
          v108 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v107, v108);
        v25 = v181;
        v168 = 21076;
        goto LABEL_229;
      case 0xD:
        outlined init with copy of AnyTrackedValue(v188 + 16, &v192);
        v190 = 14934;
        v191 = 0xE200000000000000;
        __swift_project_boxed_opaque_existential_1(&v192, *(&v193 + 1));
        swift_getDynamicType();
        v129 = _typeName(_:qualified:)();
        MEMORY[0x193ABEDD0](v129);

        v130 = v190;
        v131 = v191;
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          MEMORY[0x193ABEDD0](a1[3], a1[4]);
          MEMORY[0x193ABEDD0](40, 0xE100000000000000);
          MEMORY[0x193ABEDD0](v130, v131);
          v132 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_252;
          }

          a1[2] = v132;
          MEMORY[0x193ABEDD0](8224, 0xE200000000000000);

          v25 = v181;
          if (v19 != -1)
          {
            if (__OFSUB__(v132, 1))
            {
              goto LABEL_254;
            }

            a1[2] = v19;
            specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v133);
          }
        }

        else
        {
          MEMORY[0x193ABEDD0](40, 0xE100000000000000);
          MEMORY[0x193ABEDD0](v130, v131);

          v25 = v181;
        }

        MEMORY[0x193ABEDD0](41, 0xE100000000000000);
        __swift_destroy_boxed_opaque_existential_1(&v192);
        goto LABEL_231;
      case 0xE:
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v101 = a1[3];
          v102 = a1[4];
        }

        else
        {
          v101 = 32;
          v102 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v101, v102);
        v25 = v181;
        v168 = 22593;
        goto LABEL_229;
      case 0xF:
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v113 = a1[3];
          v114 = a1[4];
        }

        else
        {
          v113 = 32;
          v114 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v113, v114);
        v25 = v181;
        v168 = 19536;
        goto LABEL_229;
      case 0x10:
        v94 = *(v188 + 16);
        v95 = *(v188 + 24);
        v96 = *(v188 + 32);
        *&v192 = 0;
        *(&v192 + 1) = 0xE000000000000000;
        MEMORY[0x193ABEDD0](14920, 0xE200000000000000);
        v97 = specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v94, v95, v96);
        v98 = v192;
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000, v97);
          v99 = a1[3];
          v100 = a1[4];
        }

        else
        {
          v99 = 32;
          v100 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v99, v100);
        v25 = v181;
        MEMORY[0x193ABEDD0](v98, *(&v98 + 1));

        goto LABEL_231;
      case 0x11:
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v123 = a1[3];
          v124 = a1[4];
        }

        else
        {
          v123 = 32;
          v124 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v123, v124);
        v25 = v181;
        v168 = 21065;
        goto LABEL_229;
      case 0x12:
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v136 = a1[3];
          v137 = a1[4];
        }

        else
        {
          v136 = 32;
          v137 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v136, v137);
        v25 = v181;
        v168 = 19529;
        goto LABEL_229;
      case 0x13:
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v142 = a1[3];
          v143 = a1[4];
        }

        else
        {
          v142 = 32;
          v143 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v142, v143);
        v25 = v181;
        v168 = 16713;
        goto LABEL_229;
      case 0x14:
        v25 = v181;
        if (!(v188 | v182))
        {
          goto LABEL_231;
        }

        if (v188 ^ 1 | v182)
        {
          if (v19)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v170 = a1[3];
            v171 = a1[4];
          }

          else
          {
            v170 = 32;
            v171 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v170, v171);
          v168 = 18243;
          goto LABEL_229;
        }

        if (!v19)
        {
          goto LABEL_225;
        }

        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v125 = a1[3];
        v126 = a1[4];
        break;
      default:
        if (v19)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v56 = a1[3];
          v57 = a1[4];
        }

        else
        {
          v56 = 32;
          v57 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v56, v57);
        v25 = v181;
        v168 = 18242;
        goto LABEL_229;
    }
  }

  MEMORY[0x193ABEDD0](v125, v126);
  v168 = 18247;
LABEL_229:
  v169 = 0xE200000000000000;
LABEL_230:
  MEMORY[0x193ABEDD0](v168, v169);
LABEL_231:
  v172 = *(v25 + 16);
  if (v172)
  {
    v173 = *(v25 + 48);
    v174 = *(v25 + 80);
    v194 = *(v25 + 64);
    v195[0] = v174;
    *(v195 + 12) = *(v25 + 92);
    v192 = *(v25 + 32);
    v193 = v173;
    DisplayList.Item.printMinimally(into:)(a1);
    v175 = v172 - 1;
    if (v175)
    {
      v176 = (v25 + 112);
      do
      {
        v193 = v176[1];
        v194 = v176[2];
        v195[0] = v176[3];
        *(v195 + 12) = *(v176 + 60);
        v177 = *v176;
        v176 += 5;
        v192 = v177;
        DisplayList.Item.printMinimally(into:)(a1);
        --v175;
      }

      while (v175);
    }
  }

  v179 = a1[2];
  if (!v179)
  {
    v19 = 0;
LABEL_239:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    outlined consume of DisplayList.Effect(v188, v182, v12);
    if (!v19)
    {
LABEL_242:
      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      return;
    }

    goto LABEL_240;
  }

  v19 = v179 - 1;
  if (!__OFSUB__(v179, 1))
  {
    a1[2] = v19;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL, v178);
    goto LABEL_239;
  }

LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
}