void type metadata accessor for _SetStorage<ObjectIdentifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for _SetStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _TraitWritingModifier.AddTrait.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v19 - v10;
  v13 = type metadata accessor for _TraitWritingModifier(0, a2, a3, v12);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v19 - v14;
  _TraitWritingModifier.AddTrait.traits.getter(a1, &v19);
  v16 = v19;
  if (!v19)
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v20 = v16;
  _TraitWritingModifier.AddTrait.modifier.getter(type metadata accessor for _TraitWritingModifier, v15);
  (*(v9 + 32))(v11, v15, AssociatedTypeWitness);
  result = ViewTraitCollection.subscript.setter(v11, v17, a2, a3);
  *a4 = v20;
  return result;
}

uint64_t _TraitWritingModifier.AddTrait.traits.getter@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    result = 0;
  }

  else
  {
    AGGraphGetValue();
  }

  *a2 = result;
  return result;
}

uint64_t _TraitWritingModifier.AddTrait.modifier.getter@<X0>(uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = a2(0);
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

void _GraphInputs.pushStableID<A>(_:)(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  if (*(v2 + 37))
  {
    (*(v10 + 16))(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v11);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for StronglyHashable, &protocol descriptor for StronglyHashable);
    if (swift_dynamicCast())
    {
      outlined init with take of AnyTrackedValue(&v16, &v19);
      v12 = v22;
      v13 = v23;
      v14 = __swift_project_boxed_opaque_existential_1(&v19, v22);
      _GraphInputs.pushScope<A>(id:)(v14, v12, v13);
      __swift_destroy_boxed_opaque_existential_1(&v19);
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      outlined destroy of StronglyHashable?(&v16, &lazy cache variable for type metadata for StronglyHashable?, &lazy cache variable for type metadata for StronglyHashable, &protocol descriptor for StronglyHashable);
      makeStableIDData<A>(from:)(a1, a2, &v19);
      if (v21)
      {
        UUID.init()();
        _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4UUIDV_Tt1g5(v7, &v16);
        v15 = v17;
      }

      else
      {
        v15 = v20;
        v16 = v19;
      }

      specialized _GraphInputs.pushScope<A>(id:)(v16, *(&v16 + 1), v15);
    }
  }
}

uint64_t assignWithCopy for SimultaneousGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 24))((*(v6 + 40) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 40) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

_DWORD *initializeWithCopy for ForEachChild(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  (*(v4 + 16))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

void type metadata accessor for Attribute<ViewTraitCollection>()
{
  if (!lazy cache variable for type metadata for Attribute<ViewTraitCollection>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<ViewTraitCollection>);
    }
  }
}

uint64_t ViewTraitCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v45 = a1;
  v8 = type metadata accessor for ViewTraitCollection.AnyTrait(0, a3, a4, a4);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v38 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = v37 - v11;
  v37[1] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v44 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v42 = v37 - v17;
  v18 = 0;
  v19 = 0;
  v46 = v4;
  v20 = *v4;
  v21 = *v4 + 32;
  v22 = *(*v4 + 16);
  do
  {
    if (v22 == v19)
    {
      v18 = v43;
      v5 = v44;
      v6 = v45;
      (*(v43 + 16))(v14, v45, v44, v16);
      v30 = swift_getAssociatedTypeWitness();
      v19 = v39;
      (*(*(v30 - 8) + 32))(v39, v14, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v46;
      *v46 = v20;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v33 = v20[2];
        v32 = v20[3];
        if (v33 >= v32 >> 1)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v20);
          *v22 = v20;
        }

        (*(v18 + 8))(v6, v5);
        v35 = v40;
        v34 = v41;
        v36 = v38;
        (*(v40 + 16))(v38, v19, v41);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v33, v36, v22, v34, &protocol witness table for ViewTraitCollection.AnyTrait<A>);
        result = (*(v35 + 8))(v19, v34);
        goto LABEL_13;
      }

LABEL_15:
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
      *v22 = v20;
      goto LABEL_10;
    }

    if (v19 >= v20[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    v19 = (v19 + 1);
    outlined init with copy of AnyTrackedValue(v21 + v18, v47);
    v23 = v48;
    v5 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v6 = (*(v5 + 8))(v23, v5);
    __swift_destroy_boxed_opaque_existential_1(v47);
    v18 += 40;
  }

  while (v6 != a3);
  v24 = v43;
  v26 = v44;
  v25 = v45;
  (*(v43 + 16))(v42, v45, v44);
  result = swift_isUniquelyReferenced_nonNull_native();
  v22 = v46;
  *v46 = v20;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
    v20 = result;
    *v22 = result;
  }

  if (v19 - 1 < v20[2])
  {
    v28 = *(v20 + v18 + 16);
    v29 = *(v20 + v18 + 24);
    __swift_mutable_project_boxed_opaque_existential_1(v20 + v18 - 8, v28);
    (*(v29 + 24))(v42, v26, v28, v29);
    result = (*(v24 + 8))(v25, v26);
LABEL_13:
    *v22 = v20;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t type metadata completion function for TagValueTraitKey.Value(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _TraitWritingModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  if (v7 <= 7 && *(*(AssociatedTypeWitness - 8) + 64) <= 0x18uLL && (*(v6 + 80) & 0x100000) == 0)
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
  }

  else
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));
  }

  return a1;
}

uint64_t implicit closure #1 in static _AnchorWritingModifier.makeView(modifier:inputs:animated:body:)(unsigned int a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v11 = *(a3 + 48);
    v12 = *(a3 + 64);
    v13 = *(a3 + 16);
    v30 = *(a3 + 32);
    v31 = v11;
    v32 = v12;
    v33 = *(a3 + 80);
    v28 = *a3;
    v29 = v13;
    swift_beginAccess();
    v14 = CachedEnvironment.animatedPosition(for:)(&v28);
    v15 = *(a3 + 48);
    v30 = *(a3 + 32);
    v31 = v15;
    v32 = *(a3 + 64);
    v33 = *(a3 + 80);
    v16 = *(a3 + 16);
    v28 = *a3;
    v29 = v16;
    v17 = CachedEnvironment.animatedCGSize(for:)(&v28);
    OffsetAttribute2 = swift_endAccess();
  }

  else
  {
    v14 = *(a3 + 64);
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v17 = OffsetAttribute2;
  }

  v19 = *(a3 + 60);
  *&v28 = __PAIR64__(v14, a1);
  *(&v28 + 1) = __PAIR64__(v19, v17);
  MEMORY[0x1EEE9AC00](OffsetAttribute2);
  v24[2] = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for AnchorWriter(0, a4, a5, a6);
  swift_getWitnessTable(protocol conformance descriptor for AnchorWriter<A, B>, v25);
  v26 = v20;
  v21 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v28, partial apply for closure #1 in Attribute.init<A>(_:), v24, v25, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
  return v27;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance AnchorWriter<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for AnchorWriter<A, B>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t partial apply for closure #1 in static ConcentricCornerPaddingModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t))
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 36);
  result = a2(0, v5, v6);
  v10 = *MEMORY[0x1E698D3F8];
  if ((v8 & 1) == 0)
  {
    v10 = v7;
  }

  *(a1 + 20) = v10;
  return result;
}

void lazy protocol witness table accessor for type ConcentricLayoutComputer and conformance ConcentricLayoutComputer()
{
  if (!lazy protocol witness table cache variable for type ConcentricLayoutComputer and conformance ConcentricLayoutComputer)
  {
    swift_getWitnessTable(protocol conformance descriptor for ConcentricLayoutComputer, &unk_1F0061250, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ConcentricLayoutComputer and conformance ConcentricLayoutComputer);
  }
}

__n128 one-time initialization function for one()
{
  static UnitRect.one = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  xmmword_1ED52E568 = result;
  return result;
}

void type metadata accessor for AnchorBox<UnitRect>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for AnchorBox<UnitRect>)
  {
    v4 = type metadata accessor for AnchorBox(0, &type metadata for UnitRect, &protocol witness table for UnitRect, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for AnchorBox<UnitRect>);
    }
  }
}

double static Anchor.Source<A>.bounds.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for one != -1)
  {
    swift_once();
  }

  type metadata accessor for AnchorBox<UnitRect>(0, a2, a3, a4);
  v4 = swift_allocObject();
  result = *&static UnitRect.one;
  v6 = xmmword_1ED52E568;
  *(v4 + 16) = static UnitRect.one;
  *(v4 + 32) = v6;
  return result;
}

uint64_t View._concentricPadding<A>(edge:in:minimum:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[2] = a6;
  v24[1] = a4;
  v9 = a1;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ConcentricEdgePaddingModifier(0, v14, v15, v13);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v24 - v19;
  (*(v10 + 16))(v12, a2, a5, v18);
  *v20 = v9;
  (*(v10 + 32))(&v20[*(v16 + 36)], v12, a5);
  v21 = &v20[*(v16 + 40)];
  v22 = *(a3 + 16);
  *v21 = *a3;
  *(v21 + 1) = v22;
  v21[32] = *(a3 + 32);
  View.modifier<A>(_:)();
  return (*(v17 + 8))(v20, v16);
}

uint64_t _GlassEffectContainer.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ModifiedContent(0, *(a1 + 16), &type metadata for GlassEffectContainerModifier, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-1] - v11;
  v17[2] = *v4;
  v13 = *(a1 + 24);
  View.modifier<A>(_:)();
  v17[0] = v13;
  v17[1] = &protocol witness table for GlassEffectContainerModifier;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v17);
  static ViewBuilder.buildExpression<A>(_:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v14)(v12, v6);
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA010ConcentriccD033_7079FF89BCF97F81EB250A589B9A5CEDLLV0E0V_Tt1B5@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<ConcentricLayoutComputer.Engine>, &type metadata for ConcentricLayoutComputer.Engine, &protocol witness table for ConcentricLayoutComputer.Engine, type metadata accessor for TracingLayoutEngineBox);
    v4 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v6 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v7 = 0;
    }

    else
    {
      v7 = CurrentAttribute;
    }

    *(v4 + 228) = v7;
    *(v4 + 232) = v6;
  }

  else
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for LayoutEngineBox<ConcentricLayoutComputer.Engine>, &type metadata for ConcentricLayoutComputer.Engine, &protocol witness table for ConcentricLayoutComputer.Engine, type metadata accessor for LayoutEngineBox);
    v4 = swift_allocObject();
  }

  v8 = *(a1 + 176);
  *(v4 + 176) = *(a1 + 160);
  *(v4 + 192) = v8;
  *(v4 + 208) = *(a1 + 192);
  *(v4 + 224) = *(a1 + 208);
  v9 = *(a1 + 112);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = v9;
  v10 = *(a1 + 144);
  *(v4 + 144) = *(a1 + 128);
  *(v4 + 160) = v10;
  v11 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v11;
  v12 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v12;
  result = *a1;
  v14 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v14;
  *a2 = v4;
  a2[1] = 0;
  return result;
}

uint64_t one-time initialization function for edgeBelowText(uint64_t a1)
{
  result = AGMakeUniqueID();
  static Spacing.Category.edgeBelowText = result;
  return result;
}

uint64_t one-time initialization function for edgeAboveText(uint64_t a1)
{
  result = AGMakeUniqueID();
  static Spacing.Category.edgeAboveText = result;
  return result;
}

uint64_t closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t x8_0@<X8>)
{
  v14 = a2;
  v16 = HIDWORD(a2);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v24[0] = v14;
  v24[1] = v16;
  v24[2] = a3;
  v22 = a4;
  v23 = a5;

  return ViewLayoutEngine.init(layout:context:children:)(v19, v24, &v22, a6, a8, x8_0);
}

uint64_t ViewLayoutEngine.init(layout:context:children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 8);
  v10 = *a3;
  v21 = *a3;
  v11 = *(a3 + 1);
  v12 = type metadata accessor for ViewLayoutEngine(0, a4, a5, a4);
  v13 = a6 + v12[12];
  LOBYTE(v23[0]) = 1;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 1;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 1;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0u;
  *(v13 + 144) = 0u;
  *(v13 + 160) = 1;
  v14 = (a6 + v12[13]);
  *v14 = 0u;
  v14[1] = 0u;
  *(a6 + v12[14]) = MEMORY[0x1E69E7CC0];
  v15 = a6 + v12[15];
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(a6 + v12[16]) = 0;
  v16 = a6 + v12[10];
  *v16 = v10;
  *(v16 + 8) = v11;
  swift_getKeyPath();
  type metadata accessor for Axis?(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v9);
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>, protocol conformance descriptor for EnvironmentFetch<A>);
  _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>, protocol conformance descriptor for EnvironmentFetch<A>);
  LOBYTE(v23[0]) = 0;
  LOBYTE(v10) = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  v17 = v12[11];
  *(a6 + v17) = v10;
  v18 = *(a4 - 8);
  (*(v18 + 16))(a6, a1, a4);
  v19 = *(a6 + v17);
  LODWORD(v23[0]) = v21;
  v23[1] = v11;
  v24 = 0;
  v25 = v19;
  (*(a5 + 32))(v23, a4, a5);
  (*(v18 + 8))(a1, a4);
}

void lazy protocol witness table accessor for type [GlassContainer.Effect] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [GlassContainer.Effect] and conformance [A])
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for [GlassContainer.Effect], &type metadata for GlassContainer.Effect, MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(MEMORY[0x1E69E6338], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [GlassContainer.Effect] and conformance [A]);
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.GlassContainerCacheKey);
  v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE019GlassContainerCacheV033_7521D6231838360D8883796B4320212FLLV_Tt0B5(a1, v6);
  if (v4)
  {
    return _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGWOcTm_0(v4 + 72, a2, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox, _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_1);
  }

  swift_weakInit();
  return swift_weakAssign();
}

uint64_t static ContainerStorageView._makeView(view:inputs:)@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v34 = a2[2];
  v35 = v4;
  v36 = a2[4];
  v37 = *(a2 + 20);
  v5 = a2[1];
  v32 = *a2;
  v33 = v5;
  v6 = BYTE4(v34);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(v32, v30);
  Strong = swift_weakLoadStrong();
  result = outlined destroy of WeakBox<GlassContainerCache>(v30);
  if (Strong)
  {
    LODWORD(v30[0]) = AGGraphCreateOffsetAttribute2();
    *(&v30[0] + 1) = Strong;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type _GlassContainerStorageView.Init and conformance _GlassContainerStorageView.Init();

    v9 = Attribute.init<A>(body:value:flags:update:)();

    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v26 = v34;
    v27 = v35;
    v28 = v36;
    v24 = v32;
    v25 = v33;
    v11 = v34;
    v29 = v37;
    LODWORD(v26) = 0;
    v31 = v37;
    v30[3] = v35;
    v30[4] = v36;
    v30[0] = v32;
    v30[1] = v33;
    v30[2] = v26;
    outlined init with copy of _ViewInputs(&v32, v22);
    outlined init with copy of _ViewInputs(v30, v22);
    specialized static View.makeView(view:inputs:)(v9, v30, &v20);
    outlined destroy of _ViewInputs(v30);
    LODWORD(v26) = v11;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(&v20, &v24);
      AGSubgraphEndTreeElement();
    }

    v22[2] = v26;
    v22[3] = v27;
    v22[4] = v28;
    v23 = v29;
    v22[0] = v24;
    v22[1] = v25;
    outlined destroy of _ViewInputs(v22);
    v12 = v20;
    v13 = v21;
    v18 = MEMORY[0x1E69E7CC0];
    v19 = *MEMORY[0x1E698D3F8];
    if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v35))
    {
      v14 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v12);
      v15 = v14;
      if ((v14 & 0x100000000) != 0)
      {
        v15 = 0;
      }

      PreferencesOutputs.subscript.setter(v15 | ((HIDWORD(v14) & 1) << 32), &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    }

    if ((v6 & 2) != 0)
    {

      v16 = 128;
    }

    else
    {

      v16 = 0;
      v13 = v19;
    }

    *a3 = v18;
    *(a3 + 8) = v16;
    *(a3 + 12) = v13;
  }

  else
  {
    *a3 = MEMORY[0x1E69E7CC0];
    v17 = *MEMORY[0x1E698D3F8];
    *(a3 + 8) = 0;
    *(a3 + 12) = v17;
  }

  return result;
}

void *initializeWithCopy for _GlassEffectContainer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

void lazy protocol witness table accessor for type UpdatedContainerStorage and conformance UpdatedContainerStorage()
{
  if (!lazy protocol witness table cache variable for type UpdatedContainerStorage and conformance UpdatedContainerStorage)
  {
    swift_getWitnessTable(protocol conformance descriptor for UpdatedContainerStorage, &unk_1F0085518, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UpdatedContainerStorage and conformance UpdatedContainerStorage);
  }
}

void lazy protocol witness table accessor for type ContainerStorageView.Init and conformance ContainerStorageView.Init()
{
  if (!lazy protocol witness table cache variable for type ContainerStorageView.Init and conformance ContainerStorageView.Init)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContainerStorageView.Init, &unk_1F0085410, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContainerStorageView.Init and conformance ContainerStorageView.Init);
  }
}

uint64_t _GlassEffectContainer.init(smoothness:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  if (a2)
  {
    swift_beginAccess();
    v11 = *&static Spacing.defaultValue[0];
    if (dbl_1EAB21528 < static Spacing.defaultValue[0])
    {
      v11 = *&dbl_1EAB21528;
    }
  }

  else
  {
    v11 = a1;
  }

  *a7 = v11;
  type metadata accessor for _GlassEffectContainer(0, a5, a6, a4);
  return a3();
}

uint64_t initializeBufferWithCopyOfBuffer for ForEachState.Evictor(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 4);

  return a1;
}

_DWORD *assignWithTake for ForEachState.LazyEdits(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v25 = *(a3 + 16);
    v24 = *(v25 - 8);
    v5 = *(v24 + 64);
    v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = type metadata accessor for IndexSet();
    v7 = *(v26 - 8);
    v8 = *(v7 + 80) & 0xF8 | 7;
    v23 = *(v7 + 64);
    if (((v23 + 31 + ((v8 + v6 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) != 0 && ((v23 + 31 + ((v8 + v6 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFFFFFFFF0)
    {
      v9 = ((v23 + 31 + ((v8 + v6 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      v9 = 16;
    }

    v10 = *(a1 + v9);
    if (v10 >= 2 && v9 != 0)
    {
      v10 = *a1 + 2;
    }

    v12 = ~v8;
    if (v10 != 1)
    {
      (*(v24 + 8))(a1, v25);

      (*(v7 + 8))((((a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v12, v26);
    }

    v13 = *(a2 + v9);
    if (v9)
    {
      v14 = v13 >= 2;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v13 = *a2 + 2;
    }

    if (v13 == 1)
    {
      *a1 = *a2;
    }

    else
    {
      (*(v24 + 32))(a1, a2, v25);
      v15 = ((a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      v16 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v15 = *v16;
      v17 = (v15 + v8 + 8) & v12;
      v18 = (v16 + v8 + 8) & v12;
      (*(v7 + 32))(v17, v18, v26);
      LOBYTE(v13) = 0;
      v19 = (v23 + 7 + v17) & 0xFFFFFFFFFFFFFFF8;
      v20 = (v23 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
      v21 = *v20;
      *(v19 + 16) = *(v20 + 16);
      *v19 = v21;
      *((v23 + 31 + v17) & 0xFFFFFFFFFFFFFFF8) = *((v23 + 31 + v18) & 0xFFFFFFFFFFFFFFF8);
    }

    *(a1 + v9) = v13;
  }

  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for Image.SymbolRenderingOptionsProvider(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);

  return a1;
}

Swift::Int ForEachState.forEachItem(from:style:do:)(uint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t *, unint64_t *, uint64_t), uint64_t a4)
{
  v5 = v4;
  v74 = a3;
  v75 = a4;
  v80 = a1;
  v7 = *v4;
  v8 = *(v7 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &value - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &value - v13;
  v16 = *(v15 + 104);
  v82 = *(*(v16 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &value - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v83 = &value - v21;
  v79 = *a2;
  if (!AGSubgraphIsValid())
  {
LABEL_16:
    v29.value = 1;
    return v29.value;
  }

  v67 = v11;
  v69 = v17;
  v22 = *(v7 + 160);
  swift_beginAccess();
  v23 = *(v7 + 112);
  v84 = v8;
  v24 = *(v7 + 88);
  v25 = v22;
  v85 = v24;
  v86 = v16;
  v87 = v23;
  v26 = type metadata accessor for ForEach(0, &v84);
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v70 = v27 + 48;
  v78 = v28;
  v29.value = v28(&v5[v25], 1, v26);
  if (LODWORD(v29.value) == 1)
  {
    goto LABEL_50;
  }

  v30 = v9;
  v32 = *(v9 + 16);
  v31 = v9 + 16;
  v76 = v32;
  v32(v14, &v5[v25], v8);
  v77 = v25;
  dispatch thunk of Collection.endIndex.getter();
  v33 = v77;
  v36 = *(v30 + 8);
  v35 = (v30 + 8);
  v34 = v36;
  v36(v14, v8);
  v73 = v26;
  v29.value = v78(&v5[v33], 1, v26);
  if (LODWORD(v29.value) == 1)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v76(v14, &v5[v33], v8);
  dispatch thunk of Collection.startIndex.getter();
  v34(v14, v8);
  v37 = *v80;
  v71 = v31;
  v72 = v34;
  if (v37 < 1)
  {
LABEL_20:
    v42 = 0;
    goto LABEL_36;
  }

  v68 = v37;
  v29 = ForEachState.fetchViewsPerElement()();
  if (v29.is_nil)
  {
    v67 = v35;
    v38 = *(*v5 + 184);
    v39 = *&v5[v38];
    v40 = *(v39 + 16);
    v41 = v77;
    if (!v40 || *&v5[*(*v5 + 192)] != v79)
    {
      v42 = 0;
      goto LABEL_36;
    }

    v42 = 0;
    v43 = v39 + 32;
    v44 = *(v39 + 16);
    do
    {
      v45 = v44 >> 1;
      v46 = v42 + (v44 >> 1);
      if (__OFADD__(v42, v44 >> 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (v46 >= v40)
      {
        goto LABEL_45;
      }

      if (v68 >= *(v43 + 8 * v46))
      {
        v42 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          __break(1u);
          goto LABEL_16;
        }

        v45 = v44 + ~v45;
      }

      v44 = v45;
    }

    while (v45 > 0);
    v29.value = v78(&v5[v77], 1, v73);
    if (LODWORD(v29.value) == 1)
    {
      goto LABEL_54;
    }

    v76(v14, &v5[v41], v8);
    Collection.formIndex(_:offsetBy:)();
    v29.value = v72(v14, v8);
    if (v42 < 1)
    {
      goto LABEL_36;
    }

    v56 = *&v5[v38];
    if (v42 > *(v56 + 16))
    {
      goto LABEL_48;
    }

    v55 = *(v56 + 8 * v42 + 24);
LABEL_35:
    *v80 = v68 - v55;
LABEL_36:
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v59 = *(v69 + 8);
        v60 = v19;
        v61 = AssociatedTypeWitness;
        v59(v60, AssociatedTypeWitness);
        v59(v83, v61);
        v29.value = 1;
        v5[*(*v5 + 248)] = 1;
        return v29.value;
      }

      v57 = ForEachState.item(at:offset:)(v19, v42);
      v84 = v79;
      if ((v74(v80, &v84, v57) & 1) == 0)
      {
        break;
      }

      v58 = v77;
      v29.value = v78(&v5[v77], 1, v73);
      if (LODWORD(v29.value) == 1)
      {
        goto LABEL_49;
      }

      v76(v14, &v5[v58], v8);
      dispatch thunk of Collection.formIndex(after:)();

      v72(v14, v8);
      ++v42;
    }

    v62 = *(v69 + 8);
    v63 = AssociatedTypeWitness;
    v62(v19, AssociatedTypeWitness);
    v62(v83, v63);
    v29.value = 0;
    return v29.value;
  }

  v48 = v76;
  v47 = v77;
  if (v79)
  {
    v49 = (v29.value * (v79 >> 1)) >> 64;
    v29.value *= v79 >> 1;
    if (v49 != v29.value >> 63)
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
      goto LABEL_51;
    }
  }

  if (v68 < v29.value)
  {
    goto LABEL_20;
  }

  value = v29.value;
  v50 = v68 / v29.value;
  if (v29.value < 2)
  {
    v50 = v68;
  }

  v66 = v50;
  v29.value = v78(&v5[v77], 1, v73);
  if (LODWORD(v29.value) == 1)
  {
    goto LABEL_52;
  }

  v51 = &v5[v47];
  v52 = v67;
  v48(v67, v51, v8);
  v53 = dispatch thunk of Collection.count.getter();
  v72(v52, v8);
  if (v53 >= v66)
  {
    v42 = v66;
  }

  else
  {
    v42 = v53;
  }

  v54 = v77;
  v29.value = v78(&v5[v77], 1, v73);
  if (LODWORD(v29.value) != 1)
  {
    v76(v14, &v5[v54], v8);
    Collection.formIndex(_:offsetBy:)();
    v29.value = v72(v14, v8);
    v55 = value * v42;
    if ((value * v42) >> 64 == (value * v42) >> 63)
    {
      goto LABEL_35;
    }

    goto LABEL_47;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return v29.value;
}

Swift::Int specialized ForEachList.applyNodes(from:style:list:transform:to:)(uint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  v13 = *a2;
  v9[2] = a6;
  v9[3] = v6;
  v10 = v7;
  v11 = a4;
  v12 = a5;
  return ForEachState.forEachItem(from:style:do:)(a1, &v13, partial apply for closure #1 in ForEachState.applyNodes(from:style:list:transform:to:), v9) & 1;
}

uint64_t getEnumTagSinglePayload for ForEach(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ForEachState<A, B, C>.Evictor(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.Evictor, a1);

  return static AsyncAttribute.flags.getter();
}

_BYTE *storeEnumTagSinglePayload for ForEach(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t type metadata completion function for IndexSetBuilder(uint64_t a1)
{
  result = type metadata accessor for IndexSet();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for evictByDefault()
{
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    result = dyld_program_sdk_at_least();
  }

  else
  {
    result = static Semantics.forced >= v0;
  }

  static ForEachEvictionInput.evictByDefault = result;
  return result;
}

void type metadata accessor for AnyHashable2?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for ForEachState.Item(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t type metadata completion function for ForEachState.EditsBuilder(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for IndexSetBuilder(319);
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ForEachList<A, B, C>.Init(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ForEachList<A, B, C>.Init, a1);

  return static AsyncAttribute.flags.getter();
}

unint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA20ForEachEvictionInputV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for ForEachEvictionInput);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA20ForEachEvictionInputV_Tt0B5(a1, v6);
  if (v2)
  {
    v3 = (v2 + 72);
    v4 = (v2 + 76);
  }

  else
  {
    v3 = &static ForEachEvictionInput.defaultValue;
    v4 = &static ForEachEvictionInput.defaultValue + 1;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3 | (*v4 << 32);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA20ForEachEvictionInputV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA20ForEachEvictionInputV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for ForEachEvictionInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferencesOutputs>, &type metadata for PreferencesOutputs, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(tag: Int, links: _DynamicPropertyBuffer)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Gradient.Stop>, &type metadata for Gradient.Stop, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PathSet.Element>, &type metadata for PathSet.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color.ResolvedHDR>, &type metadata for Color.ResolvedHDR, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 20);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[20 * v8])
    {
      memmove(v12, v13, 20 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 20 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color.Resolved>, &type metadata for Color.Resolved, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ShapeSet.Element>, &type metadata for _ShapeSet.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyHashable2>, &type metadata for AnyHashable2, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.RunSlice>, &type metadata for Text.Layout.RunSlice, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 56 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Float>, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Item.ID>, &type metadata for GlassContainer.Item.ID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<LayoutSubviews.Storage.IndexedAttributes>, &type metadata for LayoutSubviews.Storage.IndexedAttributes, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Gradient.StopDefinition>, &type metadata for Gradient.StopDefinition, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Item>, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 656);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[656 * v8])
    {
      memmove(v12, v13, 656 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Entry.StableID>, &type metadata for GlassContainer.Entry.StableID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DiffResult.MoveOperation>, &type metadata for DiffResult.MoveOperation, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AttributedString.WritingDirection?>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvableTextSegmentAttribute.Value.Run>, &type metadata for ResolvableTextSegmentAttribute.Value.Run, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedString.AnyAttribute>, &type metadata for AttributedString.AnyAttribute, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GraphicsContext.ResolvedShading>, &type metadata for GraphicsContext.ResolvedShading, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollEdgeEffectTag.ID>, &type metadata for ScrollEdgeEffectTag.ID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewList_ID.Canonical>, &type metadata for _ViewList_ID.Canonical, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_ProposedSubview>, &type metadata for _LazyLayout_ProposedSubview, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<EndChildGeometries.CodableViewGeometry>, &type metadata for EndChildGeometries.CodableViewGeometry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodableAccessibilityCustomContentList.CodableEntry>, &type metadata for CodableAccessibilityCustomContentList.CodableEntry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodableAccessibilityDataSeriesConfiguration.ValueDescription>, &type metadata for CodableAccessibilityDataSeriesConfiguration.ValueDescription, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityDataSeriesConfiguration.ValueDescription>, &type metadata for AccessibilityDataSeriesConfiguration.ValueDescription, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<GesturePhase<()>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<LayoutGestureBox.Child>, &type metadata for LayoutGestureBox.Child, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<ClosedRange<CGFloat>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusableFillerBounds>, &type metadata for FocusableFillerBounds, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 112 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_PlacedSubview>, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<TypedCanonicalViewID<ForEachConstantID>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Range<AttributedTextFormatting.Constraints.Index>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrapeableContent>, &type metadata for ScrapeableContent, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UInt16>, MEMORY[0x1E69E75F8], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CAHostingLayerEvent.Resolved>, &type metadata for CAHostingLayerEvent.Resolved, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any.Type>, type metadata accessor for Any.Type, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_PlacedSubview_V1>, &type metadata for _LazyLayout_PlacedSubview_V1, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionConfiguration>, &type metadata for SectionConfiguration, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t initializeWithCopy for ForEachState.EditsBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = type metadata accessor for IndexSet();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v12 = v10 + 16;
  v13 = *(v10 + 80) & 0xF8;
  v14 = v13 + 15;
  v15 = v7 + v13 + 15;
  v16 = ~v13 & 0xFFFFFFFFFFFFFFF8;
  v17 = v15 & v16;
  v18 = (v8 + v14) & v16;

  v11(v17, v18, v9);
  v19 = *(v12 + 48) + 7;
  v20 = (v19 + v17) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + v18) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v21 + 16);
  *v20 = *v21;
  *(v20 + 16) = v22;
  v23 = (v19 & 0xFFFFFFFFFFFFFFF8) + 17;
  v24 = v23 + v17;
  v25 = v23 + v18;
  *(v24 + 7) = *(v25 + 7);
  *(v24 + 15) = *(v25 + 15);

  return a1;
}

uint64_t ForEachState.EditsBuilder.init(data:idGenerator:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v23 = *a2;
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = a5;
  v24[3] = a6;
  v24[4] = a7;
  v24[5] = a8;
  v15 = type metadata accessor for ForEachState.EditsBuilder(0, v24);
  v16 = a9 + v15[18];
  IndexSet.init()();
  v17 = v16 + *(type metadata accessor for IndexSetBuilder(0) + 20);
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v18 = (a9 + v15[19]);
  v19 = default argument 0 of ForEachState.Edits.init(removes:inserts:)(a3, a4, a5, a6, a7);
  v20 = default argument 0 of ForEachState.Edits.init(removes:inserts:)(a3, a4, a5, a6, a7);
  *v18 = v19;
  v18[1] = v20;
  result = (*(*(a3 - 8) + 32))(a9, a1, a3);
  *(a9 + v15[17]) = v23;
  return result;
}

uint64_t default argument 0 of ForEachState.Edits.init(removes:inserts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = static Array._allocateUninitialized(_:)();
  if (MEMORY[0x193ABF2D0](v7, a2))
  {
    v8 = specialized Set.init(_nonEmptyArrayLiteral:)(v7, a2, a5);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  return v8;
}

uint64_t ForEachState.update(view:)(uint64_t a1)
{
  v2 = v1;
  v257 = a1;
  v292 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *(*(v4 + 8) + 8);
  v6 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v238.i64[0] = *(AssociatedTypeWitness - 1);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  i = &v226 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v254 = &v226 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v255 = &v226 - v11;
  v261 = v5;
  v237 = *(v5 + 8);
  v12 = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v235 = *(v13 - 8);
  v236 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v242 = &v226 - v14;
  v258 = v12;
  v243 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v253 = &v226 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v241 = &v226 - v18;
  v273 = *(v3 + 88);
  v19 = *(v3 + 112);
  v20 = *(v3 + 120);
  v288 = v273;
  v287 = v6;
  v289 = v4;
  v290 = v19;
  v291 = v20;
  v21 = type metadata accessor for ForEachState.LazyEdits(0, &v287);
  v247 = *(v21 - 8);
  v248 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v246 = (&v226 - v22);
  v23 = v273.i64[0];
  v262 = *(v273.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v24);
  v245 = &v226 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v252 = &v226 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v226 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v277 = &v226 - v32;
  v288 = v273;
  v287 = v6;
  v289 = v4;
  v290 = v19;
  v263 = v20;
  v291 = v20;
  v33 = type metadata accessor for ForEachState.Item(255, &v287);
  v279 = v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v271 = type metadata accessor for Optional();
  v240 = *(v271 - 1);
  MEMORY[0x1EEE9AC00](v271);
  v275 = &v226 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v264 = &v226 - v36;
  v259 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v269 = &v226 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v239 = (&v226 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v244 = (&v226 - v42);
  MEMORY[0x1EEE9AC00](v43);
  v250 = (&v226 - v44);
  v251 = v4;
  v288 = v273;
  v287 = v6;
  v289 = v4;
  v290 = v19;
  v276 = v19;
  v45 = type metadata accessor for ForEach(255, &v287);
  v46 = type metadata accessor for Optional();
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v249 = (&v226 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v226 - v50;
  result = AGSubgraphIsValid();
  if (result)
  {
    v230 = v30;
    v278 = v33;
    v53 = AGMakeUniqueID();
    v270 = *(*v2 + 232);
    *&v2[v270] = v53;
    v54 = *(*v2 + 240);
    LODWORD(v267) = *&v2[v54];
    v268 = v54;
    *&v2[v54] = v267 + 1;
    ForEachState.invalidateViewCounts()();
    v55 = &v2[*(*v2 + 160)];
    swift_beginAccess();
    (*(v47 + 16))(v51, v55, v46);
    v232 = *(v45 - 8);
    v56 = v45;
    v57 = v232 + 48;
    v58 = *(v232 + 48);
    v260 = v56;
    v59 = v58(v51, 1);
    v233 = v47;
    v234 = v46;
    (*(v47 + 8))(v51, v46);
    v274 = v2;
    v256 = v6;
    v60 = v251;
    v61 = v6;
    v62 = v276;
    if (v59 == 1)
    {
      goto LABEL_5;
    }

    v231 = v57;
    if ((v58)(v55, 1, v260) == 1)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v63 = *&v55[*(v260 + 64)];
    v288 = v273;
    v287 = v61;
    v289 = v60;
    v290 = v62;
    type metadata accessor for ForEach.IDGenerator(0, &v287);
    if (v63)
    {
LABEL_5:
      v64 = v232;
      v65 = v249;
      v66 = v257;
      v67 = v260;
      (*(v232 + 16))(v249, v257, v260);
      (*(v64 + 56))(v65, 0, 1, v67);
      swift_beginAccess();
      (*(v233 + 40))(v55, v65, v234);
      swift_endAccess();
      v275 = v273.i64[1];
      v68 = v246;
      v69 = v61;
      v70 = v61;
      v71 = v263;
      ForEachState.LazyEdits.init()(v69, v279, v273.i64[1], v60, v62, v263, v246);
      v72 = *(*v2 + 208);
      swift_beginAccess();
      (*(v247 + 40))(&v2[v72], v68, v248);
      swift_endAccess();
      v288 = v273;
      v287 = v70;
      v289 = v60;
      v290 = v62;
      v291 = v71;
      v249 = type metadata accessor for ForEachState.EditsBuilder(0, &v287);
      v248 = swift_allocBox();
      v74 = v73;
      v75 = v250;
      TupleTypeMetadata2 = *(v259 + 16);
      (TupleTypeMetadata2)(v250, v66, v70);
      v264 = *(v260 + 64);
      v287 = *&v264[v66];

      v267 = v74;
      ForEachState.EditsBuilder.init(data:idGenerator:)(v75, &v287, v70, v279, v275, v60, v62, v71, v74);
      if ((v2[172] & 1) == 0)
      {
        v76 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        *&v2[*(*v2 + 216)] = Counter;
        (TupleTypeMetadata2)(v269, v66, v70);
        v78 = swift_allocObject();
        v79 = v78;
        v80 = *v2;
        if ((*&v2[*(*v2 + 224)] & 0x8000000000000000) != 0)
        {
          v95 = v70;
          *(v78 + 16) = 0x7FFFFFFFFFFFFFFFLL;
          v96 = v259;
LABEL_91:
          v2[*(v80 + 248)] = 0;
          swift_beginAccess();
          *&v2[*(*v2 + 224)] = *(v79 + 16);

          (*(v96 + 8))(v269, v95);
          $defer #1 <A, B, C>() in ForEachState.update(view:)(v2, v267);
        }

        v81 = *(*v2 + 200);
        swift_beginAccess();
        v82 = *&v2[v81];
        v83 = swift_allocObject();

        TupleTypeMetadata2 = v82;
        v85 = MEMORY[0x193ABE6A0](v84, v279, v278, v62);
        v233 = v83;
        *(v83 + 16) = v85;
        v271 = (v83 + 16);
        v86 = swift_allocObject();
        v87 = *(*v2 + 272);
        swift_beginAccess();

        v88 = Set.count.getter();

        v232 = v86;
        *(v86 + 16) = v88;
        v250 = (v86 + 16);
        v89 = swift_allocObject();
        v231 = v89;
        *(v89 + 16) = 0;
        v234 = (v89 + 16);
        v90 = swift_allocObject();
        v91 = Set.init()();
        v228 = v87;
        v229 = v90;
        *(v90 + 16) = v91;
        v246 = (v90 + 16);
        v92 = *&v2[v87];
        v93 = v256;
        *(v79 + 16) = 0;

        v94 = v257;
        if (dispatch thunk of Collection.isEmpty.getter())
        {

LABEL_12:
          v264 = 0;
          v100 = v278;
          v101 = TupleTypeMetadata2;
LABEL_68:
          v203 = *(*v2 + 248);
          if ((v2[v203] & 1) == 0)
          {
            v204 = v234;
            swift_beginAccess();
            v205 = *v204;
            swift_beginAccess();
            ForEachState.EditsBuilder.removeInserts(afterOffset:)(v205, v249);
            swift_endAccess();
          }

          v206 = v271;
          swift_beginAccess();
          v207 = *v206;
          if (*v206)
          {
            v270 = v203;
            v260 = v79;
            v280[0] = Array.init()();
            v208 = v279;
            v281 = MEMORY[0x193ABE620](v101, v279, v100, v62);
            v282 = v209;
            v283 = v210 & 1;
            v275 = MEMORY[0x193ABE6F0](v101, v208, v100, v62);
            v273.i64[0] = v211;
            LODWORD(TupleTypeMetadata2) = v212;
            v213 = (v262 + 8);
            do
            {
              v224 = v62;
              if (static Dictionary.Index.== infix(_:_:)())
              {
                break;
              }

              v224 = v62;
              v214 = v277;
              Dictionary.subscript.getter();
              (*v213)(v214, v208);
              v215 = v287;
              if ((*(v287 + *(*v287 + 240)) & 1) == 0 && *(v287 + *(*v287 + 216)) != *&v274[v268])
              {
                type metadata accessor for Array();

                v100 = v278;
                Array.append(_:)();
                *v271 = --v207;
                v216 = *(*v215 + 160);
                swift_beginAccess();
                ForEachState.EditsBuilder.appendInsert(id:)(v215 + v216, v249, ForEachState.Edits.appendRemove(id:));
                swift_endAccess();
              }

              v62 = v276;
              MEMORY[0x193ABE700](&v281, v101, v208, v100, v276);
            }

            while (v207);

            v217 = v280[0];
            v218 = MEMORY[0x193ABF2C0](v280[0], v100);
            v2 = v274;
            v95 = v256;
            v203 = v270;
            if (v218)
            {
              v219 = 4;
              do
              {
                v220 = v219 - 4;
                IsNativeType = Array._hoistableIsNativeTypeChecked()();
                Array._checkSubscript(_:wasNativeTypeChecked:)();
                if (IsNativeType)
                {
                  v222 = *(v217 + 8 * v219);

                  v223 = v219 - 3;
                  if (__OFADD__(v220, 1))
                  {
                    goto LABEL_85;
                  }
                }

                else
                {
                  v222 = _ArrayBuffer._getElementSlowPath(_:)();
                  v223 = v219 - 3;
                  if (__OFADD__(v220, 1))
                  {
LABEL_85:
                    __break(1u);
                    break;
                  }
                }

                ForEachState.eraseItem(_:)(v222);

                ++v219;
              }

              while (v223 != MEMORY[0x193ABF2C0](v217, v278));
            }

            outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v275, v273.i64[0], TupleTypeMetadata2 & 1);

            outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v281, v282, v283);
            v79 = v260;
          }

          else
          {

            v95 = v256;
          }

          v96 = v259;
          if ((v2[v203] & 1) == 0)
          {
            swift_beginAccess();
            *(v79 + 16) = 0x7FFFFFFFFFFFFFFFLL;
          }

          swift_beginAccess();
          *&v2[v228] = *(v229 + 16);

          v80 = *v2;
          goto LABEL_91;
        }

        v97 = v242;
        Collection.first.getter();
        v98 = v243;
        v99 = v258;
        if ((*(v243 + 48))(v97, 1, v258) == 1)
        {

          (*(v235 + 8))(v97, v236);
          goto LABEL_12;
        }

        v247 = v92;
        v260 = v79;
        v132 = *(v98 + 32);
        v133 = v241;
        v132(v241, v97, v99);
        if (*&v264[v94])
        {

          v134 = KeyPath.makeGetFunction()();
          v257 = v135;
          MEMORY[0x1EEE9AC00](v134);
          *(&v226 - 8) = v93;
          *(&v226 - 7) = v273;
          *(&v226 - 5) = v251;
          *(&v226 - 4) = v62;
          *(&v226 - 3) = v263;
          v225 = v136;
          v137 = v230;
          _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v133, partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<A.Sequence.Element>) -> (@out B), (&v226 - 10), v99, MEMORY[0x1E69E73E0], v279, MEMORY[0x1E69E7410], v138);
          v139 = v255;
          v140 = v269;
          v141 = dispatch thunk of Collection.startIndex.getter();
          v284 = 0;
          MEMORY[0x1EEE9AC00](v141);
          *(&v226 - 16) = &v284;
          *(&v226 - 15) = TupleTypeMetadata2;
          *(&v226 - 14) = v137;
          v142 = v247;
          *(&v226 - 13) = v247;
          *(&v226 - 12) = v248;
          *(&v226 - 11) = v134;
          v244 = v134;
          v143 = v232;
          v144 = v233;
          *(&v226 - 10) = v257;
          *(&v226 - 9) = v144;
          v145 = v260;
          *(&v226 - 8) = v143;
          *(&v226 - 7) = v145;
          v146 = v231;
          *(&v226 - 6) = v2;
          *(&v226 - 5) = v146;
          *(&v226 - 4) = v229;
          *(&v226 - 3) = v139;
          v224 = v140;
          dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
          v264 = 0;
          v147 = v238.i64[0];
          if (v284)
          {
            (*(v243 + 8))(v241, v258);

            v148 = *(v147 + 8);
            v100 = v278;
            v149 = AssociatedTypeWitness;
LABEL_66:
            v101 = TupleTypeMetadata2;
LABEL_67:
            v148(v139, v149);
            (*(v262 + 8))(v230, v279);

            v79 = v260;
            goto LABEL_68;
          }

          v177 = v230;
          v178 = v279;
          MEMORY[0x193ABE750](&v287, v230, TupleTypeMetadata2, v279, v278, v62);
          v285[0] = v287;
          type metadata accessor for Optional();
          _ViewInputs.base.modify();
          v139 = v255;

          LOBYTE(v287) = MEMORY[0x193ABF5D0](v177, v142, v178, v62) & 1;
          _ViewInputs.base.modify();
          swift_beginAccess();
          v179 = v256;
          dispatch thunk of Collection.endIndex.getter();
          swift_beginAccess();
          swift_beginAccess();
          swift_beginAccess();
          swift_beginAccess();
          v180 = 0;
          v240 = *(swift_getAssociatedConformanceWitness() + 8);
          v236 = (v147 + 16);
          v237 = (v243 + 16);
          v235 = v147 + 24;
          v242 = (v147 + 8);
          v243 += 8;
          v227 = (v262 + 16);
          v181.i64[0] = v179;
          v238 = vzip1q_s64(v181, v273);
          v181.i64[0] = vdupq_laneq_s64(v273, 1).u64[0];
          v181.i64[1] = v251;
          v273 = v181;
          v101 = TupleTypeMetadata2;
          v239 = (v262 + 8);
          while (1)
          {
            v149 = AssociatedTypeWitness;
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {

              v148 = *v242;
              (*v242)(v254, v149);
              (*v243)(v241, v258);
              v2 = v274;
              v100 = v278;
              v62 = v276;
              goto LABEL_67;
            }

            v275 = v180;
            v187 = dispatch thunk of Collection.subscript.read();
            v188 = v253;
            v189 = v258;
            (*v237)(v253);
            v190 = v187(&v287, 0);
            MEMORY[0x1EEE9AC00](v190);
            v191 = v273;
            *(&v226 - 4) = v238;
            *(&v226 - 3) = v191;
            v62 = v276;
            v192 = v263;
            v193 = v264;
            *(&v226 - 4) = v276;
            *(&v226 - 3) = v192;
            v224 = v244;
            v225 = v257;
            v194 = v252;
            v195 = v279;
            _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v188, thunk for @callee_guaranteed (@unowned UnsafePointer<A.Sequence.Element>) -> (@out B)partial apply, (&v226 - 10), v189, MEMORY[0x1E69E73E0], v279, MEMORY[0x1E69E7410], v196);
            v264 = v193;
            v197 = *v243;
            (*v243)(v188, v189);
            (*v236)(i, v139, v149);
            v198 = *v271;
            if (!*v271 && !*v250)
            {

              v148 = *v242;
              v149 = AssociatedTypeWitness;
              (*v242)(i, AssociatedTypeWitness);
              (*v239)(v194, v195);
              v148(v254, v149);
              v197(v241, v258);
              v2 = v274;
              v100 = v278;
              v139 = v255;
              goto LABEL_66;
            }

            v101 = TupleTypeMetadata2;
            MEMORY[0x193ABE750](&v287, v194, TupleTypeMetadata2, v195, v278, v62);
            v199 = v287;
            if (v287)
            {
              v185 = v275;
              *(v260 + 16) = v275;
              v200 = *(*v199 + 192);
              swift_beginAccess();
              (*v235)(v199 + v200, i, AssociatedTypeWitness);
              swift_endAccess();
              v201 = v274;
              *(v199 + *(*v199 + 208)) = *&v274[v270];
              *(v199 + *(*v199 + 200)) = v185;
              *(v199 + *(*v199 + 216)) = *&v201[v268];
              *v271 = v198 - 1;
              LOBYTE(v200) = *(v199 + *(*v199 + 240));

              v139 = v255;
              v202 = v239;
              if ((v200 & 1) == 0)
              {
                *v234 = v185;
                if ((MEMORY[0x193ABF5D0](v194, v247, v279, v276) & 1) == 0)
                {
                  goto LABEL_63;
                }

                goto LABEL_51;
              }
            }

            else
            {
              v139 = v255;
              v202 = v239;
              v185 = v275;
            }

            if ((MEMORY[0x193ABF5D0](v194, v247, v279, v276) & 1) == 0)
            {
              swift_beginAccess();
              ForEachState.EditsBuilder.appendInsert(atOffset:)(v185, v249);
              swift_endAccess();
LABEL_63:
              (*v242)(i, AssociatedTypeWitness);
              v182 = v279;
              goto LABEL_52;
            }

LABEL_51:
            v182 = v279;
            (*v227)(v245, v194, v279);
            swift_beginAccess();
            type metadata accessor for Set();
            v183 = v277;
            v101 = TupleTypeMetadata2;
            Set.insert(_:)();
            swift_endAccess();
            v184 = v183;
            v185 = v275;
            (*v202)(v184, v182);
            (*v242)(i, AssociatedTypeWitness);
            --*v250;
LABEL_52:
            dispatch thunk of Collection.formIndex(after:)();
            (*v202)(v194, v182);
            v186 = __OFADD__(v185, 1);
            v180 = v185 + 1;
            if (v186)
            {
              goto LABEL_94;
            }
          }
        }

LABEL_101:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_96;
    }

    if ((v58)(v55, 1, v260) == 1)
    {
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v102 = v58;
    v103 = v259;
    v104 = *(v259 + 16);
    v105 = v250;
    v276 = v55;
    v273.i64[0] = v259 + 16;
    v269 = v104;
    v104(v250, v55, v61);
    v106 = dispatch thunk of Collection.count.getter();
    v107 = *(v103 + 8);
    v258 = v103 + 8;
    v255 = v107;
    (v107)(v105, v61);
    v108 = dispatch thunk of Collection.count.getter();
    v109 = v275;
    if (v106 != v108)
    {
      v287 = 0;
      v288.i64[0] = 0xE000000000000000;
      _StringGuts.grow(_:)(204);
      v110 = v260;
      v111 = _typeName(_:qualified:)();
      MEMORY[0x193ABEDD0](v111);

      MEMORY[0x193ABEDD0](0x2820746E756F6320, 0xE800000000000000);
      v286[0] = dispatch thunk of Collection.count.getter();
      v112 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v112);

      MEMORY[0x193ABEDD0](0xD000000000000018, 0x800000018DD7CF60);
      if (v102(v276, 1, v110) == 1)
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v113 = v250;
      (v269)(v250, v276, v61);
      v114 = dispatch thunk of Collection.count.getter();
      (v255)(v113, v61);
      v286[0] = v114;
      v115 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v115);

      MEMORY[0x193ABEDD0](0xD0000000000000A6, 0x800000018DD7CF80);
      specialized static Log.externalWarning(_:)(v287, v288.u64[0]);

      v2 = v274;
    }

    v116 = v61;
    v117 = v260;
    AssociatedTypeWitness = v102;
    if (v102(v276, 1, v260) == 1)
    {
      goto LABEL_98;
    }

    v118 = v276;
    v119 = v269;
    (v269)(v244, v276, v116);
    v120 = v232;
    v121 = v249;
    (*(v232 + 16))(v249, v257, v117);
    (*(v120 + 56))(v121, 0, 1, v117);
    swift_beginAccess();
    (*(v233 + 40))(v118, v121, v234);
    v122 = v239;
    v119(v239, v244, v116);
    v123 = (AssociatedTypeWitness)(v118, 1, v117);
    v124 = TupleTypeMetadata2;
    if (v123 == 1)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    (*(v259 + 40))(v276, v122, v116);
    swift_endAccess();
    v125 = *(*v2 + 200);
    swift_beginAccess();
    v126 = *&v2[v125];
    v127 = v264;
    if ((v126 & 0xC000000000000001) != 0)
    {
      v128 = __CocoaDictionary.makeIterator()();
      v129 = 0;
      v130 = 0;
      v131 = 0;
      v269 = v128 | 0x8000000000000000;
    }

    else
    {
      v150 = -1 << *(v126 + 32);
      v130 = ~v150;
      v129 = v126 + 64;
      v151 = -v150;
      if (v151 < 64)
      {
        v152 = ~(-1 << v151);
      }

      else
      {
        v152 = -1;
      }

      v131 = v152 & *(v126 + 64);
      v269 = v126;
    }

    v153 = v279;
    v259 = v130;
    v154 = (v130 + 64) >> 6;
    v260 = v262 + 16;
    v261 = (v262 + 32);
    AssociatedTypeWitness = (v240 + 32);
    v263 = (v262 + 8);

    v155 = 0;
    for (i = v154; ; v154 = i)
    {
      v273.i64[0] = v155;
      if ((v269 & 0x8000000000000000) != 0)
      {
        if (__CocoaDictionary.Iterator.next()())
        {
          v171 = v277;
          _forceBridgeFromObjectiveC<A>(_:_:)();
          swift_unknownObjectRelease();
          _forceBridgeFromObjectiveC<A>(_:_:)();
          swift_unknownObjectRelease();
          v172 = *(v124 + 48);
          v173 = v171;
          v109 = v275;
          (*v261)(v275, v173, v153);
          *(v109 + v172) = v286[0];
          v170 = *(v124 - 8);
          (*(v170 + 56))(v109, 0, 1, v124);
        }

        else
        {
          v170 = *(v124 - 8);
          (*(v170 + 56))(v109, 1, 1, v124);
        }

        v159 = v273.i64[0];
        v276 = v131;
      }

      else
      {
        v156 = v131;
        v157 = v155;
        if (v131)
        {
LABEL_39:
          v276 = (v156 - 1) & v156;
          v161 = __clz(__rbit64(v156)) | (v157 << 6);
          v162 = v262;
          v163 = v277;
          v164 = v269;
          (*(v262 + 16))(v277, *(v269 + 48) + *(v262 + 72) * v161, v153);
          v165 = *(*(v164 + 56) + 8 * v161);
          v166 = v153;
          v167 = *(TupleTypeMetadata2 + 48);
          v168 = *(v162 + 32);
          v124 = TupleTypeMetadata2;
          v169 = v163;
          v109 = v275;
          v168(v275, v169, v166);
          *(v109 + v167) = v165;
          v170 = *(v124 - 8);
          (*(v170 + 56))(v109, 0, 1, v124);

          v159 = v157;
        }

        else
        {
          v158 = v154 <= v155 + 1 ? v155 + 1 : v154;
          v159 = v158 - 1;
          v160 = v155;
          while (1)
          {
            v157 = v160 + 1;
            if (__OFADD__(v160, 1))
            {
              __break(1u);
LABEL_94:
              __break(1u);
            }

            if (v157 >= v154)
            {
              break;
            }

            v156 = *(v129 + 8 * v157);
            ++v160;
            if (v156)
            {
              goto LABEL_39;
            }
          }

          v170 = *(v124 - 8);
          (*(v170 + 56))(v109, 1, 1, v124);
          v276 = 0;
        }

        v127 = v264;
      }

      (*AssociatedTypeWitness)(v127, v109, v271);
      if ((*(v170 + 48))(v127, 1, v124) == 1)
      {
        break;
      }

      v174 = *&v127[*(v124 + 48)];
      v175 = v274;
      *(v174 + *(*v174 + 208)) = *&v274[v270];
      v176 = *(*v174 + 216);
      if (*(v174 + v176) == v267)
      {
        *(v174 + v176) = *&v175[v268];
      }

      v153 = v279;
      (*v263)(v127, v279);
      v155 = v159;
      v131 = v276;
    }

    (v255)(v244, v256);
    return outlined consume of Set<EventID>.Iterator._Variant(v269);
  }

  return result;
}

uint64_t sub_18D08B310()
{

  return swift_deallocObject();
}

uint64_t $defer #1 <A, B, C>() in ForEachState.update(view:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v17 = *(*a1 + 80);
  v5 = v4[11];
  v6 = v4[12];
  v7 = v4[13];
  v8 = v4[14];
  v9 = v4[15];
  v18 = v17;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  v10 = type metadata accessor for ForEachState.LazyEdits(0, &v18);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  swift_beginAccess();
  v18 = v17;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  v14 = type metadata accessor for ForEachState.EditsBuilder(0, &v18);
  (*(*(v14 - 8) + 16))(v13, a2, v14);
  swift_storeEnumTagMultiPayload();
  v15 = *(*a1 + 208);
  swift_beginAccess();
  (*(v11 + 40))(a1 + v15, v13, v10);
  return swift_endAccess();
}

uint64_t destroy for ForEachState.EditsBuilder(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = type metadata accessor for IndexSet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80) & 0xF8 | 7;
  (*(v6 + 8))((v4 + v7 + 8) & ~v7, v5);
}

uint64_t ForEachState.Info.Init.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v13 = type metadata accessor for ForEach(0, v19);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19[-1] - v15;

  ForEachState.Info.Init.view.getter(a3, a4, a5, a6, a7, v16);
  ForEachState.update(view:)(v16);
  (*(v14 + 8))(v16, v13);
  return a2;
}

uint64_t ForEachList.Init.updateValue()(void *a1)
{
  v2 = v1;
  v21 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = v1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  specialized ForEachList.Init.info.getter(v3 | (v4 << 32), v5, v6, v7, v8, v9, v10);

  ForEachState.invalidateViewCounts()();

  v11 = (v4 + 1);
  v2[1] = v11;
  v12 = specialized ForEachList.Init.info.getter(v3 | (v11 << 32), v5, v6, v7, v8, v9, v10);
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v18 = type metadata accessor for ForEachList(0, &v15);
  swift_getWitnessTable(protocol conformance descriptor for ForEachList<A, B, C>, v18);
  v19 = v13;
  v15 = v12;
  LODWORD(v16) = v4 + 1;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);

  AGGraphSetOutputValue();
  return __swift_destroy_boxed_opaque_existential_1(&v15);
}

Swift::Void __swiftcall ForEachState.invalidateViewCounts()()
{
  v1 = v0;
  v2 = *(*v0 + 184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v4 + 16));
  }

  else
  {
    *(v1 + v2) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(0, *(v4 + 24) >> 1);
  }

  *(v1 + *(*v1 + 192)) = 2;
}

uint64_t specialized ForEachList.Init.info.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a7;
  type metadata accessor for ForEachState.Info(0, v8);
  return *AGGraphGetValue();
}

id ForEachState.init(inputs:)(uint64_t a1)
{
  v3 = *v1;
  *(v1 + 160) = 0;
  *(v1 + 164) = 1;
  *(v1 + 168) = 0;
  *(v1 + 172) = 1;
  v4 = v3[20];
  v6 = v3[11];
  v7 = v3[12];
  v8 = v3[13];
  v9 = v3[14];
  v18 = v3[10];
  v5 = v18;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v10 = type metadata accessor for ForEach(0, &v18);
  (*(*(v10 - 8) + 56))(v1 + v4, 1, 1, v10);
  *(v1 + *(*v1 + 168)) = 0;
  v11 = v1 + *(*v1 + 176);
  *v11 = 0;
  *(v11 + 8) = 256;
  *(v1 + *(*v1 + 184)) = MEMORY[0x1E69E7CC0];
  *(v1 + *(*v1 + 192)) = 2;
  v12 = *(*v1 + 200);
  v13 = v3[15];
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v13;
  type metadata accessor for ForEachState.Item(0, &v18);
  *(v1 + v12) = Dictionary.init()();
  ForEachState.LazyEdits.init()(v5, v6, v7, v8, v9, v13, (v1 + *(*v1 + 208)));
  *(v1 + *(*v1 + 216)) = 0;
  *(v1 + *(*v1 + 224)) = -1;
  *(v1 + *(*v1 + 232)) = 0;
  *(v1 + *(*v1 + 240)) = 0;
  *(v1 + *(*v1 + 248)) = 0;
  *(v1 + *(*v1 + 256)) = 0;
  *(v1 + *(*v1 + 264)) = 0;
  v14 = *(*v1 + 272);
  *(v1 + v14) = Set.init()();
  v15 = *(*v1 + 280);
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v13;
  type metadata accessor for ForEachState.IDTypeMatchingStrategy(0, &v18);
  *(v1 + v15) = Dictionary.init()();
  outlined init with copy of _ViewListInputs(a1, v1 + 16);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v17 = result;
    outlined destroy of _ViewListInputs(a1);
    *(v1 + 152) = v17;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TATm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  v9 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  return a3(a1, v9, v8, v7, a2);
}

uint64_t ForEach<>.init(_:id:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v24 = a6;
  v25 = a7;
  v16 = *a2;
  v17 = *(a5 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v21, v18);
  v26 = a2;
  ForEach.init(_:idGenerator:content:)(v20, &v26, a3, a4, a5, *(v16 + *MEMORY[0x1E69E77B0] + 8), v24, v25, a9, a8);
  return (*(v17 + 8))(a1, a5);
}

uint64_t ForEachState.LazyEdits.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = default argument 0 of ForEachState.Edits.init(removes:inserts:)(a1, a2, a3, a4, a5);
  v15 = default argument 0 of ForEachState.Edits.init(removes:inserts:)(a1, a2, a3, a4, a5);
  *a7 = v14;
  a7[1] = v15;
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  type metadata accessor for ForEachState.LazyEdits(0, v17);
  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for Rule.value.getter in conformance ForEachState<A, B, C>.Info.Init@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ForEachState.Info.Init.value.getter(*v2, *(v2 + 1), a1[2], a1[3], a1[4], a1[5], a1[6]);
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

uint64_t ForEachState.Info.Init.view.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v8 = type metadata accessor for ForEach(0, v11);
  Value = AGGraphGetValue();
  return (*(*(v8 - 8) + 16))(a7, Value, v8);
}

void type metadata accessor for Material?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<Any>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCyypGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA0] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCyypGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static Layout.makeDynamicView(root:inputs:properties:list:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, unint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v103 = a5;
  LODWORD(v101) = a3;
  v128 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(a2 + 48);
  v124 = *(a2 + 32);
  v125 = v9;
  v126 = *(a2 + 64);
  v127 = *(a2 + 80);
  v10 = *(a2 + 16);
  v122 = *a2;
  v123 = v10;
  v11 = v9;
  v12 = DWORD2(v9);
  v13 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v9);
  v94 = v12;
  LODWORD(v99) = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v11);
  v14 = v122;
  outlined init with copy of _GraphInputs(&v122, &v112);
  v106 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v14);
  v105 = *MEMORY[0x1E698D3F8];
  LODWORD(v97) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v14);
  v15 = DWORD1(v124);
  v98 = a6;
  v100 = v14;
  if ((WORD2(v124) & 0x1000) != 0)
  {
    v107 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24WithinAccessibilityRotorV_Tt2g5(v14);
  }

  else
  {
    v107 = 0;
  }

  v95 = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 20) = 1;
  v104 = v15;
  v102 = v13;
  if (v13 & 1 | ((v15 & 0x22) != 0) || (v107 & 1) != 0)
  {
    v19 = v123;
    v20 = swift_beginAccess();
    *&v112 = __PAIR64__(*(v19 + 16), v8);
    DWORD2(v112) = v105;
    *&v113[0] = MEMORY[0x1E69E7CC0];
    *(&v113[0] + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v113[1]) = 0;
    MEMORY[0x1EEE9AC00](v20);
    v18 = v103;
    v85 = type metadata accessor for DynamicLayoutComputer(0, a4, v103, v21);
    swift_getWitnessTable(protocol conformance descriptor for DynamicLayoutComputer<A>, v85);
    v86 = v22;
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_2(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>, &type metadata for LayoutComputer, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v112, closure #1 in Attribute.init<A>(_:)partial apply, v84, v85, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);

    v25 = v120[0];
    *(v16 + 16) = v120[0];
    *(v16 + 20) = 0;
    *&v112 = __PAIR64__(v126, DWORD2(v126));
    DWORD2(v112) = v25;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_2(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v17 = Attribute.init<A>(body:value:flags:update:)();
  }

  else
  {
    v17 = v105;
    v18 = v103;
  }

  v26 = swift_allocObject();
  v96 = a4;
  v26[2] = a4;
  v26[3] = v18;
  v26[4] = v16;
  v116 = v124;
  v117 = v125;
  v118 = v126;
  v119 = v127;
  v114 = v122;
  v115 = v123;
  DWORD1(v116) = v104 & 0xFFFFFFFD;
  if (v99 & 1) != 0 && (v97)
  {
    v27 = v117;
    *&v120[0] = v117;
    v28 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);

    outlined init with copy of _ViewInputs(&v122, &v112);

    v29 = *(v27 + 16);
    if (v28 != v29)
    {
      if (v28 >= v29)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
      }

      if (*(v27 + 16 * v28 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v28);
        v27 = v117;
      }
    }

    *&v112 = v27;
    v30 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v31 = *(v27 + 16);
    if (v30 != v31)
    {
      if (v30 >= v31)
      {
        goto LABEL_52;
      }

      if (*(v27 + 16 * v30 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v30);
      }
    }
  }

  else
  {

    outlined init with copy of _ViewInputs(&v122, &v112);
  }

  v32 = v105;
  if (v106 != v105)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v114, v32);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v114, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v114, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v114, v32);
  }

  v120[2] = v116;
  v120[3] = v117;
  v120[4] = v118;
  v121 = v119;
  v120[0] = v114;
  v120[1] = v115;
  v33 = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(&v108, v101 | (v17 << 32), partial apply for mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:), v26, v120);

  v111 = v33;
  v34 = swift_beginAccess();
  if ((*(v16 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v34);
    v84[0] = v96;
    v84[1] = v103;
    v85 = &v111;
    v36 = type metadata accessor for DynamicLayoutComputer(0, v96, v103, v35);
    MEMORY[0x1EEE9AC00](v36);
    AGGraphMutateAttribute();
  }

  if (!((v102 | v107) & 1 | (v106 != v32)))
  {
    outlined destroy of _GraphInputs(&v122);
    v46 = v98;
    v47 = v104;
    goto LABEL_44;
  }

  v103 = AGCreateWeakAttribute();
  v101 = HIDWORD(v103);
  v37 = AGCreateWeakAttribute();
  v38 = v37;
  v99 = HIDWORD(v37);
  v39 = AGCreateWeakAttribute();
  v40 = v39;
  v97 = HIDWORD(v39);
  v88 = v126;
  v41 = AGCreateWeakAttribute();
  v42 = v41;
  v96 = HIDWORD(v41);
  v87 = HIDWORD(v125);
  v43 = AGCreateWeakAttribute();
  v44 = v43;
  v93 = HIDWORD(v43);
  v45 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v100);
  v89 = 0;
  if (v45 == v32)
  {
    v91 = 0;
    v92 = 0;
  }

  else
  {
    v48 = AGCreateWeakAttribute();
    v91 = HIDWORD(v48);
    v92 = v48;
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(v108);
  v49 = AGCreateWeakAttribute();
  v50 = v49;
  v90 = HIDWORD(v49);
  if ((v102 | v107))
  {
    type metadata accessor for [ScrollStateRequest](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_18DDA6EB0;
    *(v51 + 56) = &type metadata for DynamicLayoutScrollable;
    *(v51 + 64) = &protocol witness table for DynamicLayoutScrollable;
    v52 = swift_allocObject();
    *(v51 + 32) = v52;
    v53 = v101;
    v52[4] = v103;
    v52[5] = v53;
    v54 = v99;
    v52[6] = v38;
    v52[7] = v54;
    v55 = v96;
    v56 = v97;
    v52[8] = v40;
    v52[9] = v56;
    v52[10] = v42;
    v52[11] = v55;
    v57 = v92;
    v58 = v93;
    v52[12] = v44;
    v52[13] = v58;
    v52[14] = v57;
    v52[15] = v91;
    v52[16] = v50;
    v52[17] = v90;
    *&v112 = v51;
    type metadata accessor for [ScrollStateRequest](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v59 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v112) = 0;
    v60 = v59;
    v32 = v105;
    PreferencesOutputs.subscript.setter(v60, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
  }

  if (v106 == v32)
  {
    outlined destroy of _GraphInputs(&v122);
    v46 = v98;
    v47 = v104;
    if ((v107 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  *(&v113[0] + 1) = &type metadata for DynamicLayoutScrollable;
  *&v113[1] = &protocol witness table for DynamicLayoutScrollable;
  v61 = swift_allocObject();
  *&v112 = v61;
  v62 = v101;
  v61[4] = v103;
  v61[5] = v62;
  v63 = v99;
  v61[6] = v38;
  v61[7] = v63;
  v64 = v96;
  v65 = v97;
  v61[8] = v40;
  v61[9] = v65;
  v61[10] = v42;
  v61[11] = v64;
  v66 = v92;
  v67 = v93;
  v61[12] = v44;
  v61[13] = v67;
  v61[14] = v66;
  v61[15] = v91;
  v61[16] = v50;
  v61[17] = v90;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection, &protocol descriptor for ScrollableCollection);
  v68 = Attribute.init<A>(body:value:flags:update:)();
  __swift_destroy_boxed_opaque_existential_1(&v112);
  v69 = v95;
  *&v112 = v95;
  v70 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
  v71 = *(v69 + 16);
  if (v70 != v71)
  {
    if (v70 < v71)
    {
      if (*(v69 + 16 * v70 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v112 = __PAIR64__(v68, v106);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();
        v72 = Attribute.init<A>(body:value:flags:update:)();
        v73 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(v108);
        if ((v73 & 0x100000000) != 0)
        {
          v74 = v32;
        }

        else
        {
          v74 = v73;
        }

        *&v112 = __PAIR64__(v74, v72);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]](0);
        type metadata accessor for _TraitWritingModifier<ZIndexTraitKey>(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v32 = v105;
        v75 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v112) = 0;
        PreferencesOutputs.subscript.setter(v75, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
      }

      goto LABEL_38;
    }

    goto LABEL_51;
  }

LABEL_38:
  memset(&v113[4] + 8, 0, 28);
  *(&v113[3] + 8) = 0u;
  *&v112 = __PAIR64__(v87, v88);
  *(&v112 + 1) = __PAIR64__(v68, DWORD2(v123));
  v46 = v98;
  v47 = v104;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v76 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v77 = specialized CachedEnvironment.attribute<A>(id:_:)(v76, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  v78 = swift_endAccess();
  LODWORD(v113[0]) = v77;
  *(v113 + 8) = v122;
  *(&v113[1] + 8) = v123;
  *(&v113[2] + 8) = v124;
  MEMORY[0x1EEE9AC00](v78);
  v85 = &v112;
  _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v69, v94, partial apply for implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:));
  outlined destroy of ScrollStateRequestTransform(&v112);
  if (v107)
  {
LABEL_43:
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v100);
    v113[1] = v124;
    v113[2] = v125;
    v113[3] = v126;
    LODWORD(v113[4]) = v127;
    v112 = v122;
    v113[0] = v123;
    (*(v79 + 8))(&v112, &v108);
  }

LABEL_44:
  if ((v47 & 2) != 0)
  {
    v80 = *(v16 + 16);
    v82 = *(v16 + 20);

    if (v82)
    {
      v80 = v32;
    }

    v81 = v109 | 0x80;
  }

  else
  {

    v81 = v109;
    v80 = v110;
  }

  v113[1] = v116;
  v113[2] = v117;
  v113[3] = v118;
  LODWORD(v113[4]) = v119;
  v112 = v114;
  v113[0] = v115;
  outlined destroy of _ViewInputs(&v112);

  *v46 = v108;
  *(v46 + 8) = v81;
  *(v46 + 12) = v80;
  return result;
}

uint64_t sub_18D08D094()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static Layout.makeDynamicView(root:inputs:properties:list:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = **(v4 + 32);
  result = type metadata accessor for DynamicLayoutComputer(0, v6, v7, a4);
  *(a1 + 8) = v8;
  return result;
}

uint64_t ConcentricProxy.updateValue()(uint64_t a1)
{
  ++*(v1 + 20);
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  return AGGraphSetOutputValue();
}

__n128 __swift_memcpy52_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

void *Transaction.animationIgnoringTransitionPhase.getter(void *a1)
{
  v2 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1);
  if (v2 && *(v2 + 72) == 1)
  {
    v4 = 0;
    _s7SwiftUI11TransactionV7forEach7keyType_yxm_y5ValueQz_SbztXEtAA0C3KeyRzlFAA09AnimationI033_D98E9A1069CEEADA58829ED440E36F30LLV_Ttg503_s7a4UI11c38V32animationIgnoringTransitionPhaseAA9J18VSgvgyAG_SbztXEfU_AA0J0VSgTf1cn_n(a1, &v4);
    return v4;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1);
    if (result)
    {
    }
  }

  return result;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v211 = *MEMORY[0x1E69E9840];
  v193 = type metadata accessor for OSSignpostID();
  v189 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v16 = (&v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v172 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v172 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v172 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v192 = &v172 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v183 = &v172 - v29;
  if (*(a4 + 56))
  {
    Value = AGGraphGetValue();
    if (v31)
    {
      v32 = *Value;
    }

    else
    {
      v32 = -INFINITY;
    }
  }

  else
  {
    v32 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    *(a1 + 48) = 1;
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_129;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v34 = *(a1 + 24);
  if (*(a4 + 48))
  {
    goto LABEL_128;
  }

  v35 = v32;
  v5 = *(a4 + 32);
  v36 = *(a4 + 40);
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  if (v8 != v7 || v9 != v6 || v10 != v5 || v34 != v36)
  {
    v190 = v16;
    v188 = v22;
    v172 = v19;
    v178 = v34;
    v180 = a1;
    AGGraphClearUpdate();
    v37 = *(a4 + 16);
    v206 = *a4;
    v207 = v37;
    v38 = *(a4 + 48);
    v208 = *(a4 + 32);
    v209 = v38;
    v210 = *(a4 + 64);
    v4 = &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v206, &v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
    v39 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v206, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v40 = Transaction.effectiveAnimation.getter(v39);
    if (v40)
    {
      v41 = v40;
    }

    else
    {
      if (!a2)
      {

        a1 = v180;
        v32 = v35;
        goto LABEL_127;
      }

      v41 = a2;
    }

    v42 = *(&v209 + 1);
    v43 = v8 - v7;
    v44 = v9 - v6;
    v45 = v10 - v5;
    v46 = v178 - v36;
    v47 = *AGGraphGetValue();
    v179 = a4;
    v173 = a3;
    v176 = v47;
    v175 = v39;
    v174 = v41;
    if (v42)
    {
      v172 = v25;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v206, &v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
      LOBYTE(v202.f64[0]) = 0;
      v48.n128_f64[0] = v43;
      v49.n128_f64[0] = v44;
      v50.n128_f64[0] = v45;
      v177 = v42;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v41, v39, a3, v48, v49, v50, v46, v47);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v52 = CurrentAttribute;
      LODWORD(v53) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v54) = 0;
      }

      else
      {
        LODWORD(v54) = CurrentAttribute;
      }

      (*(*v41 + 96))(&v198);
      v55 = *&v198.f64[1];
      v4 = *&v198.f64[0];
      v56 = v199;
      v197 = NAN;
      v196 = NAN;
      *&v195 = 1.0;
      *&v194 = NAN;
      v202 = v198;
      v203 = v199;
      v57 = *(&v199 + 1);
      v190 = v200;
      v204 = *&v200;
      LODWORD(v191) = v201;
      LOBYTE(v205) = v201;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v202, &v197, &v196, &v195, &v194);
      v32 = v197;
      v5 = v196;
      v6 = *&v195;
      v7 = *&v194;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_195;
      }

      goto LABEL_24;
    }

    *&v198.f64[0] = &type metadata for ViewFrame;
    type metadata accessor for ViewFrame.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v78 = swift_dynamicCast();
    if (v78)
    {
      v79 = *&v202.f64[0];
    }

    else
    {
      v79 = 0;
    }

    if (v78)
    {
      v80 = *&v202.f64[1];
    }

    else
    {
      v80 = 0;
    }

    v177 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(v81, v39, v79, v80, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, v43, v44, v45, v46, v47);
    v82 = AGGraphGetCurrentAttribute();
    a4 = v82;
    LODWORD(v62) = *MEMORY[0x1E698D3F8];
    if (v82 == *MEMORY[0x1E698D3F8])
    {
      v83 = 0;
    }

    else
    {
      v83 = v82;
    }

    (*(*v41 + 96))(&v198);
    v84 = v198;
    v85 = v199;
    v86 = v200;
    v197 = NAN;
    v196 = NAN;
    *&v195 = 1.0;
    *&v194 = NAN;
    v202 = v198;
    v203 = v199;
    v204 = *&v200;
    LODWORD(v191) = v201;
    LOBYTE(v205) = v201;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v202, &v197, &v196, &v195, &v194);
    v32 = v197;
    v5 = v196;
    v6 = *&v195;
    v7 = *&v194;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_199;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      if (static CustomEventTrace.recorder)
      {
        v188 = v86;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v87 = *(v85 + 16);
        LODWORD(v202.f64[0]) = v83;
        BYTE4(v202.f64[0]) = a4 == LODWORD(v62);
        *&v202.f64[1] = &type metadata for ViewFrame;
        *&v203 = v32;
        *(&v203 + 1) = v5;
        v204 = v6;
        v205 = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v88 = v87;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v84.f64[0], *&v84.f64[1], v85, *(&v85 + 1), v188, v191);

        goto LABEL_88;
      }

      v90 = *&v84.f64[1];
      v89 = *&v84.f64[0];
      v91 = v85;
    }

    else
    {
      v90 = *&v84.f64[1];
      v89 = *&v84.f64[0];
      v91 = v85;
    }

    outlined consume of Animation.Function(v89, v90, v91, *(&v85 + 1), v86, v191);
LABEL_88:
    v109 = one-time initialization token for animationState;

    a4 = v179;
    v32 = v176;
    if (v109 == -1)
    {
LABEL_89:
      v67 = *(&static Signpost.animationState + 1);
      *&v63 = static Signpost.animationState;
      v4 = word_1ED5283E8;
      v64 = HIBYTE(word_1ED5283E8);
      v110 = byte_1ED5283EA;
      LOBYTE(v69) = static os_signpost_type_t.begin.getter();
      v202 = __PAIR128__(v67, *&v63);
      LOBYTE(v203) = v4;
      BYTE1(v203) = v64;
      BYTE2(v203) = v110;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v119 = v177;

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v206, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
        goto LABEL_96;
      }

      v111 = one-time initialization token for _signpostLog;

      if (v111 != -1)
      {
        goto LABEL_202;
      }

      goto LABEL_91;
    }

LABEL_199:
    swift_once();
    goto LABEL_89;
  }

  v32 = v35;
LABEL_128:
  while (1)
  {
    *(a4 + 16) = v8;
    *(a4 + 24) = v9;
    *(a4 + 32) = v10;
    *(a4 + 40) = v34;
    *(a4 + 48) = 0;
LABEL_129:
    v54 = *(a4 + 56);
    if (!v54)
    {
      return result;
    }

    v138 = *(a1 + 16);
    v202 = *a1;
    v203 = v138;

    LOBYTE(v206) = 0;
    v139 = specialized AnimatorState.update(_:at:environment:)(&v202, a3, v32);
    v98 = AGGraphGetCurrentAttribute();
    LODWORD(v53) = *MEMORY[0x1E698D3F8];
    if (v98 == *MEMORY[0x1E698D3F8])
    {
      v94 = 0;
    }

    else
    {
      v94 = v98;
    }

    v97 = &type metadata instantiation cache for TupleTypeDescription;
    if (v139)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_188;
      }

      goto LABEL_135;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_190;
    }

LABEL_148:
    v151 = *(v97 + 616);
    if (*(v151 + 16) >= 0x43uLL)
    {
      if (*(v151 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v206) = v94;
        BYTE4(v206) = v98 == v53;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_183;
    }

    __break(1u);
LABEL_192:
    swift_once();
LABEL_140:
    v142 = *(&static Signpost.animationState + 1);
    v57 = static Signpost.animationState;
    v56 = word_1ED5283E8;
    v52 = HIBYTE(word_1ED5283E8);
    v143 = byte_1ED5283EA;
    v54 = static os_signpost_type_t.end.getter();
    v206 = __PAIR128__(v142, v57);
    LOBYTE(v207) = v56;
    BYTE1(v207) = v52;
    BYTE2(v207) = v143;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_182;
    }

    v180 = a1;
    v144 = one-time initialization token for _signpostLog;

    if (v144 != -1)
    {
      swift_once();
    }

    v179 = a4;
    *&v55 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v53)
    {
      break;
    }

    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    swift_once();
LABEL_24:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_197:
      swift_once();
      goto LABEL_31;
    }

    v58 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v187) = v53;
    if (v58 && (v59 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v60 = *(v59 + 16);
      LODWORD(v202.f64[0]) = v54;
      BYTE4(v202.f64[0]) = v52 == v53;
      *&v202.f64[1] = &type metadata for ViewFrame;
      *&v203 = v32;
      *(&v203 + 1) = v5;
      v204 = v6;
      v205 = v7;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

      v61 = v60;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v4, v55, v56, v57, v190, v191);
    }

    else
    {
      outlined consume of Animation.Function(v4, v55, v56, v57, v190, v191);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v206, &v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
    v32 = v176;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_197;
    }

LABEL_31:
    v63 = *(&static Signpost.animationState + 1);
    *&v62 = static Signpost.animationState;
    v64 = word_1ED5283E8;
    v65 = HIBYTE(word_1ED5283E8);
    v66 = byte_1ED5283EA;
    v67 = static os_signpost_type_t.event.getter();
    v202 = __PAIR128__(*&v63, *&v62);
    LOBYTE(v203) = v64;
    BYTE1(v203) = v65;
    BYTE2(v203) = v66;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v206, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v206, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
LABEL_85:
      a4 = v179;
      a3 = v173;
      goto LABEL_126;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v206, &v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v68 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v69 = COERCE_DOUBLE(swift_allocObject());
    *(v69 + 16) = xmmword_18DDAF080;
    v70 = AGGraphGetCurrentAttribute();
    v4 = v187;
    if (v70 == v187)
    {
      __break(1u);
    }

    else
    {
      v71 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v73 = MEMORY[0x1E69E6870];
      *(v69 + 56) = MEMORY[0x1E69E6810];
      *(v69 + 64) = v73;
      *(v69 + 32) = Counter;
      v74 = AGGraphGetCurrentAttribute();
      if (v74 != v4)
      {
        v75 = MEMORY[0x1E69E76D0];
        *(v69 + 96) = MEMORY[0x1E69E7668];
        *(v69 + 104) = v75;
        *(v69 + 72) = v74;
        *(v69 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v69 + 144) = v76;
        *(v69 + 112) = 0x6D61724677656956;
        *(v69 + 120) = 0xE900000000000065;
        if (v65)
        {
          LOBYTE(v194) = v67;
          v197 = COERCE_DOUBLE(&dword_18D018000);
          v196 = v68;
          v202.f64[0] = v62;
          v202.f64[1] = v63;
          LOBYTE(v203) = v64;
          *&v198.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v198.f64[1] = 39;
          LOBYTE(v199) = 2;
          v195 = v69;
          v77 = v172;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v194, &v197, &v196, &v202, v172, &v198, &v195);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v206, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v206, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
          (*(v189 + 8))(v77, v193);
        }

        else
        {
          v92 = LOBYTE(v62);
          if (LOBYTE(v62) == 20)
          {
            v53 = 3;
          }

          else
          {
            v53 = 4;
          }

          v93 = bswap32(LOWORD(v62)) | (4 * HIWORD(LODWORD(v62)));
          v94 = v67;
          v95 = (v189 + 16);
          v181 = *(v189 + 16);
          v96 = v181(v188, v172, v193);
          v97 = 0;
          LOBYTE(v198.f64[0]) = 1;
          v191 = v53;
          v186 = 16 * v53;
          v182 = v95;
          v187 = (v95 - 8);
          v185 = v69 + 32;
          v184 = v92;
          do
          {
            v190 = &v172;
            MEMORY[0x1EEE9AC00](v96);
            a1 = &v172 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
            a4 = a1 + 8;
            v100 = v191;
            v101 = (a1 + 8);
            do
            {
              *(v101 - 1) = 0;
              *v101 = 0;
              v101 += 16;
              v100 = (v100 - 1);
            }

            while (v100);
            v4 = v185 + 40 * v97;
            v54 = v191;
            while (1)
            {
              v102 = *(v69 + 16);
              if (v97 == v102)
              {
                break;
              }

              if (v97 >= v102)
              {
                goto LABEL_186;
              }

              ++v97;
              outlined init with copy of AnyTrackedValue(v4, &v202);
              v53 = *(&v203 + 1);
              v103 = *&v204;
              __swift_project_boxed_opaque_existential_1(&v202, *(&v203 + 1));
              *(a4 - 8) = CVarArg.kdebugValue(_:)(v93 | v94, v53, v103);
              *a4 = v104 & 1;
              a4 += 16;
              v98 = __swift_destroy_boxed_opaque_existential_1(&v202);
              v4 += 40;
              if (!--v54)
              {
                goto LABEL_68;
              }
            }

            LOBYTE(v198.f64[0]) = 0;
LABEL_68:
            v4 = v184;
            if (v184 == 20)
            {
              v105 = v188;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v105 = v188;
            }

            if (*(a1 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v4 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v106 = *v187;
            v53 = v193;
            (*v187)(v105, v193);
            v107 = __swift_project_value_buffer(v53, static OSSignpostID.continuation);
            v96 = v181(v105, v107, v53);
          }

          while ((LOBYTE(v198.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v206, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v206, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
          v108 = v193;
          v106(v105, v193);
          v106(v172, v108);
        }

        goto LABEL_85;
      }
    }

    __break(1u);
LABEL_202:
    swift_once();
LABEL_91:
    v112 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a4 = COERCE_DOUBLE(swift_allocObject());
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == LODWORD(v62))
    {
      __break(1u);
LABEL_204:
      __break(1u);
    }

    v113 = AGGraphGetAttributeGraph();
    v114 = AGGraphGetCounter();

    v115 = MEMORY[0x1E69E6870];
    *(a4 + 56) = MEMORY[0x1E69E6810];
    *(a4 + 64) = v115;
    *(a4 + 32) = v114;
    v116 = AGGraphGetCurrentAttribute();
    if (v116 == LODWORD(v62))
    {
      goto LABEL_204;
    }

    v117 = MEMORY[0x1E69E76D0];
    *(a4 + 96) = MEMORY[0x1E69E7668];
    *(a4 + 104) = v117;
    *(a4 + 72) = v116;
    *(a4 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 144) = v118;
    *(a4 + 112) = 0x6D61724677656956;
    *(a4 + 120) = 0xE900000000000065;
    v53 = v172;
    if (v64)
    {
      LOBYTE(v194) = v69;
      v197 = COERCE_DOUBLE(&dword_18D018000);
      v196 = v112;
      v202.f64[0] = v63;
      *&v202.f64[1] = v67;
      LOBYTE(v203) = v4;
      *&v198.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v198.f64[1] = 39;
      LOBYTE(v199) = 2;
      v195 = a4;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v194, &v197, &v196, &v202, v172, &v198, &v195);
      v119 = v177;

      (*(v189 + 8))(v53, v193);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v206, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
      a4 = v179;
LABEL_96:
      *(a4 + 56) = v119;
    }

    else
    {
      v120 = LOBYTE(v63);
      v121 = v69;
      if (LOBYTE(v63) == 20)
      {
        v122 = 3;
      }

      else
      {
        v122 = 4;
      }

      a1 = bswap32(LOWORD(v63)) | (4 * HIWORD(LODWORD(v63)));
      v94 = v121;
      v123 = (v189 + 16);
      v181 = *(v189 + 16);
      v124 = v181(v190, v172, v193);
      v97 = 0;
      LOBYTE(v198.f64[0]) = 1;
      v187 = (16 * v122);
      v182 = v123;
      v188 = (v123 - 8);
      v186 = a4 + 32;
      v184 = v120;
      v185 = v122;
      do
      {
        v191 = &v172;
        MEMORY[0x1EEE9AC00](v124);
        v4 = &v172 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
        v54 = (v4 + 8);
        v126 = v122;
        v127 = (v4 + 8);
        do
        {
          *(v127 - 1) = 0;
          *v127 = 0;
          v127 += 16;
          --v126;
        }

        while (v126);
        v128 = v186 + 40 * v97;
        while (1)
        {
          v129 = *(a4 + 16);
          if (v97 == v129)
          {
            break;
          }

          if (v97 >= v129)
          {
            goto LABEL_187;
          }

          ++v97;
          outlined init with copy of AnyTrackedValue(v128, &v202);
          v53 = *(&v203 + 1);
          v130 = *&v204;
          __swift_project_boxed_opaque_existential_1(&v202, *(&v203 + 1));
          *(v54 - 1) = CVarArg.kdebugValue(_:)(a1 | v94, v53, v130);
          *v54 = v131 & 1;
          v54 += 16;
          v98 = __swift_destroy_boxed_opaque_existential_1(&v202);
          v128 += 40;
          if (!--v122)
          {
            goto LABEL_109;
          }
        }

        LOBYTE(v198.f64[0]) = 0;
LABEL_109:
        v132 = v184;
        if (v184 == 20)
        {
          v133 = v190;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v133 = v190;
        }

        v122 = v185;
        if (*(v4 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v132 != 20 && *(v4 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v53 = *v188;
        v134 = v193;
        (*v188)(v133, v193);
        v135 = __swift_project_value_buffer(v134, static OSSignpostID.continuation);
        v124 = v181(v133, v135, v134);
      }

      while ((LOBYTE(v198.f64[0]) & 1) != 0);
      v136 = v177;

      v137 = v193;
      (v53)(v133, v193);
      (v53)(v172, v137);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v206, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewFrame>, lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame, &type metadata for ViewFrame, type metadata accessor for AnimatableAttributeHelper);
      a4 = v179;
      *(v179 + 56) = v136;
    }

    a3 = v173;
LABEL_126:
    specialized AnimatorState.addListeners(transaction:)(v175);

    a1 = v180;
LABEL_127:
    v34 = v178;
  }

  v145 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v146 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v146;
  *(a1 + 32) = v4;
  v147 = AGGraphGetCurrentAttribute();
  if (v147 == v53)
  {
    goto LABEL_194;
  }

  v148 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v148;
  *(a1 + 72) = v147;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 144) = v149;
  *(a1 + 112) = 0x6D61724677656956;
  *(a1 + 120) = 0xE900000000000065;
  if (v52)
  {
    LOBYTE(v194) = v54;
    v197 = COERCE_DOUBLE(&dword_18D018000);
    v196 = *&v55;
    *&v206 = v57;
    *(&v206 + 1) = v142;
    LOBYTE(v207) = v56;
    *&v198.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v198.f64[1] = 37;
    LOBYTE(v199) = 2;
    v195 = a1;
    v150 = v183;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v194, &v197, &v196, &v206, v183, &v198, &v195);

    (*(v189 + 8))(v150, v193);
    goto LABEL_181;
  }

  v152 = v57;
  if (v57 == 20)
  {
    v153 = 3;
  }

  else
  {
    v153 = 4;
  }

  v94 = bswap32(v57) | (4 * WORD1(v57));
  v97 = v54;
  v154 = v189 + 16;
  v184 = *(v189 + 16);
  v155 = v184(v192, v183, v193);
  v156 = 0;
  LOBYTE(v198.f64[0]) = 1;
  v191 = v153;
  v187 = (16 * v153);
  v189 = v154;
  v188 = (v154 - 8);
  v186 = a1 + 32;
  v185 = v152;
  do
  {
    v190 = &v172;
    MEMORY[0x1EEE9AC00](v155);
    a4 = &v172 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
    v158 = (a4 + 8);
    v159 = v191;
    v160 = (a4 + 8);
    do
    {
      *(v160 - 1) = 0;
      *v160 = 0;
      v160 += 16;
      v159 = (v159 - 1);
    }

    while (v159);
    v4 = v186 + 40 * v156;
    v53 = v191;
    while (1)
    {
      v161 = *(a1 + 16);
      if (v156 == v161)
      {
        break;
      }

      if (v156 >= v161)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        v170 = v98;
        swift_once();
        v98 = v170;
LABEL_135:
        v140 = *(v97 + 616);
        if (*(v140 + 16) >= 0x43uLL)
        {
          if (*(v140 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v206) = v94;
            BYTE4(v206) = v98 == v53;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v141 = one-time initialization token for animationState;
          v182 = v54;

          if (v141 != -1)
          {
            goto LABEL_192;
          }

          goto LABEL_140;
        }

        __break(1u);
LABEL_190:
        v171 = v98;
        swift_once();
        v98 = v171;
        goto LABEL_148;
      }

      ++v156;
      outlined init with copy of AnyTrackedValue(v4, &v206);
      v162 = *(&v207 + 1);
      v54 = v208;
      __swift_project_boxed_opaque_existential_1(&v206, *(&v207 + 1));
      *(v158 - 1) = CVarArg.kdebugValue(_:)(v94 | v97, v162, v54);
      *v158 = v163 & 1;
      v158 += 16;
      v98 = __swift_destroy_boxed_opaque_existential_1(&v206);
      v4 += 40;
      if (!--v53)
      {
        goto LABEL_166;
      }
    }

    LOBYTE(v198.f64[0]) = 0;
LABEL_166:
    v164 = v185;
    if (v185 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(a4 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a4 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a4 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v164 != 20 && *(a4 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v165 = *v188;
    v54 = v192;
    v166 = v193;
    (*v188)(v192, v193);
    v167 = __swift_project_value_buffer(v166, static OSSignpostID.continuation);
    v155 = v184(v54, v167, v166);
  }

  while ((LOBYTE(v198.f64[0]) & 1) != 0);

  v168 = v193;
  v165(v192, v193);
  v165(v183, v168);
LABEL_181:

  a1 = v180;
  a4 = v179;
LABEL_182:
  specialized AnimatorState.removeListeners()();

  *(a4 + 56) = 0;
LABEL_183:
  v169 = v203;
  *a1 = v202;
  *(a1 + 16) = v169;
  *(a1 + 48) = 1;
  return result;
}

void ConcentricPaddingUpdater.updateValue()()
{
  v1 = v0;
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  v5 = Value[2];
  v6 = Value[3];
  if (ConcentricPaddingUpdater.oldValue.getter() != v3 || v7 != v4 || v8 != v5 || v9 != v6)
  {
    v13 = AGCreateWeakAttribute();
    specialized static GraphHost.currentHost.getter();
    *&v14 = v13;
    BYTE8(v14) = 0;
    v15 = v3;
    v16 = v4;
    v17 = v5;
    v18 = v6;
    specialized GraphHost.continueTransaction<A>(_:)(&v14);
  }

  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = 0;
}

void protocol witness for Rule.value.getter in conformance ConcentricCornerPaddingModifier<A>.CornerPadding(uint64_t a1@<X0>, double (*a2)(void, void, void, void, void)@<X2>, uint64_t a3@<X8>)
{
  *a3 = a2(*v3, v3[1], v3[2], *(a1 + 16), *(a1 + 24));
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
}

uint64_t ConcentricEdgePaddingModifier.EdgePadding.value.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v147 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  *&v146 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ConcentricEdgePaddingModifier(0, v11, v12, v11);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  *&v143 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v118 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v118 - v20;
  *&v148 = a2;
  ConcentricCornerPaddingModifier.CornerPadding.modifier.getter(a4, a5, type metadata accessor for ConcentricEdgePaddingModifier, &v118 - v20);
  v22 = *v21;
  v142 = *(v14 + 8);
  result = (*&v142)(v21, v13);
  if (v22 != 4)
  {
    Value = AGGraphGetValue();
    v127 = *Value;
    v126 = Value[1];
    v140 = Value[2];
    v139 = Value[3];
    v25 = *(Value + 2);
    v172 = *(Value + 1);
    v173 = v25;
    v174 = Value[12];
    v26 = AGGraphGetValue();
    v27 = *(v26 + 8);
    v137 = *v26;
    v138 = v27;
    v136 = *(v26 + 16);
    v135 = *(v26 + 20);
    v132 = *(v26 + 24);
    v28 = *(v26 + 32);
    v130 = *(v26 + 36);
    v131 = v28;
    v29 = *(v26 + 40);
    v128 = *(v26 + 44);
    v129 = v29;
    v30 = *(v26 + 48);
    v133 = *(v26 + 52);
    v134 = v30;
    LODWORD(v124) = *(v26 + 56);
    v141 = a1;
    v125 = a3;
    v144 = a5;
    ConcentricCornerPaddingModifier.CornerPadding.modifier.getter(a4, a5, type metadata accessor for ConcentricEdgePaddingModifier, v18);
    v31 = *(v147 + 32);
    v32 = &v18[*(v13 + 36)];
    v145 = a4;
    v31(*&v146, v32, a4);
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v33 = 2;
      }

      else
      {
        v33 = 1;
      }

      v35 = v144;
      v34 = v145;
      v36 = v125;
      v123 = 3;
    }

    else
    {
      v33 = 0;
      if (v22)
      {
        v123 = 2;
      }

      else
      {
        v123 = 1;
      }

      v35 = v144;
      v34 = v145;
      v36 = v125;
    }

    v37 = *&v143;
    ConcentricCornerPaddingModifier.CornerPadding.modifier.getter(v34, v35, type metadata accessor for ConcentricEdgePaddingModifier, *&v143);
    v38 = *(v37 + *(v13 + 40) + 32);
    (*&v142)(v37, v13);
    if (v38 == 1)
    {
      AGGraphGetValue();
    }

    v39 = 0.0;
    Edge.Set.contains(_:)(SwiftUI_Edge_top);
    Edge.Set.contains(_:)(SwiftUI_Edge_leading);
    Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
    Edge.Set.contains(_:)(SwiftUI_Edge_trailing);
    *&v168 = __PAIR64__(v126, v127);
    *(&v168 + 1) = __PAIR64__(v139, v140);
    v169 = v172;
    v170 = v173;
    v171 = v174;
    v157 = *&v137;
    v158 = v138;
    *&v159 = COERCE_DOUBLE(__PAIR64__(v135, v136));
    v160 = v132;
    v161 = v131;
    v162 = v130;
    v163 = v129;
    v164 = v128;
    v165 = v134;
    v166 = v133;
    v167 = LOBYTE(v124);
    GeometryProxy.containerBoundsChildFrame(containerShape:)(&v157, v175);
    if (v176)
    {
      return (*(v147 + 8))(COERCE_DOUBLE(*&v146), v145);
    }

    v142 = *&v175[1];
    v143 = *v175;
    v121 = *&v175[3];
    v122 = *&v175[2];
    v124 = *&v175[5];
    v125 = v175[4];
    v119 = *&v175[7];
    v120 = *&v175[6];
    v40 = v145;
    ConcentricCornerPaddingModifier.CornerPadding.layoutComputer.getter(v36, &v157);
    v41 = *&v157;
    if (v157 == 0.0)
    {
      v42 = *&v146;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v41 = static LayoutComputer.defaultValue;
    }

    else
    {
      v42 = *&v146;
    }

    v43 = v147;
    *&v168 = v132;
    *(&v168 + 1) = __PAIR64__(v130, v131);
    *&v169 = __PAIR64__(v128, v129);
    *(&v169 + 1) = __PAIR64__(v133, v134);
    (*(*&v138 + 24))(&v157, 0, 0, 1, v136 | (v135 << 32), &v168);
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    if ((v161 & 1) == 0)
    {
      v44 = v157;
      v45 = v158;
      v46 = *&v159;
      v39 = v160;
    }

    specialized static Update.begin()();
    Attribute = AGWeakAttributeGetAttribute();
    v48 = 0uLL;
    v49 = 0uLL;
    if (Attribute != *MEMORY[0x1E698D3F8])
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v48 = *InputValue;
      v49 = InputValue[1];
    }

    v147 = v49;
    v148 = v48;
    static Update.end()();
    v169 = v147;
    v168 = v148;
    ViewSize.proposal.getter(&v153);
    v51 = v153;
    v52 = v154;
    v53 = v155;
    v54 = v156;
    if (one-time initialization token for lockAssertionsAreEnabled != -1)
    {
      swift_once();
    }

    if (lockAssertionsAreEnabled)
    {
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }
    }

    v149 = v51;
    v150 = v52;
    v151 = v53;
    v152 = v54;
    (*(*v41 + 120))(&v149);
    CornerConfigurationShape_v1.resolvedRadii(size:)(v40, v144);
    v59 = v55;
    v60 = v44;
    if (v33)
    {
      v59 = v56;
      v60 = v45;
      if (v33 != 1)
      {
        v59 = v58;
        v60 = v39;
      }
    }

    v61 = v124;
    v62 = *&v125 + v120;
    v63 = v60 - v59;
    if (v63 <= 0.0)
    {
      goto LABEL_61;
    }

    v64 = byte_1F0045268;
    if (v33)
    {
      if (v33 != 1)
      {
        if (byte_1F0045268)
        {
          v65 = v142 + v121;
        }

        else
        {
          v65 = v143;
        }

        v66 = *&v125;
        v67 = v124 + v119;
LABEL_49:
        if (byte_1F0045268)
        {
          v66 = v67;
        }

        v68 = v63 - vabdd_f64(v65, v66);
        if (v68 >= 0.0)
        {
          v69 = v44;
          if (v33)
          {
            v69 = v39;
            if (v33 == 1)
            {
              v69 = v45;
            }
          }

          if (v68 < v69)
          {
            v70 = 0;
            v71 = 1;
            if (v33)
            {
LABEL_57:
              if (v33 == 2)
              {
                v72 = 0.0;
                if (v64)
                {
                  v73 = v68;
                }

                else
                {
                  v73 = 0.0;
                }
              }

              else
              {
                v73 = 0.0;
                if (v64)
                {
                  v72 = 0.0;
                }

                else
                {
                  v72 = v68;
                }
              }

LABEL_92:
              if ((v70 & 1) == 0)
              {
                v85 = v44;
                if (v33)
                {
                  v55 = v56;
                  v85 = v45;
                  if (v33 != 1)
                  {
                    v55 = v58;
                    v85 = v39;
                  }
                }

                v86 = v85 - v55;
                v80 = 0.0;
                if (v86 <= 0.0)
                {
                  goto LABEL_127;
                }

                if (v33 == 2)
                {
                  if (byte_1F0045269)
                  {
                    v87 = v142 + v121;
                  }

                  else
                  {
                    v87 = v143;
                  }

                  v88 = *&v125;
                  v89 = v124 + v119;
                }

                else
                {
                  if (v33 == 1)
                  {
                    if (byte_1F0045269)
                    {
                      v87 = v142;
                    }

                    else
                    {
                      v87 = v143 + v122;
                    }

                    v88 = *&v125 + v120;
                  }

                  else
                  {
                    if (byte_1F0045269)
                    {
                      v87 = v142;
                    }

                    else
                    {
                      v87 = v143;
                    }

                    v88 = *&v125;
                  }

                  v89 = v124;
                }

                if (byte_1F0045269)
                {
                  v88 = v89;
                }

                v90 = v86 - vabdd_f64(v87, v88);
                if (v90 < 0.0)
                {
                  goto LABEL_127;
                }

                if (v33)
                {
                  v44 = v45;
                  if (v33 == 2)
                  {
                    v44 = v39;
                  }
                }

                if (v90 >= v44)
                {
                  goto LABEL_127;
                }

                if (v33 == 2)
                {
                  if (byte_1F0045269)
                  {
                    v73 = v90;
                  }
                }

                else if (v33 == 1 && !byte_1F0045269)
                {
                  v72 = v90;
                }
              }

              if (v71)
              {
                v80 = v72;
LABEL_128:
                v91 = v56;
                v92 = v45;
                if (v123 != 1)
                {
                  v91 = v57;
                  v92 = v46;
                  if (v123 != 3)
                  {
                    v91 = v58;
                    v92 = v39;
                  }
                }

                v93 = v92 - v91;
                if (v93 <= 0.0)
                {
                  goto LABEL_161;
                }

                v94 = byte_1F0045290;
                if (v123 == 1)
                {
                  if (byte_1F0045290)
                  {
                    v95 = v142;
                  }

                  else
                  {
                    v95 = v143 + v122;
                  }

                  v96 = *&v125 + v120;
                  v97 = v124;
                }

                else
                {
                  if (v123 == 2)
                  {
                    if (byte_1F0045290)
                    {
                      v95 = v142 + v121;
                    }

                    else
                    {
                      v95 = v143;
                    }

                    v96 = *&v125;
                  }

                  else
                  {
                    if (byte_1F0045290)
                    {
                      v95 = v142 + v121;
                    }

                    else
                    {
                      v95 = v143 + v122;
                    }

                    v96 = *&v125 + v120;
                  }

                  v97 = v124 + v119;
                }

                if (byte_1F0045290)
                {
                  v96 = v97;
                }

                v98 = v93 - vabdd_f64(v95, v96);
                if (v98 < 0.0)
                {
                  goto LABEL_161;
                }

                v99 = v45;
                if (v123 != 1)
                {
                  v99 = v39;
                  if (v123 == 3)
                  {
                    v99 = v46;
                  }
                }

                if (v98 >= v99)
                {
LABEL_161:
                  v94 = byte_1F0045291;
                  if (byte_1F0045291)
                  {
                    v103 = v142 + v121;
                  }

                  else
                  {
                    v103 = v143 + v122;
                  }

                  if (byte_1F0045291)
                  {
                    v104 = v142;
                  }

                  else
                  {
                    v104 = v143 + v122;
                  }

                  if (byte_1F0045291)
                  {
                    v105 = v142 + v121;
                  }

                  else
                  {
                    v105 = v143;
                  }

                  v106 = v56;
                  v107 = v45;
                  if (v123 != 1)
                  {
                    v106 = v57;
                    v107 = v46;
                    if (v123 != 3)
                    {
                      v106 = v58;
                      v107 = v39;
                    }
                  }

                  v108 = v107 - v106;
                  if (v108 <= 0.0)
                  {
                    goto LABEL_229;
                  }

                  v109 = *&v125 + v120;
                  v110 = v124 + v119;
                  if (v123 != 3)
                  {
                    v103 = v104;
                    v109 = *&v125 + v120;
                    v110 = v124;
                    if (v123 == 2)
                    {
                      v103 = v105;
                      v109 = *&v125;
                      v110 = v124 + v119;
                    }
                  }

                  v111 = byte_1F0045291 ? v110 : v109;
                  v98 = v108 - vabdd_f64(v103, v111);
                  if (v98 < 0.0)
                  {
                    goto LABEL_229;
                  }

                  v112 = v45;
                  if (v123 != 1)
                  {
                    v112 = v39;
                    if (v123 == 3)
                    {
                      v112 = v46;
                    }
                  }

                  if (v98 >= v112)
                  {
LABEL_229:

                    return (*(v43 + 8))(v42, v40);
                  }

                  v100 = 1;
                  if (v123 != 3)
                  {
                    goto LABEL_155;
                  }
                }

                else
                {
                  v100 = 0;
                  if (v123 != 3)
                  {
LABEL_155:
                    if (v123 == 2)
                    {
                      if (v94)
                      {
                        v101 = v98;
                      }

                      else
                      {
                        v101 = 0.0;
                      }

                      v102 = 0.0;
                      if ((v100 & 1) == 0)
                      {
                        goto LABEL_199;
                      }

LABEL_198:
                      v146 = v101;
                      *&v147 = v102;
                      *&v148 = v80;
                      v144 = *&v73;

                      return (*(v43 + 8))(v42, v40);
                    }

                    if (v94)
                    {
                      v102 = 0.0;
                    }

                    else
                    {
                      v102 = v98;
                    }

                    v101 = 0.0;
                    if (v100)
                    {
                      goto LABEL_198;
                    }

LABEL_199:
                    v113 = v45;
                    if (v123 != 1)
                    {
                      v56 = v58;
                      v113 = v39;
                      if (v123 == 3)
                      {
                        v56 = v57;
                        v113 = v46;
                      }
                    }

                    v114 = v113 - v56;
                    if (v114 > 0.0)
                    {
                      if (v123 == 1)
                      {
                        v115 = byte_1F0045291 ? v142 : v143 + v122;
                      }

                      else
                      {
                        if (v123 == 2)
                        {
                          v115 = byte_1F0045291 ? v142 + v121 : v143;
                          v62 = *&v125;
                        }

                        else
                        {
                          v115 = byte_1F0045291 ? v142 + v121 : v143 + v122;
                        }

                        v61 = v124 + v119;
                      }

                      v116 = byte_1F0045291 ? v61 : v62;
                      v117 = v114 - vabdd_f64(v115, v116);
                      if (v117 >= 0.0)
                      {
                        if (v123 != 1)
                        {
                          v45 = v39;
                          if (v123 == 3)
                          {
                            v45 = v46;
                          }
                        }

                        if (v117 < v45)
                        {
                          if (v123 == 1)
                          {
                            if (!byte_1F0045291)
                            {
                              v102 = v117;
                            }
                          }

                          else if (v123 == 3)
                          {
                            if (byte_1F0045291)
                            {
                              v101 = v117;
                            }

                            else
                            {
                              v102 = v117;
                            }
                          }

                          else if (byte_1F0045291)
                          {
                            v101 = v117;
                          }

                          goto LABEL_198;
                        }
                      }
                    }

                    goto LABEL_229;
                  }
                }

                if (v94)
                {
                  v102 = 0.0;
                }

                else
                {
                  v102 = v98;
                }

                if (v94)
                {
                  v101 = v98;
                }

                else
                {
                  v101 = 0.0;
                }

                if (v100)
                {
                  goto LABEL_198;
                }

                goto LABEL_199;
              }

              v80 = 0.0;
LABEL_127:
              v73 = 0.0;
              goto LABEL_128;
            }

LABEL_88:
            v72 = 0.0;
            v73 = 0.0;
            goto LABEL_92;
          }
        }

LABEL_61:
        v64 = byte_1F0045269;
        if (byte_1F0045269)
        {
          v74 = v142 + v121;
        }

        else
        {
          v74 = v143;
        }

        if (byte_1F0045269)
        {
          v75 = v142;
        }

        else
        {
          v75 = v143 + v122;
        }

        if (byte_1F0045269)
        {
          *&v76 = v142;
        }

        else
        {
          *&v76 = v143;
        }

        v77 = v55;
        v78 = v44;
        if (v33)
        {
          v77 = v56;
          v78 = v45;
          if (v33 != 1)
          {
            v77 = v58;
            v78 = v39;
          }
        }

        v79 = v78 - v77;
        v80 = 0.0;
        if (v79 <= 0.0)
        {
          goto LABEL_127;
        }

        if (v33)
        {
          v81 = *&v125;
          v82 = v124 + v119;
          if (v33 == 2)
          {
LABEL_79:
            if (byte_1F0045269)
            {
              v83 = v82;
            }

            else
            {
              v83 = v81;
            }

            v68 = v79 - vabdd_f64(v74, v83);
            if (v68 < 0.0)
            {
              goto LABEL_127;
            }

            v84 = v44;
            if (v33)
            {
              v84 = v39;
              if (v33 == 1)
              {
                v84 = v45;
              }
            }

            v71 = 0;
            if (v68 >= v84)
            {
              goto LABEL_127;
            }

            v70 = 1;
            if (v33)
            {
              goto LABEL_57;
            }

            goto LABEL_88;
          }

          v74 = v75;
          v81 = *&v125 + v120;
        }

        else
        {
          v74 = *&v76;
          v81 = *&v125;
        }

        v82 = v124;
        goto LABEL_79;
      }

      if (byte_1F0045268)
      {
        v65 = v142;
      }

      else
      {
        v65 = v143 + v122;
      }

      v66 = *&v125 + v120;
    }

    else
    {
      if (byte_1F0045268)
      {
        v65 = v142;
      }

      else
      {
        v65 = v143;
      }

      v66 = *&v125;
    }

    v67 = v124;
    goto LABEL_49;
  }

  return result;
}

uint64_t ConcentricCornerPaddingModifier.CornerPadding.modifier.getter@<X0>(uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t (*a4)(void, uint64_t, uint64_t)@<X5>, uint64_t a5@<X8>)
{
  v6 = a4(0, a2, a3);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

uint64_t GeometryProxy.containerBoundsChildFrame(containerShape:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v38 = *v2;
  v39 = v4;
  v6 = *v2;
  v5 = v2[1];
  v40 = v2[2];
  v7 = *(a1 + 24);
  v41 = *(v2 + 12);
  v32[0] = v7;
  v33 = 1;
  v28 = v6;
  v29 = v5;
  v30 = v2[2];
  v31 = *(v2 + 12);
  GeometryProxy.transform.getter(&v25);
  v22 = v25;
  v23 = v26;
  v24 = v27;
  ViewTransform.containingSizedCoordinateSpace(name:)(v32, v36);
  outlined destroy of NamedCoordinateSpace(v32);

  if (v37)
  {
    v9 = 1;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  else
  {
    v34 = v36[0];
    v35 = v36[1];
    v32[0] = v7;
    v33 = 1;
    v14 = v2[1];
    v28 = *v2;
    v29 = v14;
    v30 = v2[2];
    v31 = *(v2 + 12);
    GeometryProxy.transform.getter(&v25);
    v22 = v25;
    v23 = v26;
    v24 = v27;
    CGRect.convert(to:transform:)(v32, &v22);

    outlined destroy of CoordinateSpace(v32);
    *&v28 = v7;
    BYTE8(v30) = 1;
    v19 = specialized GeometryProxy.frame<A>(in:)(&v28);
    v20 = v15;
    v18 = v16;
    v21 = v17;
    result = outlined destroy of NamedCoordinateSpace(&v28);
    *&v13 = v18;
    *&v12 = v19;
    v9 = 0;
    v10 = v34;
    v11 = v35;
    LOBYTE(v28) = 0;
    *(&v12 + 1) = v20;
    *(&v13 + 1) = v21;
  }

  *a2 = v10;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  *(a2 + 48) = v13;
  *(a2 + 64) = v9;
  return result;
}

uint64_t GeometryProxy.transform.getter@<X0>(uint64_t a1@<X8>)
{
  specialized static Update.begin()();
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8] || (v2 = *MEMORY[0x1E698D3F8], AGWeakAttributeGetAttribute() == v2))
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v4 = *(InputValue + 8);
    v5 = *(InputValue + 16);
    v6 = *(InputValue + 24);
    v7 = *(InputValue + 32);
    v8 = *(InputValue + 40);
    *a1 = *InputValue;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    type metadata accessor for CGPoint(0);

    v9 = AGGraphGetInputValue();
    v10 = *v9;
    v11 = *(v9 + 8);
    *(a1 + 32) = v7 - (*v9 - v5);
    *(a1 + 40) = v8 - (v11 - v6);
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
  }

  return static Update.end()();
}

void *initializeWithCopy for GlassContainer.Storage(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t outlined assign with take of ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.LazyEdits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2)))
{
  v6 = a4(0, a3, type metadata accessor for ForEachState.LazyEdits);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

_OWORD *initializeWithCopy for ZStack(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

void lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2()
{
  if (!lazy protocol witness table cache variable for type AnyHashable2 and conformance AnyHashable2)
  {
    swift_getWitnessTable(protocol conformance descriptor for AnyHashable2, &type metadata for AnyHashable2, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AnyHashable2 and conformance AnyHashable2);
  }
}

{
  if (!lazy protocol witness table cache variable for type AnyHashable2 and conformance AnyHashable2)
  {
    swift_getWitnessTable(protocol conformance descriptor for AnyHashable2, &type metadata for AnyHashable2, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AnyHashable2 and conformance AnyHashable2);
  }
}

void *key path getter for EnvironmentValues.layoutDirection : EnvironmentValues@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t initializeWithCopy for ViewGeometry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;

  return a1;
}

uint64_t LayoutEngineBox.sizeThatFits(_:)(uint64_t *a1)
{
  v2 = *v1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  return (*(*(v2 + 184) + 40))(&v7, *(v2 + 176));
}

uint64_t RootGeometry.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = *MEMORY[0x1E698D3F8];
  if (v1[3] == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    Value = &static LayoutComputer.defaultValue;
  }

  else
  {
    Value = AGGraphGetValue();
  }

  v7 = *Value;
  v8 = *(Value + 1);

  v9 = 0.0;
  v10 = 0.0;
  v11.f64[0] = 0.0;
  v12.f64[0] = 0.0;
  if (v4 != v5)
  {
    v13 = AGGraphGetValue();
    v14 = *v13;
    v15 = *(*v13 + 16);
    v11.f64[0] = 0.0;
    v12.f64[0] = 0.0;
    if (v15)
    {
      if (v15 == 1)
      {
        v16 = 0;
        v12 = 0uLL;
        v11 = 0uLL;
      }

      else
      {
        v16 = v15 & 0x7FFFFFFFFFFFFFFELL;
        v17 = (v14 + 152);
        v12 = 0uLL;
        v18 = v15 & 0x7FFFFFFFFFFFFFFELL;
        v11 = 0uLL;
        do
        {
          v20 = v17[-7];
          v19 = v17[-6];
          v21 = *v17;
          v22 = v17[1];
          v17 += 14;
          v11 = vaddq_f64(vaddq_f64(v11, v19), v22);
          v12 = vaddq_f64(vaddq_f64(v12, v20), v21);
          v18 -= 2;
        }

        while (v18);
        if (v15 == v16)
        {
          goto LABEL_15;
        }
      }

      v23 = v15 - v16;
      v24 = (v14 + 112 * v16 + 40);
      do
      {
        v25 = *v24;
        v26 = v24[1];
        v24 += 7;
        v11 = vaddq_f64(v11, v26);
        v12 = vaddq_f64(v12, v25);
        --v23;
      }

      while (v23);
LABEL_15:
      v10 = v12.f64[1];
      v9 = v11.f64[1];
      if (v12.f64[1] != v11.f64[1] && v3 != v5)
      {
        v43 = v11.f64[0];
        recta = v12.f64[0];
        v28 = AGGraphGetValue();
        v11.f64[0] = v43;
        v12.f64[0] = recta;
        if (*v28)
        {
          v29 = v10;
        }

        else
        {
          v29 = v9;
        }

        if (*v28)
        {
          v10 = v9;
        }

        v9 = v29;
      }
    }
  }

  v44 = v11.f64[0];
  rect = v12.f64[0];
  v30 = AGGraphGetValue();
  v31 = v30[1];
  if (*v30 - (v9 + v10) < 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = *v30 - (v9 + v10);
  }

  if (v31 - (v44 + rect) < 0.0)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v31 - (v44 + rect);
  }

  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_37;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
LABEL_37:
    v47 = v32;
    v48 = 0;
    v49 = v33;
    v50 = 0;
    v34 = (*(*v7 + 120))(&v47);
    v36 = v35;

    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v37 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    LODWORD(v37) = *(v37 + 232);

    if (v37 == 1)
    {
      v10 = v10 + (v32 - v34) * 0.5;
      rect = rect + (v33 - v36) * 0.5;
    }

    if (v3 == v5)
    {
      AGGraphGetValue();
    }

    else
    {
      v38 = *AGGraphGetValue();
      v39 = AGGraphGetValue();
      if (v38)
      {
        v40 = *v39;
        v51.origin.x = v10;
        v51.origin.y = rect;
        v51.size.width = v34;
        v51.size.height = v36;
        MaxX = CGRectGetMaxX(v51);

        v10 = v40 - MaxX;
LABEL_44:
        *a1 = v10;
        *(a1 + 8) = rect;
        *(a1 + 16) = v7;
        *(a1 + 24) = v8;
        *(a1 + 32) = v34;
        *(a1 + 40) = v36;
        *(a1 + 48) = v32;
        *(a1 + 56) = v33;
        return result;
      }
    }

    goto LABEL_44;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *key path getter for EnvironmentValues.pixelLength : EnvironmentValues@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.pixelLength.getter();
  *a1 = v3;
  return result;
}

void ViewFrame.roundCoordinatesToNearestOrUp(toMultipleOf:)(double a1)
{
  v11 = CGRectStandardize(*v1);
  height = v11.size.height;
  v6.f64[0] = a1 * 0.5 + v11.origin.x;
  y = v11.origin.y;
  v4 = a1 * 0.5 + v11.origin.y;
  v5 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(a1 * 0.5), 0), vaddq_f64(v11.origin, v11.size));
  v6.f64[1] = v4;
  if (a1 == 1.0)
  {
    v7 = vrndmq_f64(v6);
    v8 = vrndaq_f64(vsubq_f64(vrndmq_f64(v5), v7));
  }

  else
  {
    v9 = vdupq_lane_s64(*&a1, 0);
    v7 = vmulq_n_f64(vrndmq_f64(vdivq_f64(v6, v9)), a1);
    v8 = vmulq_n_f64(vrndaq_f64(vdivq_f64(vsubq_f64(vmulq_n_f64(vrndmq_f64(vdivq_f64(v5, v9)), a1), v7), v9)), a1);
  }

  *v1 = v7;
  *(v1 + 16) = v8;
}

uint64_t initializeWithCopy for DynamicContainer.Info(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 11);

  return a1;
}

void *closure #1 in _GraphInputs.layoutDirection.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v3, a2);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }

    *a2 = v5;
  }

  return result;
}

uint64_t StatefulRule<>.update<A>(modify:create:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v19 = OutputValue[1];
    v23 = *OutputValue;
    v18 = v23;
    v24 = v19;
    MEMORY[0x1EEE9AC00](OutputValue);
    v22[-6] = a5;
    v22[-5] = a6;
    v22[-4] = a7;
    v22[-3] = a8;
    v22[-2] = a1;
    v22[-1] = a2;
    v20 = swift_retain_n();
    LayoutComputer.withMutableEngine<A, B>(type:do:)(v20);

    v23 = v18;
    v24 = v19 + 1;

    AGGraphSetOutputValue();
  }

  else
  {
    a3();
    LayoutComputer.init<A>(_:)(v16, a6, a8, &v23);
    v22[1] = v23;
    v22[2] = v24;
    AGGraphSetOutputValue();
  }
}

uint64_t protocol witness for UnaryLayout.sizeThatFits(in:context:child:) in conformance IgnoresAutomaticPaddingLayout(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a3 + 2);
  v13 = *a3;
  v14 = v7;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return LayoutProxy.size(in:)(&v9);
}

uint64_t outlined consume of DynamicContainer.Info?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata completion function for UnaryPositionAwareLayoutEngine(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double _FlexFrameLayout.sizeThatFits(in:context:child:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  if (v4)
  {
    v10 = *(v3 + 16);
    v11 = *(v3 + 24);
  }

  else
  {
    v10 = 0.0;
    if ((*(v3 + 8) & 1) != 0 || (*(v3 + 40) & 1) != 0 || (v12 = *v3, v6 > v8))
    {
      v11 = 1;
    }

    else
    {
      v11 = 0;
      if (v6 <= *a1)
      {
        v12 = *a1;
      }

      if (v12 <= v8)
      {
        v10 = v12;
      }

      else
      {
        v10 = *(v3 + 32);
      }
    }
  }

  v13 = *(a1 + 16);
  v14 = *a3;
  v15 = *(a3 + 8);
  if (*(a1 + 24))
  {
    v16 = *(v3 + 72);
    if (((v11 | v16) & 1) == 0)
    {
      return v10;
    }
  }

  else if ((*(v3 + 56) & 1) == 0 && (*(v3 + 88) & 1) == 0 && *(v3 + 48) <= *(v3 + 80) && (v11 & 1) == 0)
  {
    return v10;
  }

  v23 = *(v3 + 32);
  v24 = *a1;
  LOBYTE(v25) = v4;
  v26 = v13;
  v27 = v5;
  _FlexFrameLayout.childProposal(myProposal:)(&v24, &v28);
  v17 = v28;
  v18 = v29;
  v24 = v14;
  v25 = v15;
  LayoutProxy.size(in:)(&v28);
  if (!v11)
  {
    return v10;
  }

  if (v7)
  {
    v10 = v19;
    if (v9)
    {
      return v10;
    }

    v10 = v23;
    v20 = *&v17;
    if (v18)
    {
      v20 = -INFINITY;
    }

    if (v20 >= v19)
    {
      v19 = v20;
    }

    if (v19 >= v23)
    {
      return v10;
    }

    return v19;
  }

  v10 = v6;
  if ((v9 & 1) != 0 || v6 > v23)
  {
    v21 = *&v17;
    if (v18)
    {
      v21 = INFINITY;
    }

    if (v21 < v19)
    {
      v19 = v21;
    }

    if (v19 >= v6)
    {
      return v19;
    }
  }

  else
  {
    if (v19 < v6)
    {
      v19 = v6;
    }

    if (v19 <= v23)
    {
      return v19;
    }

    else
    {
      return v23;
    }
  }

  return v10;
}